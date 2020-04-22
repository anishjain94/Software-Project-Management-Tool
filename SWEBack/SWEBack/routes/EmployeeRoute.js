var express = require('express');
var employee = require('../Models/EmployeeModel');
var router = express.Router();

router.get('/:emailid/:password',(req,res)=>{
    employee.loginValidate(req.params.emailid,req.params.password,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/',(req,res)=>{
    employee.getallemployee((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('/:id',(req,res)=>{
    employee.getemployeebyid(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('/',(req,res)=>{
    employee.updateemployee(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

module.exports = router;