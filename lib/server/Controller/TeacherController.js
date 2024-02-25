const asyncHandler = require("express-async-handler");
const Teacher = require('../Model/Teacher');

// Define the signup function
const signup = asyncHandler(async (req, res) => {
    // Extract teacher data from request body
    const { tname, teacherID, course, designation } = req.body;

    // Check if teacherID already exists
    const existingTeacher = await Teacher.findOne({ teacherID });
    if (existingTeacher) {
        return res.status(400).json({ error: 'TeacherID already exists' });
    }

    // Create new teacher object
    const newTeacher = new Teacher({
        tname,
        teacherID,
        course,
        designation
    });

    // Save new teacher to the database
    await newTeacher.save();

    // Respond with success message
    res.status(201).json({ message: 'Teacher signup successful' });
});

// Export the signup function as a property of an object
module.exports = { signup };
