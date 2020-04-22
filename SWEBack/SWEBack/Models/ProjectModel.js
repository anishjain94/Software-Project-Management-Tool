    var db = require('../dbconnection');
var project = {

    getTotalProject:function(callback){ //Get total project count
        return db.query("select COUNT(projectId) from projecttbl",callback);
    },
    
    /* getAllProjectWithTeams:function(callback){ // get project details with its Team
        return db.query("select e.*,p.* from teamtbl t,projecttbl p,teammembertbl tm,emptbl e where p.projectId=t.projectId and tm.teamId=t.teamId and e.empId=tm.empId",callback);
    },  
  */

    getProjectWithTeams:function(id,callback){ // get project details with its Team
    return db.query("select e.* from teamtbl t , teammembertbl tm,emptbl e where tm.teamId=t.teamId and e.empId=tm.empId and t.projectId=?",[id],callback);
    }, 

    getProjectById:function(id,callback){
        return db.query("select * from projecttbl where projectId=?",[id],callback);
    },

    getAllProjectByStatus:function(status,callback){    // get all projects with status(for count consider length of object at viewjs side)
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId and projectStatus=?",[status],callback);  
    },

    /* getAllProject:function(callback){    // get all projects with status(for count consider length of object at viewjs side)
        return db.query("select * from projecttbl",callback);  
    }, */

    getAllProjectwithclient:function(callback){    // get all projects with status(for count consider length of object at viewjs side)
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId",callback);  
    },

    getProjectByClientId:function(id,callback){
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId and p.clientId=?",[id],callback);  
    },
    
    getProjectByClientIdByStaus:function(id,status,callback){
        return db.query("select p.*,c.* from projecttbl p,clienttbl c where c.clientId=p.clientId and p.clientId=? and p.projectStatus=?",[id,status],callback);  
    },

    getEmployeeProjectDetails:function(id,callback){ //get employee details with his/her project details
        return db.query("select p.*,tm.teamId,t.projectId from teammembertbl tm,teamtbl t,projecttbl p where tm.teamId=t.teamId and t.projectId=p.projectId and empId=?",[id],callback);
    },

    updateProjectDetails:function(item,callback){   // update project Details
        return db.query("update projecttbl set projectName=?,projectDescription=?,projectDomain=?,projectStartDate=?,projectEndDate=?,projectDeadline=?,projectReceiveDate=?,projectFile=? where projectId=?",[item.projectName,item.projectDescription,item.projectDomain,item.projectStartDate,item.projectEndDate,item.projectDeadline,item.projectReceiveDate,item.projectFile,item.projectId],callback)
    },
    addProject:function(item,filename,callback){ //add new project
        return db.query("insert into projecttbl(projectName,projectDescription,projectDomain,projectStartDate,projectEndDate,projectDeadline,projectReceiveDate,clientId,projectStatus,projectFile) values(?,?,?,?,?,?,?,?,?,?)",[item.projectName,item.projectDescription,item.projectDomain,item.projectStartDate,item.projectEndDate,item.projectDeadline,item.projectReceiveDate,item.clientId,item.projectStatus,filename],callback);
    },
    getProjectByEmpId:function(id,callback){
        return db.query("select p.* from projecttbl p,teamtbl t,teammembertbl tm where t.projectId=p.projectId and tm.teamId=t.teamId and tm.empId=?",[id],callback);
    }
    
    
}

module.exports = project;