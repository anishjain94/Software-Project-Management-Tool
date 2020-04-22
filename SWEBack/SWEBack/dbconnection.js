var mysql=require('mysql');
 var connection=mysql.createConnection({
 
host:'localhost',
 user:'root',
 password:'',
 database:'pmsdb',
 multipleStatements: true
 
});
 module.exports=connection;