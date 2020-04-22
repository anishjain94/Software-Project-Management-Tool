var express = require('express');
var client = require('../Models/ClientModel');
var router = express.Router();

router.get('/',(req,res)=>{
     client.getTotalClientCount((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:id',(req,res)=>{
    client.getclientById(req.params.id,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})


router.post('/',(req,res)=>{
    client.addclient(req.body,(err,rows)=>{
       if(err){
           res.json(err);
       }
       else{
           res.json(rows);
       }
   })
})

router.put('/',(req,res)=>{
    client.updateClient(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;