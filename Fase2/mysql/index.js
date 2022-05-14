const express = require('express');
const app = express();
var cors = require('cors')

//settings
app.set('port',process.env.PORT || 5000);

//middle
app.use(express.json());
app.use(cors())

// mysql object
var mysql = require('mysql');

// create connection with mysql
/**
 * -> NOTA: Para que funcione correctament la conexion se debe colocar
 * las credenciales que cada uno tiene 'seteado' en su sistema, yo por ejemplos uso:
 * usuario: 'root'
 * password: 'passoword'
 * pero se deben usar los que uno le puso porque no son los mismos siempre
 * tambien el puerto que usa cada sistema, aunque ese si parece ser estardar 
 */
var connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'password',
    database : 'bd2py',
    port : 3306

});

app.get('/',function(req,res){
    res.send('Hello, This is my API for MYSQL DataBase Connection!');
});

app.get('/runQuery/:month',async function(req,res){
    let month = req.params.month;
    let query = `SELECT * FROM Ranking where mes = ${month};`;

    var consulta = connection.query(query,async function(error,result){
        if(error){
            console.log("Query failed...");
            res.send("Query failed...");
        }else{
            let query_res = JSON.stringify(result, null, "  ");
            console.table(result);
            res.setHeader('Content-Type', 'application/json');
            res.send(query_res);
        }
    })
});

app.get('/runQueryOne/',async function(req,res){
    let query = `SELECT * FROM Ranking;`;

    var consulta = connection.query(query,async function(error,result){
        if(error){
            console.log("Query failed...");
            res.send("Query failed...");
        }else{
            let query_res = JSON.stringify(result, null, "  ");
            console.table(result);
            res.setHeader('Content-Type', 'application/json');
            res.send(query_res);
        }
    })
});

app.post('/login', (req,res) => {

    const query = `
            SELECT * FROM usuario
            WHERE username = '${req.body.username}'
            AND pwd = '${req.body.password}'`;

    var consulta = connection.query(query,async function(error,result){
        if(error){
            console.log("Query failed:",error);
            res.send(error);
        }else{
            let query_res = JSON.stringify(result, null, "  ");
            console.table(result);
            res.setHeader('Content-Type', 'application/json');
            res.send(query_res);
        }
    })
});

app.listen(app.get('port'),()=>{
    console.log('Server en puerto '+app.get('port'));
});