import React, { useEffect, useState } from 'react';
import { Button, Col, Container, Image, Row } from 'react-bootstrap';
import { useParams } from 'react-router-dom';
import { fetchOneDevice } from '../http/DeviceAPI';

const DevicePage = () => {
  const [device, setDevice] = useState({info: []})
    const {id} = useParams()
    useEffect(() => {
        fetchOneDevice(id).then(data => setDevice(data))
    }, [])
  return (
    <Container className='d-flex flex-row'>
      <Col md={4} className='d-flex flex-column mt-5'>
        <Image width={450} height={450} src={process.env.REACT_APP_API_URL + device.img}></Image>
        <p2 className='mt-2 font-weight-bold'> Наименование: <p2>{device.name}</p2></p2>
        <p2 className='font-weight-bold'> Изготовитель: brand</p2>
        <p2 className='font-weight-bold'> Цена: {device.price}</p2>
        <div className='d-flex justify-content-end mt-3'>
          <Button variant='outline-dark' style={{width: 200}}>Добавить в корзину</Button>
        </div>
      </Col>
      <Col md={1}></Col>
      <Col md={4} className='mt-5' >
          <Row className='d-flex flex-column'>
            <p1 className='font-weight-bold text-uppercase mb-3'>Характеристики устройства:</p1>
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
