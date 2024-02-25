const Student = require('../Model/Student');
const bcrypt = require('bcrypt');

exports.signup = async (req, res) => {
    try {
        const { sname, studentID, course, year, division, password } = req.body;

        // Check if studentID already exists
        const existingStudent = await Student.findOne({ studentID });
        if (existingStudent) {
            return res.status(400).json({ error: 'StudentID already exists' });
        }

        // Hash the password
        const hashedPassword = await bcrypt.hash(password, 10);

        // Create new student object with hashed password
        const newStudent = new Student({
            sname,
            studentID,
            course,
            year,
            division,
            password: hashedPassword
        });

        // Save the new student
        await newStudent.save();

        res.status(201).json({ message: 'Student signup successful' });
    } catch (error) {
        console.error('Error signing up student:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
