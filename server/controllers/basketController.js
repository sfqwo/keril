const {Device, Basket, BasketDevice, DeviceInfo} = require('../models/models')
const ApiError = require('../error/ApiError');

class BasketController {
    async add(req, res, next) {
        try {
            let {userId, deviceId} = req.body.params
            let basketDevice;
            const device = await Device.findOne(
                {
                    where: {id : deviceId},
                },
            ).then(async data => {
                const basketId = await Basket.findOne(
                    {
                        where: {userId : userId},
                    },
                ).then( async data => {
                    const basketId = data.dataValues.id
                    await BasketDevice.findOne(
                        {
                            where: {basketId : basketId, deviceId: deviceId},
                        },
                    ).then(async data =>{
                        if (data === null){
                            basketDevice = await BasketDevice.create({basketId:  basketId, deviceId: deviceId})
                            return res.json(basketDevice)
                        }
                        else return res.json(null)
                    })

                })
                .catch(e => next(ApiError.badRequest(e)))
            })
            .catch(e => next(ApiError.badRequest(e)))
        } catch (e) {
            next(ApiError.badRequest(e))
        }

    }


    async delete(req,res,next){
        try {
            let {userId, deviceId} = req.query
            const basket = await Basket.findOne(
                {
                    where: {userId : userId},
                }
            ).then(async data => {
                //console.log(data)
                const basketDevice = await BasketDevice.findOne(
                    {
                        where: {
                            basketId : data.dataValues.id,
                            deviceId : deviceId,
                        },
                    }
                )
                .then(async data =>{
                    //console.log(data)
                    await data.destroy(
                    {
                        where: {
                            id : data.dataValues.id,
                        },
                    })
                    return res.json("Девайс успешно удален")
                })
                .catch(e => {
                    next(ApiError.badRequest(e))
                })
            }).catch(e => {
                next(ApiError.badRequest(e))
            })
        } catch (e) {
            next(ApiError.badRequest(e))
        }
    }

    async getAll(req, res, next) {
        let {userId, page, limit} = req.query
        page = page || 1
        limit = limit || 9
        let offset = page * limit - limit
        let devices=[]
        await Basket.findOne(
            {
                where: {userId : userId},
            }
        ).then(async basket => {
            const basketId = basket.dataValues.id
            await BasketDevice.findAndCountAll({where:{basketId}, limit, offset}).then(async data => {
                const count = data.count
                data.rows.map(async (el) => {
                    const device = await Device.findAndCountAll(
                        {
                            where: {id: el.dataValues.deviceId},
                            include: [{model: DeviceInfo, as: 'info'}],

                        },
                    ).then(data => {
                        data.rows.map(el => {
                            const [item] = [el.dataValues]
                            devices.push(item)
                        })
                        console.log(devices.length, (Number(page) * Number(limit) - Number(count) + 1))
                        if(limit == devices.length || (offset + devices.length) == count) {
                            devices.unshift(count)
                            return res.json(devices)
                        }
                    }).catch(e => console.log(e))
                })
            })
        })

    }

    async checkOne(req, res, next) {
        try {
            let {userId} = req.query
            const {id} = req.params
            const basket = await Basket.findOne(
                {
                    where: {userId : userId},
                }
            ).then(async data => {
                const basketDevice = await BasketDevice.findOne(
                    {
                        where: {
                            basketId : data.dataValues.id,
                            deviceId : id,
                        },
                    }
                )
                    .then(async data =>{
                        return res.json(data ? true : false)
                    })
                    .catch(e => {
                        next(ApiError.badRequest(e))
                    })
            }).catch(e => {
                next(ApiError.badRequest(e))
            })
        } catch (e) {
            next(ApiError.badRequest(e))
        }
    }
}

module.exports = new BasketController()