const mongoose = require('mongoose');


const allocationSchema = new mongoose.Schema({
    classroom: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Classroom'
    },
    time_start: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Classroom'
    },
    time_end: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Classroom'
    }
});


const studentSchema = new mongoose.Schema({
    sname: {
        type: String,
        required: true
    },
    studentID: {
        type: Number,
        required: true,
        unique: true
    },
    course: {
        type: String,
        required: true
    },
    year: {
        type: String,
        required: true
    },
    division: {
        type: String,
        required: true
    },
    allocation: [allocationSchema] 
});


const Student = mongoose.model('Student', studentSchema);

module.exports = Student;

