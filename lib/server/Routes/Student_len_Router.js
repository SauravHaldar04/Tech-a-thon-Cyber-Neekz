const express = require('express');
const router = express.Router();
const studentController = require('../Controller/Student_len_Controller');

router.post('/calculateStudentLength', studentController.calculateStudentLength);

module.exports = router;
