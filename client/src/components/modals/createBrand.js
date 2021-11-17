import React, { useState } from 'react';
import { Button, Form, FormControl, Modal, ModalBody, ModalFooter, ModalTitle } from 'react-bootstrap';
import ModalHeader from 'react-bootstrap/esm/ModalHeader';
import { createBrand } from '../../http/DeviceAPI';

const CreateBrand = ({show, onHide}) => {
    const [value, setValue] = useState('')

    const addBrand = () => {
        createBrand({name: value}).then(data => {
            setValue('')
            onHide()
        })
    }

  return (
    <Modal
        show = {show}
        size = 'lg'
        onHide = {onHide}
        centered
    >
        <ModalHeader closeButton>
            <ModalTitle id='contained-modal-title-vcenter'>
                Добавление бренда
            </ModalTitle>
        </ModalHeader>
        <ModalBody>
                <Form>
                    <FormControl
                        placeholder = 'Введите название бренда...'
                        onChange={name => setValue(name.target.value)}
                    >

                    </FormControl>
                </Form>
            </ModalBody>
            <ModalFooter>
                <Button variant='outline-success' onClick={addBrand}>Добавить</Button>
                <Button variant='outline-danger' onClick={onHide}>Закрыть</Button>
            </ModalFooter>
    </Modal>
  )
}

export default CreateBrand;