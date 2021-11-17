import { observer } from "mobx-react-lite";
import { Card, Col, Image } from "react-bootstrap";
import { useHistory } from "react-router-dom";
import star from '../assets/star.svg'
import { DEVICE_ROUTE } from "../utils/consts";

const DeviceItem = observer(({device}) => {
    const history = useHistory()
    return(
        <Col md={3} className='ml-5' onClick={() => history.push(DEVICE_ROUTE + '/' + device.id)}>
            <Card 
                style = {{width: 230, height: 400, cursor: 'pointer', border: 'light'}}
                className='p-3 d-flex flex-column'
            >
                <Image src={process.env.REACT_APP_API_URL + device.img}></Image>
                <div>{device.brand}</div>
                <div className='d-flex flex-row align-item-center justify-content-between mt-2'>
                    <div>brand</div>
                    <div> {device.rating} <Image src={star} style = {{width: 20}}></Image></div>
                </div>
                <div>{device.name}</div>
                <div>Стоимость: {device.price}</div>
            </Card>
        </Col>
    )
})

export default DeviceItem;