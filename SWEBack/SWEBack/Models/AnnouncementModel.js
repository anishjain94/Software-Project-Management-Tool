var db = require('../dbconnection');
var annce = {
    addannouncement:function(item,callback){
        let date_ob = new Date();
        let hours = date_ob.getHours();
        let minutes = date_ob.getMinutes();
        let seconds = date_ob.getSeconds();
        return db.query("insert into announcementtbl (announcementTitle,announcementMessage,announcementTime) values (?,?,?)",[item.announcementTitle,item.announcementMessage,date_ob],callback);
    },
    getAllannouncement:function(callback){
        return db.query("select * from announcementtbl",callback);
    },
    getannouncementByid:function(id,callback){
        return db.query("select * from announcementtbl where announcementId=?",[id],callback);
    },
    deleteAnnouncement:function(id,callback)
    {
        return db.query('delete from announcementtbl where announcementId=?',[id],callback);
    },
    updateAnnouncement:function(item,callback){
        return db.query('update announcementtbl set announcementTitle=?,announcementMessage=? where announcementId=?',[item.announcementTitle,item.announcementMessage,item.announcementId],callback);
    },
}

module.exports = annce;