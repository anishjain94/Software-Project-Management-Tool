var express = require('express');
var workarea = require('../Models/WorkAreaModel');
var router = express.Router();

router.get('/',(req,res)=>{
     workarea.getAllWorkArea((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;