var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    project.getProjectByClientId(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:id/:status',(req,res)=>{
    project.getProjectByClientIdByStaus(req.params.id,req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;