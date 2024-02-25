const express = require("express");
const classroomController = require("../Controller/ClassromController");
const router2 = express.Router();

// Route to fetch all classroom data
router2.get("/getclassrooms", classroomController.getAllClassrooms);

module.exports = router2;
