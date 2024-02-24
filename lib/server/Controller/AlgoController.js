const { MongoClient } = require('mongodb');

async function allocateClassroom(req, res) {
    const { teacherID, course, year, division, timeSlot } = req.body;
    const uri = req.app.locals.uri;
    const dbName = req.app.locals.dbName;

    const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });

    try {
        await client.connect();
        const database = client.db(dbName);

        const studentCollection = database.collection('Student');
        const numberOfStudents = await studentCollection.countDocuments({ course, year, division });

        const classroomCollection = database.collection('Classroom');
        const classroom = await classroomCollection.findOne({ availability: true, time_start: timeSlot });

        if (!classroom || classroom.total_capacity < numberOfStudents) {
            console.log('No suitable classroom available.');
            res.status(400).json({ message: 'No suitable classroom available.' });
            return;
        }

        await classroomCollection.updateOne(
            { _id: classroom._id },
            { $set: { availability: false, teacherID: teacherID } }
        );

        const teacherCollection = database.collection('Teacher');
        await teacherCollection.updateOne(
            { teacherID: teacherID },
            { $push: { allocation: { classroom: classroom.classroom, time_start: timeSlot, class_type: classroom.class_type } } }
        );

        await studentCollection.updateMany(
            { course, year, division },
            { $push: { allocation: { classroom: classroom.classroom, time_start: timeSlot, class_type: classroom.class_type } } }
        );

        console.log(`Classroom allocated successfully for teacher ${teacherID}.`);
        res.status(200).json({ message: `Classroom allocated successfully for teacher ${teacherID}.` });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    } finally {
        await client.close();
    }
}

module.exports = {
    allocateClassroom,
};
