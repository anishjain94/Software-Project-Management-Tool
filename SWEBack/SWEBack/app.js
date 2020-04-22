var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var employeeRouter = require('./routes/EmployeeRoute');
var employeeRouter1 = require('./routes/EmployeeRoute1');
var projectRouter = require('./routes/ProjectRoute');
var projectRouter1 = require('./routes/ProjectRoute1');
var teamRouter = require('./routes/teamRoute');
var clientRouter = require('./routes/ClientRoute');
var workareaRouter = require('./routes/WorkAreaRoute');
var teammemberRouter = require('./routes/TeamMemberRoute');
var projectteamRouter = require('./routes/ProjectTeamRoute');
var projectbyidRouter = require('./routes/ProjectByIdRoute');
var projectbyclientidRouter = require('./routes/ProjectByClientRoute');
var projectbyEmpIdRouter = require('./routes/projectByEmpIdRoute');
var getpasswordRouter = require('./routes/forgetPasswordRoute');
var sendMailRouter = require('./routes/sendMailRoute');
var getclientRouter = require('./routes/getAllClientRoute');
var announcementRouter = require('./routes/AnnouncementRoute');

var cors = require('cors');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/employee',employeeRouter);
app.use('/employee1',employeeRouter1);
app.use('/project',projectRouter);
app.use('/project1',projectRouter1);
app.use('/team',teamRouter);
app.use('/client',clientRouter);
app.use('/workarea',workareaRouter);
app.use('/teammember',teammemberRouter);
app.use('/projectteam',projectteamRouter);
app.use('/projectbyid',projectbyidRouter);
app.use('/projectbyclientid',projectbyclientidRouter);
app.use('/projectbyempid',projectbyEmpIdRouter);
app.use('/getpassword',getpasswordRouter);
app.use('/sendmail',sendMailRouter);
app.use('/getclient',getclientRouter);
app.use('/announcement',announcementRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
