var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();
/* 
router.get('/:status?',(req,res)=>{
    if(!req.params.status){
    project.getAllProjectWithTeams((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
    }
    else{
        project.getAllProjectWithTeamsAndStatus(req.params.status,(err,rows)=>{
            if(err){
                res.json(err);
            }
            else{
                res.json(rows);
            }
        })
  } 
  
})*/

router.get('/:status',(req,res)=>{
    project.getAllProjectByStatus(req.params.status,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/',(req,res)=>{
    project.getAllProjectwithclient((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})



module.exports = router;