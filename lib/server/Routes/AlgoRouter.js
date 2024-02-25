const express = require('express');
const router = express.Router();
const allocateController = require('../controllers/allocateController');

router.post('/allocateClassroom', allocateController.allocateClassroom);

module.exports = router;
