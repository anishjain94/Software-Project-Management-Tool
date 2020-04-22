var db = require('../dbconnection');
var teamMember = {
    addTeamMember:function(item,callback){
        return db.query("insert into teammembertbl (teamId,empId,workAreaId) values(?,?,?)",[item.teamId,item.empId,item.workAreaId],callback);
    },  
    getMemberByType:function(id,callback){
        return db.query("select e.* from emptbl e,empworkareatbl ew where e.empId=ew.empId and ew.workAreaId=?",[id],callback);
    }
}

module.exports = teamMember;