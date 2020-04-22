var express = require('express');
var teamMember = require('../Models/TeamMemberModel');
var router = express.Router();

router.get('/:id',(req,res)=>{
    teamMember.getMemberByType(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.post("/",(req,res)=>{
    teamMember.addTeamMember(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;