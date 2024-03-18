﻿﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="E_learning.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
    #navbar {
        background-color: #444;
        color: #fff;
        padding: 20px;
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .navbar-title {
        margin: 0;
        font-size: 24px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="sidebar">
            <header>
    <h2><i class="fas fa-graduation-cap"></i> E-Learning</h2>
            </header>
            <a href="dashboard.aspx"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
<a href="student.aspx"><i class="fas fa-user-graduate"></i> Student</a>
<a href="course.aspx"><i class="fas fa-book"></i> Course</a>
<a href="instructor.aspx"><i class="fas fa-chalkboard-teacher"></i> Instructor</a>
<a href="lesson.aspx"><i class="fas fa-book-open"></i> Lesson</a>
<a href="progress.aspx"><i class="fas fa-chart-line"></i> Progress</a>
            <a href="filter.aspx"><i class="fas fa-filter"></i> Filter</a>

        </div>
            <div id="navbar">
    <h1 class="navbar-title">Dashboard</h1>
</div>
        <div class="container">
            <div class="card">
                <h2>Total Students</h2>
                <p>
                    15
                </p>
            </div>
            <div class="card">
                <h2>Total Course</h2>
                <p>
                    15
                </p>
            </div>
        </div>
    </form>
</body>
</html>
