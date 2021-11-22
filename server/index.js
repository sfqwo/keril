const express = require("express");
require("dotenv").config();
const sequelize = require('./db');
const models = require('./models/models');
const fileUpload = require('express-fileupload');
const path = require('path');
const cors = require('cors');
const cookieParser = require('cookie-parser')
const router = require('./routes/index')
const errorHandler = require('./middleware/ErrorHandlingMiddleware')
PORT = process.env.PORT;

const app = express();
app.use(cookieParser())
app.use(cors());
app.use(fileUpload({}))
app.use(express.static(path.resolve(__dirname, 'static')))
app.use(express.json());
app.use('/api', router)

//Error's handler
app.use(errorHandler)

const start = async() => {
    try{
        await sequelize.authenticate()
        await sequelize.sync()
        app.listen(PORT, () => console.log(`We started on port ${PORT}`));
    }
    catch(e){
        console.log(e);
    }
}
start();

