const Teacher = require('../Model/Teacher');
const bcrypt = require('bcrypt');

exports.login = async (req, res) => {
    try {
        const { teacherID, password } = req.body;

        // Find teacher by ID
        const teacher = await Teacher.findOne({ teacherID });
        if (!teacher) {
            return res.status(404).json({ error: 'Teacher not found' });
        }

        // Compare password
        const match = await bcrypt.compare(password, teacher.password);
        if (!match) {
            return res.status(401).json({ error: 'Invalid password' });
        }

        // Password is correct, proceed with login
        // Here you can generate a token or set session, etc.
        res.status(200).json({ message: 'Login successful' });
    } catch (error) {
        console.error('Error logging in teacher:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
