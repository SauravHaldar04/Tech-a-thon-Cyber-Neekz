const Student = require('../Model/Student'); // Path to your Student model

async function calculateStudentLength(req, res) {
  const { div, course, year } = req.body;

  try {
    const students = await Student.find({ division: div, course, year });
    const studentLength = students.length;
    res.json({ studentLength });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal Server Error' });
  }
}

module.exports = {
  calculateStudentLength,
};
