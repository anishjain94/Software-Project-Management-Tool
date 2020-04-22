var db = require('../dbconnection');
var employee = {
    getPassword:function(emailId,callback){
        return db.query("select empPassword from emptbl where empEmailId=?",[emailId],callback);
    }
}

module.exports = employee;