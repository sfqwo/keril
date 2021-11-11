const {Type} = require('../models/models')
const ApiError = require('../error/ApiError')

class TypeController{
    async create(req, res) {
        const json = req.body;
        const value = json['name']
        console.log(value);
        const type = Type.create({ name: value });
        let result='';
        type.then(el=> {
            result = {id: el.id, name:el.name, createdAt: el.createdAt, updatedAt:el.updatedAt};
            console.log(result);
            res.json(result);
        })
        .catch((e)=>res.json(e));
    }

    async getAll(req, res) {
        const {id} = req.query;
        res.json(id)
    }

    
}

module.exports = new TypeController()