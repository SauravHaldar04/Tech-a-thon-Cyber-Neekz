const express = require('express');
const router = express.Router();
const teacherController = require('../Controller/TeacherController');

// Route for teacher signup
router.post('/signup', teacherController.signup);

module.exports = router;
