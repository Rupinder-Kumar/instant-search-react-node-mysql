const express = require('express');
const app = express();

var mysql = require('mysql');

var con = mysql.createConnection({host:'localhost',user:'root',password:'',database:'myrect'});

const bodyParser = require('body-parser');
const PORT = 4200;
const cors = require('cors');

app.use(cors());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());


app.post('/search',function(req,res){
    var query = req.body.search;

    // console.log(query);

    var sql = "select `college` from collegelist where `keyword` like '%"+query+"%'";
    // console.log(sql);
    con.query(sql,function(err,result){
        if(err) throw err;
        console.log(result);
            res.send(result);
    });
});
app.listen(PORT, function(){
    console.log("Server is running on Port:",PORT);
});