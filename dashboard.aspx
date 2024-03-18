<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="E_learning.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Admin Dashboard</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f9f9f9;
    }
    #sidebar {
        background-color: #333;
        color: #fff;
        width: 250px;
        height: 100%;
        position: fixed;
        top: 0;
        left: 0;
        overflow-x: hidden;
        padding-top: 20px;
    }
    #sidebar a {
        padding: 10px 20px;
        display: block;
        color: #fff;
        text-decoration: none;
    }
    #sidebar a:hover {
        background-color: #555;
    }
    header {
        background-color: #444;
        color: #fff;
        padding: 20px;
        text-align: center;
    }
    .container {
        margin-left: 270px; 
        padding: 20px;
        display: flex;
        flex-wrap: wrap;
        justify-content: flex-start;
    }
    .card {
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        margin: 10px;
        padding: 20px;
        width: 300px;
        flex-grow: 1; 
    }
    .card h2 {
        margin-top: 0;
        font-size: 24px;
        margin-bottom: 10px;
        color: #444;
    }
    .card p {
        color: #666;
        margin-bottom: 0;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="sidebar">
            <header>
    <h1> E-Learning</h1>
            </header>
            <a href="dashboard.aspx">Dashboard</a>
            <a href="student.aspx">Student</a>
            <a href="course.aspx">Course</a>
            <a href="instructor.aspx">Instructor</a>
            <a href="lesson.aspx">Lesson</a>
            <a href="progress.aspx">Progress</a>
        </div>
        <div class="container">
            <div class="card">
                <h2>Total Students</h2>
                <p>15</p>
            </div>
            <div class="card">
                <h2>Total Course</h2>
                <p>15</p>
            </div>
        </div>
    </form>
</body>
</html>
