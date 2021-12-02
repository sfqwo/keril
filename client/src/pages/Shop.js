import React, {useContext, useEffect} from 'react';
import {Container} from "react-bootstrap";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import TypeBar from "../components/TypeBar";
import BrandBar from "../components/BrandBar";
import DeviceList from "../components/DeviceList";
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import {fetchBrands, fetchDevices, fetchTypes} from "../http/DeviceAPI";
import Pages from "../components/Pages";
import {useLocation} from "react-router-dom";

const Shop = observer(() => {
    const {device} = useContext(Context)
    const search = useLocation().search;
    const name = new URLSearchParams(search).get('name');


    const createMarkup = () =>{
        const text = name ? ' ' + name : ''
        const orText = "По вашему запросу ничего не удалось найти"
        return {__html:  'По вашему запросу' + text + ' найдено: '};
    }

    useEffect(() => {
        fetchTypes().then(data => device.setTypes(data))
        fetchBrands().then(data => device.setBrands(data))
        fetchDevices(null, null, device.page, device.limit, name || device.lineSearch).then(data => {
            device.setDevices(data.rows)
            device.setTotalCount(data.count)
        })
    }, [])

    useEffect(() => {
        fetchDevices(device.selectedType.id, device.selectedBrand.id, device.page, device.limit, name ||device.lineSearch).then(data => {
            device.setDevices(data.rows)
            device.setTotalCount(data.count)
        })
        
    }, [device.page, ])

    useEffect(() => {
        device.setDevices([])
        fetchDevices(device.selectedType.id, device.selectedBrand.id, device.page, device.limit, name ||device.lineSearch).then(data => {
            device.setDevices(data.rows)
            device.setTotalCount(data.count)
        })
        device.setPage(1)
        console.log(device.devices)
    }, [device.selectedType, device.selectedBrand,])

    useEffect(() => {
        device.setDevices([])
        if(device.clickSearch === true) {
            fetchDevices(null, null, device.page, device.limit, name || device.lineSearch).then(data => {
                device.setDevices(data.rows)
                device.setTotalCount(data.count)
            })
            device.setLineSearch('')
            device.setClickSearch(false)
        }
    }, [device.clickSearch, ])

    return (
        <Container>
            <Row className="mt-2">
                <Col md={3}>
                    <TypeBar/>
                </Col>
                <Col md={9}>
                    <BrandBar/>
                    {device.page !== Math.ceil(device.totalCount / device.limit) ?
                    <div 
                        className='mt-3' 
                        dangerouslySetInnerHTML={createMarkup()} 
                    />
                    :
                    <div />}
                    <DeviceList/>
                    {device.page === Math.ceil(device.totalCount / device.limit) ?
                        <div>По данному запросу больше ничего не найдено</div>
                        :
                        <div />
                    }
                    <Pages/>
                </Col>
            </Row>
        </Container>
    );
});

export default Shop;