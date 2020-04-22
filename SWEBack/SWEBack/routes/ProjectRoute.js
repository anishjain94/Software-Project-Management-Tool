var express = require('express');
var project = require('../Models/ProjectModel');
var router = express.Router();
var multer = require('multer');

var storage = multer.diskStorage({
    destination: (req, file, cb) => {
    cb(null, 'public/images/projectFile');
    },
    filename: (req, file, cb) => {
    x=file.fieldname + '-' + Date.now()+path.extname(file.originalname);
    cb(null, file.fieldname + '-' + Date.now()+path.extname(file.originalname))
    }
    });
    var upload = multer({storage: storage});
  


router.get('/:id',(req,res)=>{
    project.getEmployeeProjectDetails(req.params.id,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.get('',(req,res)=>{
    project.getTotalProject((err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})

router.put('',(req,res)=>{
    project.updateProjectDetails(req.body,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})
router.post('',upload.single('itemIMG'),(req,res)=>{
    project.addProject(req.body,req.file.filename,(err,rows)=>{
        if(err){
            res.json(err);
        }
        else{
            res.json(rows);
        }
    })
})


module.exports = router;