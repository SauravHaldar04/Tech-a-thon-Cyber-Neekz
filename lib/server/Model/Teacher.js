const mongoose = require('mongoose');
const bcrypt = require('bcrypt');

const allocationSchema = new mongoose.Schema({
    classroom: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Classroom'
    },
    time_start: {
        type: Date,
        required: true
    },
    time_end: {
        type: Date,
        required: true
    }
});

const teacherSchema = new mongoose.Schema({
    tname: {
        type: String,
        required: true
    },
    teacherID: {
        type: String,
        required: true,
        unique: true 
    },
    course: {
        type: String,
        required: true
    },
    designation: {
        type: String,
        required: true
    },
    password: {
        type: String,
        required: true
    },
    allocation: [allocationSchema] 
});

// Hash password before saving
teacherSchema.pre('save', async function(next) {
    try {
        if (!this.isModified('password')) {
            return next();
        }
        // Generate salt
        const salt = await bcrypt.genSalt(10);
        // Hash the password with the salt
        const hashedPassword = await bcrypt.hash(this.password, salt);
        this.password = hashedPassword;
        next();
    } catch (error) {
        next(error);
    }
});

const Teacher = mongoose.model('Teacher', teacherSchema);

module.exports = Teacher;
