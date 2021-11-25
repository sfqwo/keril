import { observer } from "mobx-react-lite";
import {Button, Card, Col, Image, Row} from "react-bootstrap";
import { useHistory} from "react-router-dom";
import React, {useEffect, useState} from 'react';
import star from '../assets/star.svg'
import {BASKET_ROUTE, DEVICE_ROUTE} from "../utils/consts";
import {deleteBasketDevice} from "../http/BasketApi";

const BasketItem = observer(({device}) => {
    const history = useHistory()
    const [isFirstOpen, setIsFirstOpen] = useState(true)

    useEffect(() => {
        if(!isFirstOpen) deleteBasketDevice(device.id).then(data =>{
            window.location.reload();
            history.push(BASKET_ROUTE)
        })
    },[isFirstOpen,])

    return(
        <div className='d-flex flex-row justify-content-between'>
            <Col md={4}>
                <Card
                    onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}
                    style = {{width: 330, height:400, cursor: 'pointer', border: 'light'}}
                    className='mt-3 p-3 d-flex flex-column'
                >
                    <Image src={process.env.REACT_APP_API_URL + device.img}></Image>
                    <div className='d-flex flex-row align-item-center justify-content-between mt-2'>
                        <div>brand</div>
                        <div> {device.rating} <Image src={star} style = {{width: 20}}></Image></div>
                    </div>
                    <div>{device.name}</div>
                    <div>Стоимость: {device.price}</div>
                </Card>
            </Col>
            <Col md={6} className='mt-3 p-3 d-flex flex-column justify-content-between'>
                <Row className='d-flex flex-column'>
                    <p1 className='font-weight-bold text-uppercase mb-3'>Характеристики устройства:</p1>
                    {device.info.map((item, index) =>
                        <Row
                            key={item.id}
                            className='p-2'
                        >
                            {item.title} : {item.description}
                        </Row>
                    )}
                </Row>
                <Button
                    variant='outline-danger'
                    style={{width: 200}}
                    onClick={() => {
                        setIsFirstOpen(false)
                    }}

                >
                    Удалить из корзины
                </Button>
            </Col>
        </div>
    )
})

export default BasketItem;