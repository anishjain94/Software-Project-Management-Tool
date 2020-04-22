var express = require('express');
var client = require('../Models/ClientModel');
var router = express.Router();

router.get('/',(req,res)=>{
     client.getAllClient((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;