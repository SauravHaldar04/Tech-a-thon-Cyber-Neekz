const mongoose = require('mongoose');


const classroomSchema = new mongoose.Schema({
    classroom: {
        type: Number,
        required: true
    },
    class_type: {
        type: String,
        required: true
    },
    benches: {
        type: Number,
        required: true
    },
    bench_capacity: {
        type: Number,
        required: true
    },
    time_start: {
        type: Number,
        required: true
    },
    time_end: {
        type: Number,
        required: true
    },
    availability: {
        type: Boolean,
        default: true
    },
    teacherID: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Teacher'
    },
    equipments: [String]
});

// Create model from schema
const Classroom = mongoose.model('Classroom', classroomSchema);

module.exports = Classroom;
