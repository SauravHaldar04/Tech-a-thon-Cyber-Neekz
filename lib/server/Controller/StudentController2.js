const Student = require('../Model/Student');
const bcrypt = require('bcrypt');

exports.login = async (req, res) => {
    try {
        const { studentID, password } = req.body;

        // Find student by ID
        const student = await Student.findOne({ studentID });
        if (!student) {
            return res.status(404).json({ error: 'Student not found' });
        }

        // Compare password
        const match = await bcrypt.compare(password, student.password);
        if (!match) {
            return res.status(401).json({ error: 'Invalid password' });
        }

        // Password is correct, proceed with login
        // Here you can generate a token or set session, etc.
        res.status(200).json({ message: 'Login successful' });
    } catch (error) {
        console.error('Error logging in student:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
