const Router = require('express')
const router = new Router()
const basketController = require('../controllers/basketController')

router.post('/', basketController.add)
router.delete('/', basketController.delete)
router.get('/', basketController.getAll)
router.get('/:id', basketController.checkOne)

module.exports = router
