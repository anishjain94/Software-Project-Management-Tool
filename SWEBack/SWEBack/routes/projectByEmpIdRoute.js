var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    project.getProjectByEmpId(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;