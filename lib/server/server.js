const express = require("express");
const connectDb = require("./Config/dbConnection");
const dotenv = require("dotenv").config();
const teacherRouter = require("./Routes/TeahcerRouter");
const teacherRouter2 = require("./Routes/TeacherRouter2");
const studentRouter = require("./Routes/StudentRouter");
const studentRouter2 = require("./Routes/StudentRouter2");
const classroom = require("./Routes/ClassroomRouter");
const student_len=require("./Routes/Student_len_Router")
const algoRouter =require("./Routes/AlgoRouter")
// Initialize Express app
const app = express();

// Connect to MongoDB
connectDb();

// Middleware to parse request bodies
app.use(express.json());

// teacher routing for signup and login
app.use("/Teachersignup", teacherRouter);
app.use("/Teacherlogin", teacherRouter2);

// Student routing for signup and login
app.use("/Studentsignup", studentRouter);
app.use("/Studentlogin", studentRouter2);

// for classroom
app.use("/getclassrooms", classroom);
//for student length
app.use("/calculateStudentLength",student_len);

app.use("/allocateClassroom",algoRouter)

// 404 Not Found middleware
app.use((req, res, next) => {
  res.status(404).json({ error: "Not found" });
  next();
});

// Error handling middleware
app.use((err, req, res, next) => {
  console.error("Error:", err);
  res.status(500).json({ error: "Internal server error" });
});

// Start server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
