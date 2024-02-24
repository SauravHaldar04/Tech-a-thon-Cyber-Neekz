const express = require('express');
const router = express.Router();
const studentController = require('../Controller/StudentController');

// Signup route
router.post('/Studentsignup', studentController.signup);

module.exports = router;
