var express = require('express');
var team = require('../Models/TeamModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    team.getTeamDetailsByProjectId(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.post('/',(req,res)=>{
    team.AddTeam(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;