var db = require('../dbconnection');
var team = {
    getTeamDetailsByProjectId:function(id,callback){ //for TeamMember :- identify his/her project(Query in project module) with team details.
        return db.query("select e.*,t.*,w.* from emptbl e,teammembertbl tm,teamtbl t,workareatbl w where e.empId=tm.empId and tm.teamId=t.teamId and w.workAreaID=tm.workAreaId and t.projectId=?",[id],callback)
    },
    AddTeam:function(item,callback){
        return db.query("insert into teamtbl (projectId,teamSize,leaderId) values(?,?,?)",[item.projectId,item.teamSize,item.leaderId],callback);
    }
}

module.exports = team;