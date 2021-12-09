const {Type} = require('../models/models')
const ApiError = require('../error/ApiError')

class TypeController{
    async create(req, res, next) {
        try{
            const {name} = req.body
            const type = await Type.create({name})
            return res.json(type)
        }
        catch(e){
            next(ApiError.badRequest('Type adding error! ' + e.message))
        }
       
    }

    async getAll(req, res) {
        const types = await Type.findAll();
        return res.json(types)
    } 
    
    async delete(req, res, next){
        try{
            const {id} = req.query;
            console.log(req.query)
            const type = await Type.findOne({   
                where: {id},
            });
            type.destroy();
            res.redirect('../')
            //return res.json("all good")
        }
        catch(e){
            next(ApiError.badRequest('Type deleting error! ' + e.message))
        }
    }
}

module.exports = new TypeController()