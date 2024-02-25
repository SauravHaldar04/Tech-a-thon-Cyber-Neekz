const express = require('express');
const router = express.Router();
const studentController = require('../Controller/StudentController2');

// Login route
router.post('/Studentlogin', studentController.login);

module.exports = router;
