const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const mysql = require('mysql2');
const connection = mysql.createConnection({
    host: 'localhost',
    password: 'password',
    user: 'root',
    database: 'tokopedia'
});

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

app.get('/', (req, res) => {
    res.json({"msg": "Success"});
});
app.get('/products', (req, res) => {
    connection.query('SELECT * FROM products',
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            res.json(rows)
        }
    });
});
app.get('/product/:id', (req, res) => {
    const id = req.params.id;
    connection.query(`SELECT * FROM products WHERE id='${id}'`,
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            res.json(rows)
        }
    });
});


app.listen(4000, '0.0.0.0', () => {
    console.log('Server Running')
})