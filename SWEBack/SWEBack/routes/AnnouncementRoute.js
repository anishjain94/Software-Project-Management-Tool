var express = require('express');
var announce = require('../Models/AnnouncementModel');
var router = express.Router();

router.get('/',(req,res)=>{
     announce.getAllannouncement((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:id',(req,res)=>{
    announce.getannouncementByid(req.params.id,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})
router.post('/',(req,res)=>{
    announce.addannouncement(req.body,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})


router.delete('/:id',(req,res)=>{
    announce.deleteAnnouncement(req.params.id,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.put('/',(req,res)=>{
    announce.updateAnnouncement(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})
module.exports = router;