import axios from "axios";

const $host = axios.create({
    baseURL: process.env.REACT_APP_API_URL
})

const $authHost = axios.create({
    baseURL: process.env.REACT_APP_API_URL
})

const authInterceptor = config => {
    config.headers.authorization = `Bearer ${localStorage.getItem('token')}`
    config.headers['Access-Control-Max-Age'] = 100
    return config
}

$host.interceptors.request.use(
    config => {
        config.headers['Access-Control-Max-Age'] = 100
        //config.headers["Content-Type"] = "application/x-www-form-urlencoded"
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