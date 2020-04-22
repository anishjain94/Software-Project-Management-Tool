var db = require('../dbconnection');
var employee = {
    loginValidate:function(emailid,password,callback){ // For Login :-get details by emailid password.
        return db.query("select * from emptbl where empEmailId=? and empPassword=?",[emailid,password],callback);
    },
    getallemployee:function(callback){ //get all emp details with type(Developer,tester,designer etc)
        return db.query("select e.*,w.* from emptbl e,empworkareatbl ew,workareatbl w where (e.empId=ew.empId) and (w.workAreaId = ew.workAreaId) and e.empTypeId!=1",callback);
    },
    getemployeebyid:function(id,callback){//get emp details by his/her ID
        return db.query("select * from emptbl where empId=?",[id],callback);
    },
    gettotalemployee:function(callback){//get total no. of Employee in company
        return db.query("select COUNT(empId) as cnt from emptbl",callback);
    },
    updateemployee:function(item,callback){ //Update info of emp (update profile)
        return db.query("update emptbl set empFirstName=?,empMiddleName=?,empLastName=?,empEmailId=?,empContactNo=?,empProfile=? where empId=?",[item.empFirstName,item.empMiddleName,item.empLastName,item.empEmailId,item.empContactNo,item.empProfile,item.empId],callback);
    },
    
    
}

module.exports = employee;