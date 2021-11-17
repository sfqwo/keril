import {makeAutoObservable} from 'mobx'

export default class DeviceStore{
    constructor() {
        this._types = []
        this._brands = []
        this._devices = []
        this._selectedType = {} 
        this._selectedBrand = {} 
        this._page = 1
        this._totalCount = 0
        this._limit = 3
        this._lineSearch = ''
        this._clickSearch = false
        makeAutoObservable(this)
    }

    setTypes(types) {
        this._types = types
    }
    setBrands(brands) {
        this._brands = brands
    }
    setDevices(devices) {
        this._devices = devices
    }
    setSelectedType(type){
        this._selectedType = type
    }
    setSelectedBrand(brand){
        this._selectedBrand = brand
    }
    setPage(page){
        this._page = page
    }
    setTotalCount(count){
        this._totalCount = count
    }
    setLimit(limit){
        this._limit = limit
    }
    setLineSearch(line) {
        this._lineSearch = line
    }
    setClickSearch(bool) {
        this._clickSearch = bool
    }
    get types() {
        return this._types 
    }
    get brands() {
        return this._brands 
    }
    get devices() {
        return this._devices 
    }
    get selectedType(){
        return this._selectedType
    }
    get selectedBrand(){
        return this._selectedBrand
    }
    get page(){
        return this._page
    }
    get totalCount(){
        return this._totalCount
    }
    get limit(){
        return this._limit
    }
    get lineSearch(){
        return this._lineSearch
    }
    get clickSearch(){
        return this._clickSearch
    }

}