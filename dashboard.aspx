﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="E_learning.dashboard" %>

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
    

    .total-student {
        background-color: #ffb3ba;
        color: #d8000c;
    }

    .total-course {
        background-color: #ffdfba;
        color: #ff9300;
    }

    .total-instructor {
        background-color: #baffc9;
        color: #00e676;
    }

    .total-lesson {
        background-color: #c9c9ff;
        color: #2962ff;
    }

    .total-progress {
        background-color: #ffd166;
        color: #ff6b00;
    }

   

    .container {
    display: flex;
    justify-content: center;
    align-items: flex-start; /* Adjusted alignment */
    flex-wrap: wrap;
    margin-top: 50px;
    padding: 0 275px; /* Added padding for better spacing */
}

.card {
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin: 10px;
    padding: 20px;
    text-align: center;
    min-width: 200px; /* Adjusted minimum width */
    transition: transform 0.3s ease;
    flex: 1 0 200px; /* Improved responsiveness */
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.card h2 {
    font-size: 20px; /* Reduced font size for better fit */
    margin-bottom: 10px;
}

.card span {
    font-size: 28px; /* Reduced font size for better fit */
    font-weight: bold;
}

.card a {
    display: block;
    text-decoration: none;
    color: #333;
    background-color: #ffffff;
    padding: 10px;
    border-radius: 5px;
}

.card a:hover {
    color: #555;
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
            /* Style the footer */
footer {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
    text-align: center;
}

/* Style the footer content */
.footer-content {
    max-width: 960px;
    margin: 0 auto;
}

/* Style the copyright text */
.footer-content p {
    margin: 0;
}

/* Style the footer links (if any) */
.footer-content a {
    color: #fff;
    text-decoration: none;
}

.footer-content a:hover {
    text-decoration: underline;
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
    <h1 class="navbar-title"> Dashboard</h1>
</div>
        <div class="container">
    <div class="card total-student">
    <h2>Total Student</h2>
    <span>15</span>
    <a href="student.aspx"><i class="fas fa-user-graduate"></i> View Student Details</a>
</div>
    <div class="card total-course">
        <h2>Total Course</h2>
        <span>15</span>
        <a href="course.aspx"><i class="fas fa-book"></i> View Course Details</a>
    </div>
    <div class="card total-instructor">
        <h2>Total Instructor</h2>
        <span>15</span>
        <a href="instructor.aspx"><i class="fas fa-chalkboard-teacher"></i> View Instructor Details</a>
    </div>
    <div class="card total-lesson">
        <h2>Total Lesson</h2>
        <span>15</span>
        <a href="lesson.aspx"><i class="fas fa-book-open"></i> View Lesson Details</a>
    </div>
    <div class="card total-progress">
        <h2>Total Progress</h2>
        <span>15</span>
        <a href="progress.aspx"><i class="fas fa-chart-line"></i> View Progress Details</a>
    </div>
</div>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
<br />
<br />
<br />
    <br />
<br />
<br />
<br />
    <br />
<br />
<br />
<br />
    <br />
<br />
<br />
<br />
    <br />
<br />
<br />
        <footer>
    <div class="footer-content">
        <p>&copy; 2024 - E-Learning. Created by Nischal Acharya.</p>
    </div>
</footer>
</body>
</html>
