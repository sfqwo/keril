import {$authHost} from "./index";

export const addBasketDevice = async (deviceId) => {
    const userId = localStorage.getItem('userId')
    const {data} = await $authHost.post('api/basket', {params: {
            userId, deviceId
        }})

    return data
}

export const deleteBasketDevice = async (deviceId) => {
    const userId = localStorage.getItem('userId')
    const {data} = await $authHost.delete('api/basket', {params: {
            userId, deviceId
        }})
    return data
}

export const fetchBasketDevices = async (page, limit) => {
    const userId = localStorage.getItem('userId')
    const {data} = await $authHost.get('api/basket', {params: {
            userId, page, limit
        }})
    return data
}
