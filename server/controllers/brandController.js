const {Brand, Device, DeviceInfo} = require('../models/models')
const ApiError = require('../error/ApiError')

class BrandController{
    async create(req, res, next) {
        const name = req.body['name'];
        const brand = Brand.create({name });
        brand.then(el=> res.json(el)).catch((e)=>next(ApiError.badRequest('Brand adding error! '+ e.message)));
    }

    async getAll(req, res) {
        const brands = await Brand.findAll();
        return res.json(brands)
    }

    async getOne(req, res) {
        const {id} = req.params
        const brand = await Brand.findOne(
            {
                where: {id},
            },
        )
        return res.json(brand)
    }
}

module.exports = new BrandController()