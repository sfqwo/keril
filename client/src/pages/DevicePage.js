import React, {useEffect, useState} from 'react';
import { Button, Col, Container, Image, Row } from 'react-bootstrap';
import { useParams } from 'react-router-dom';
import {fetchOneBrand, fetchOneDevice} from '../http/DeviceAPI';
import {addBasketDevice, deleteBasketDevice} from "../http/BasketApi";

const DevicePage = () => {
    const [device, setDevice] = useState({info: []})
    const [basketState, setBasketState] = useState(false)
    const [isFirstOpen, setIsFirstOpen] = useState(true)
    const[brand, setBrand] = useState("")
    const {id} = useParams()

    useEffect(() => {
        fetchOneDevice(id).then(data => {
            setDevice(data)
            fetchOneBrand(data.brandId).then(data => setBrand(data.name))
        })

    }, [id, ])

    useEffect(() => {
        basketState ? addBasketDevice(id).then( data => {
                if(data === null) alert("Устройство уже добавлено в корзину")
            })
            :
            (isFirstOpen ? console.log("no delete") : deleteBasketDevice(id))
    },[basketState,])
  return (
    <Container className='d-flex flex-row'>
      <Col md={4} className='d-flex flex-column mt-5'>
        <Image width={450} height={450} src={process.env.REACT_APP_API_URL + device.img}></Image>
        <div className='mt-2 font-weight-bold'> Наименование: {device.name}</div>
        <div className='font-weight-bold'> Изготовитель: {brand}</div>
        <div className='font-weight-bold'> Цена: {device.price}</div>
        <div className='d-flex justify-content-end mt-3'>
            <Button
                variant={basketState ? 'outline-danger' : 'outline-dark'}
                style={{width: 200}}
                onClick={() => {
                    setIsFirstOpen(false)
                    setBasketState(basketState ? false : true)}}
            >
                {basketState ? <div>Удалить из корзины</div> : <div>Добавить в корзину</div>}
            </Button>
        </div>
      </Col>
      <Col md={1}></Col>
      <Col md={4} className='mt-5' >
          <Row className='d-flex flex-column'>
            <div className='font-weight-bold text-uppercase mb-3'>Характеристики устройства:</div>
            {device.info.map((item, index) =>
              <Row 
                key={item.id}
                className='p-2'
                style={{background: index%2 ? 'lightgray' : 'transparent'}}
              >
                {item.title} : {item.description}
              </Row>
            )}
          </Row>
      </Col>
    </Container>
  )
}

export default DevicePage;
