const express = require('express');
const router = express.Router();
const teacherController = require('../Controller/TeacherController2');

// Login route
router.post('/Teacherlogin', teacherController.login);

module.exports = router;
