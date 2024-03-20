<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filter.aspx.cs" Inherits="E_learning.filter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> E - Learning | Filter</title>
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
    }    footer {
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
.heading{
        text-align: center;

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
    <h1 class="navbar-title">Filter</h1>
</div>
<h1 class="heading">Student Enrollment</h1>
        <asp:SqlDataSource ID="studentdropdown" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT student.STUDENT_ID, student.STUDENT_NAME FROM STUDENT student, ENROLLMENT enrollment WHERE student.STUDENT_ID = enrollment.STUDENT_ID"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STUDENT_ID,COURSE_ID" DataSourceID="studenttable" ForeColor="#333333" GridLines="None" style="margin-left: 263px; margin-top: 41px;" Width="1224px" Height="307px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                <asp:BoundField DataField="COURSE_TITTLE" HeaderText="COURSE_TITTLE" SortExpression="COURSE_TITTLE" />
                <asp:BoundField DataField="ENROLL_DATE" HeaderText="ENROLL_DATE" SortExpression="ENROLL_DATE" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="studenttable" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 
    s.STUDENT_ID, 
    s.STUDENT_NAME, 
    s.CONTACT, 
    s.EMAIL, 
    s.DOB, 
    s.COUNTRY, 
    c.COURSE_ID, 
    c.COURSE_TITTLE, 
    e.ENROLL_DATE 
FROM 
    STUDENT s 
JOIN 
    ENROLLMENT e ON s.STUDENT_ID = e.STUDENT_ID 
JOIN 
    COURSE c ON e.COURSE_ID = c.COURSE_ID 
WHERE 
    s.STUDENT_ID = :STUDENT_ID
">
            <SelectParameters>
    <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" Type="Decimal" />
</SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="studentdropdown" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" Height="16px" style="margin-left: 261px; margin-top: 0px" Width="121px" AutoPostBack="True">
        </asp:DropDownList>
        <h1 class="heading">Best E - Learning Coureses</h1>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="COURSE_ID" DataSourceID="orderbytable" ForeColor="#333333" GridLines="None" Height="257px" style="margin-left: 262px; margin-top: 11px" Width="896px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                <asp:BoundField DataField="COURSE_TITTLE" HeaderText="COURSE_TITTLE" SortExpression="COURSE_TITTLE" />
                <asp:BoundField DataField="ENROLLMENT_COUNT" HeaderText="ENROLLMENT_COUNT" SortExpression="ENROLLMENT_COUNT" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="orderbytable" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT c.course_id, 
       c.course_tittle, 
       COUNT(e.student_id) AS enrollment_count
FROM course c
JOIN enrollment e ON c.course_id = e.course_id
WHERE TO_CHAR(e.enroll_date, 'YYYY-MM') = :SelectedMonth
GROUP BY c.course_id, c.course_tittle
ORDER BY COUNT(e.student_id) DESC
FETCH FIRST 3 ROWS ONLY">
            <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" Name="SelectedMonth" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="coursetable" runat="server"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="orderby" DataTextField="MONTH_YEAR" DataValueField="MONTH_YEAR" Height="16px" style="margin-left: 267px; margin-top: 0px" Width="109px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="orderby" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT TO_CHAR(enroll_date, 'YYYY-MM') AS month_year 
FROM enrollment
ORDER BY month_year DESC
"></asp:SqlDataSource>
        <h1 class="heading">Instructed Course</h1>

        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="COURSE_ID,INSTRUCTOR_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="450px" style="margin-left: 267px; margin-top: 15px; margin-right: 0px;" Width="1066px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                <asp:BoundField DataField="COURSE_TITTLE" HeaderText="COURSE_TITTLE" SortExpression="COURSE_TITTLE" />
                <asp:BoundField DataField="INSTRUCTOR_ID" HeaderText="INSTRUCTOR_ID" ReadOnly="True" SortExpression="INSTRUCTOR_ID" />
                <asp:BoundField DataField="INSTRUCTOR_NAME" HeaderText="INSTRUCTOR_NAME" SortExpression="INSTRUCTOR_NAME" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT
    c.COURSE_ID,
    c.COURSE_TITTLE,
    i.INSTRUCTOR_ID,
    i.INSTRUCTOR_NAME  
FROM
    COURSE c
JOIN
    INSTRUCTOR_COURSE sci ON c.COURSE_ID = sci.COURSE_ID
JOIN
    INSTRUCTOR i ON sci.INSTRUCTOR_ID = i.INSTRUCTOR_ID
WHERE
    c.COURSE_ID = :Course 
AND
    i.INSTRUCTOR_ID IN (
        SELECT
            INSTRUCTOR_ID
        FROM
            INSTRUCTOR_COURSE
        GROUP BY
            INSTRUCTOR_ID
        HAVING
            COUNT(DISTINCT COURSE_ID) &gt;= 2
    )
">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="Course" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="COURSE_TITTLE" DataValueField="COURSE_ID" style="margin-left: 270px" Width="149px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;"></asp:SqlDataSource>
    </form>
    <br />
    <br />
            <footer>
    <div class="footer-content">
        <p>&copy; 2024 - E-Learning. Created by Nischal Acharya.</p>
    </div>
</footer>
</body>
</html>
