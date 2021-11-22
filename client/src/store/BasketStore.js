import {makeAutoObservable} from 'mobx'

export default class BasketStore{
    constructor() {
        this._devices = []
        this._allDevices = []
        this._page = 1
        this._totalCount = 0
        this._allCount = 0
        this._limit = 3
        makeAutoObservable(this)
    }

    setDevices(devices) {
        this._devices = devices
    }
    setAllDevices(devices) {
        this._allDevices = devices
    }
    setPage(page){
        this._page = page
    }
    setTotalCount(count){
        this._totalCount = count
    }
    setAllCount(count){
        this._allCount = count
    }
    setLimit(limit){
        this._limit = limit
    }
    get devices() {
        return this._devices
    }
    get allDevices() {
        return this._allDevices
    }
    get page(){
        return this._page
    }
    get totalCount(){
        return this._totalCount
    }
    get allCount(){
        return this._allCount
    }
    get limit(){
        return this._limit
    }

}