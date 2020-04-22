var db = require('../dbconnection');
var workarea = {
    getAllWorkArea:function(callback){
        return db.query("select * from workareatbl",callback);
    },
}

module.exports = workarea;