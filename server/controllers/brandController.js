const {Brand} = require('../models/models')
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
}

module.exports = new BrandController()