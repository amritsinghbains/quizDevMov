var http = require("http")
var express = require("express")
var app = express()
var port = process.env.PORT || 5000
var pg = require('pg');

var bodyParser = require('body-parser');
var app = express()
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use(express.static(__dirname + "/"))

app.all('*', function(req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'X-Requested-With, Authorization, Content-Type');
  next();
});

var server = http.createServer(app)
server.listen(port)

console.log("Listening on %d", port)

var baseClient;
pg.connect(process.env.DATABASE_URL, function(err, client) {
    baseClient = client;
});
var that = this;

app.post('/getcount', function (req, res) {
    console.log('getcount function');
    
    var rows = [];
    var value = 0;

    if(req.body.table == undefined){
        res.json(rows);
    }else{
        var queryString = "SELECT count(*) as count FROM " + req.body.table;
        var query = baseClient.query(queryString);
        
        query.on('row', function(row) {
            rows.push(row);
        });
        
        query.on('end', function(result) {
            res.json(rows);    
        });
    }
});
app.post('/get', function (req, res) {
    console.log('get function');
    
    var rows = [];
    var value = 0;

    if(req.body.table == undefined){
        res.json(rows);
    }else{
        var queryString = "SELECT count(*) as count FROM " + req.body.table;
        var query = baseClient.query(queryString);
        
        query.on('row', function(row) {
            // rows.push(row);
            value = row.count;
        });
        
        query.on('end', function(result) {
            console.log('Count: ' + value);

            var queryString2 = "SELECT * FROM " + req.body.table +
                " where id = " + Math.floor((Math.random() * value) + 1);;
            var query2 = baseClient.query(queryString2);
            
            query2.on('row', function(row) {
                rows.push(row);
            });
            
            query2.on('end', function(result) {
                res.json(rows);
            });
        });
    }
});

app.post('/add', function (req, res) {
    console.log('add function');

    var rows = [];

    if(req.body.table == undefined || req.body.question == undefined || 
        req.body.option1 == undefined || req.body.option2 == undefined || 
        req.body.option3 == undefined || req.body.option4 == undefined || 
        req.body.answer == undefined){

        res.json('not added');

    }else{

        var queryString = "INSERT INTO " + req.body.table +
        " (question, option1, option2, option3, option4, answer)"+
        " VALUES ('" + 
        req.body.question + "', '" +  
        req.body.option1 + "', '" +  
        req.body.option2 + "', '" +  
        req.body.option3 + "', '" +  
        req.body.option4 + "', '" +  
        req.body.answer + "');";

        var query = baseClient.query(queryString);
        res.json('added');
    }
    
});