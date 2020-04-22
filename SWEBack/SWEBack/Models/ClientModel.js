var db = require('../dbconnection');
var client = {
    getTotalClientCount:function(callback){
        return db.query("select count(clientId) as cnt from clienttbl",callback);
    },
    addclient:function(item,callback){
        return db.query("insert into clienttbl (clientFirstName,clientMiddleName,clientLastName,clientEmailId,clientContactNo,clientOrgName,clientAddress) values (?,?,?,?,?,?,?)",[item.clientFirstName,item.clientMiddleName,item.clientLastName,item.clientEmailId,item.clientContactNo,item.clientOrgName,item.clientAddress],callback);
    },
    getAllClient:function(callback){
        return db.query("select * from clienttbl",callback);
    },
    getclientById:function(id,callback){
        return db.query("select * from clienttbl where clientId=?",[id],callback);
    },
    updateClient:function(item,callback){
        return db.query("update clienttbl set clientFirstName=?,clientMiddleName=?,clientLastName=?,clientEmailId=?,clientContactNo=?,clientOrgName=?,clientAddress=? where clientId=?",[item.clientFirstName,item.clientMiddleName,item.clientLastName,item.clientEmailId,item.clientContactNo,item.clientOrgName,item.clientAddress,item.clientId],callback);
    },
    
}

module.exports = client;