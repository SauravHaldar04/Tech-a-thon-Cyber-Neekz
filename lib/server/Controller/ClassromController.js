const Classroom = require('../Model/Classrom');

exports.getAllClassrooms = async (req, res) => {
    try {
        // Fetch all classrooms
        const classrooms = await Classroom.find();

        res.status(200).json(classrooms);
    } catch (error) {
        console.error('Error fetching classroom data:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
};
