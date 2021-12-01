import { observer } from "mobx-react-lite";
import { Card, Col, Image } from "react-bootstrap";
import { useHistory } from "react-router-dom";
import star from '../assets/star.svg'
import { DEVICE_ROUTE } from "../utils/consts";
import {useEffect, useState} from "react";
import {fetchOneBrand} from "../http/DeviceAPI";



const DeviceItem = observer(({device}) => {
    const [brand,setBrand] = useState("")
    useEffect(() => {
        fetchOneBrand(device.brandId).then(data => {
            setBrand(data.name)
        })
    }, [])
    const history = useHistory()
    return(
        <Col md={3} className='ml-5 d-flex justify-content-between m-auto' onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}>
            <Card 
                style = {{width: 230, height: 300, cursor: 'pointer', border: 'light'}}
                className='p-3 d-flex flex-column'
            >
                <Image src={process.env.REACT_APP_API_URL + device.img}></Image>
                <div className='d-flex flex-row align-item-center justify-content-between mt-2'>
                    <div>{brand}</div>
                    <div> {device.rating} <Image src={star} style = {{width: 20}}></Image></div>
                </div>
                <div>{device.name}</div>
                <div>Стоимость: {device.price}</div>
            </Card>
        </Col>
    )
})

export default DeviceItem;