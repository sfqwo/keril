import React, {useContext, useEffect, useState} from 'react';
import {Container, Row, Col, Card, Button} from 'react-bootstrap';
import {Context} from "../index";
import BasketItem from "../components/BasketItem";
import {fetchBasketDevices} from "../http/BasketApi";
import BasketPages from "../components/BasketPages";
import {observer} from "mobx-react-lite";

const Basket = observer( () => {
    const {basket} = useContext(Context)
    const [basketState, setBasketState] = useState(true)
    const [amount, setAmount] = useState(0)
    const [deviceCount, setDeviceCount] = useState(0)
    let temp = 0

    useEffect(() => {
        fetchBasketDevices(basket.page, basket.limit).then(data => {
            const [totalCount] = data.slice(0,1)
            basket.setTotalCount(totalCount)
            basket.setDevices(data.slice(1))
            setBasketState(false)
        })
    }, []);

    useEffect(async () => {
        await fetchBasketDevices(basket.page, 100).then(data => {
            data.slice(1).map((el, index) => {
                temp += el.price
                setAmount(temp)
            })
            basket.setAllCount(data.slice(1).length)
            basket.setAllDevices(data.slice(1))
        })
    }, []);

    useEffect(() => {
        fetchBasketDevices(basket.page, basket.limit).then(data => {
            const [totalCount] = data.slice(0,1)
            basket.setTotalCount(totalCount)
            basket.setDevices(data.slice(1))
            setBasketState(false)
        })
    }, [basket.page, ]);

  return (
    <Container className='bgcont center-block d-flex flex-row'>
        <Col md={7}>
            <Row className = 'd-flex  flex-column mt-3'>
                {basket.devices.map(device =>
                    <BasketItem key={device.id} device = {device} />
                )}
            </Row>
            <BasketPages/>
        </Col>
        <Col md={1}></Col>
        <Col md={4}>
            <Card className="mt-3 p-3">
                <Button
                    variant='outline-success'
                >
                    Перейти к оплате
                </Button>
                <Row className='d-flex flex-row justify-content-between'>
                    <Col md={8} className="mt-3">
                        <p1 className='fw-bolder mt-3'>Ваша корзина:</p1>
                        {basket.allDevices.map(device =>
                            <div className="mt-3">{device.name}</div>
                        )}
                        <div className="mt-3" style={{border: "0.5px solid lightgrey"}}></div>
                        <p1 className="fw-bolder mt-3">Итого:</p1>
                    </Col>
                    <Col md={4}>
                        <div className="mt-3">{basket.allCount} товар(ов)</div>
                        {basket.allDevices.map(device =>
                            <div className="mt-3">{device.price} руб.</div>
                        )}
                        <div className="mt-3" style={{border: "0.5px solid lightgrey"}}></div>
                        <p1 className=" fw-bolder mt-3">{amount} руб.</p1>
                    </Col>
                </Row>

            </Card>

        </Col>
    </Container>
  )
})

export default Basket;
