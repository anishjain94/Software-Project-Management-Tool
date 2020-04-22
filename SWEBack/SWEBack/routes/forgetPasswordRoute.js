var express = require('express');
var employee = require('../Models/forgetPasswordModel');
var router = express.Router();


router.get('/:emailid',(req,res)=>{
    employee.getPassword(req.params.emailid,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;