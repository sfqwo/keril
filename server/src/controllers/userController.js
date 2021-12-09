const ApiError = require('../error/ApiError');
const bcrypt = require('bcrypt');
const {User, Basket} = require('../models/models')
const jwt = require('jsonwebtoken')

const generateJWT = function(id, email, role){
    return jwt.sign(
        {id: id, email, role}, 
        process.env.SECRET_KEY,
        {expiresIn:'24h'}
    )
}

class UserController{
    async registration(req, res,next) {
        try{
            const {email, password, role} = req.body
            if (!email || !password) return next(ApiError.badRequest('Uncorrected email or password'))
            const candidate = await User.findOne({where: {email}})
            if (candidate) return next(ApiError.badRequest('User with this email is already registered'))
            
            const hashPass = await bcrypt.hash(password, 5)
            const user = await User.create({email, role, password: hashPass})
            const basket = await Basket.create({userId: user.id})
            const token = generateJWT(user.id, user.email, user.role)
            return res.json({token, role: user.role})
        }
        catch(e){
            return next(ApiError.badRequest(e.message))
        }
        
    }


    async login(req, res, next) {
        try{
            const {email, password} = req.body
            const user = await User.findOne({where: {email}})
            if (!user) return next(ApiError.Unauthorized('401 Unauthorized!'))
            let comparePassword = bcrypt.compareSync(password, user.password)
            if (!comparePassword) return next(ApiError.Unauthorized('401 Wrong password!'))
            const token = generateJWT(user.id, user.email, user.role)
            return res.json({token, role: user.role})
        }
        catch(e){
            return next(ApiError.badRequest(e.message))
        }     
    }
  

    async check(req, res, next) {
        const {id} = req.query
        const result = User.findAll({where: {id}}).then(data =>{
            console.log(data)
            if(id) return res.json(data)
        })
        const token = generateJWT(req.user.id, req.user.email, req.user.role)
        return res.json({token, role: req.user.role})
    }
}

module.exports = new UserController()