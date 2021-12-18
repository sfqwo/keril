import axios from "axios";
import Config from "../Config";

const $host = axios.create({
    baseURL: Config.apiUrl
})

const $authHost = axios.create({
    baseURL: Config.apiUrl
})

const authInterceptor = config => {
    config.headers.authorization = `Bearer ${localStorage.getItem('token')}`
    config.headers['Access-Control-Max-Age'] = 100
    return config
}

$host.interceptors.request.use(
    config => {
        config.headers['Access-Control-Max-Age'] = 100
        return config
    },
    error => {
        Promise.reject(error)
    }
)


$authHost.interceptors.request.use(authInterceptor)

export {
    $host,
    $authHost
}