var express = require('express');
var consign = require('consign');
var bodyParser = require('body-parser');
 const {check, validationResult} = require('express-validator');

var app = express();
app.set('view engine','ejs');
app.set('views','./app/views');
//console.log(check());
app.use(bodyParser.urlencoded({extended: true}));
app.use(check());
// app.use(validationResult);

consign()
.include('app/routes')
.then('config/dbConnection.js')
.then('app/models')
.into(app);

module.exports = app;