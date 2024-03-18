<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="progress.aspx.cs" Inherits="E_learning.progress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Progress Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-xaVsRZex2+AT+JMbfyMTPtAh6Ksh5DkjHB1C1WlzA/bcxta/9wQOllvIXGss8f1Nt2W9o/+JZs0xG+nlKUsN2Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" style="margin-left: 532px; margin-top: 141px" Width="823px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                        <asp:BoundField DataField="LESSON_NO" HeaderText="LESSON_NO" SortExpression="LESSON_NO" />
                        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                        <asp:BoundField DataField="LAST_ACCESSED_DATE" HeaderText="LAST_ACCESSED_DATE" SortExpression="LAST_ACCESSED_DATE" />
                        <asp:BoundField DataField="LESSON_STATUS" HeaderText="LESSON_STATUS" SortExpression="LESSON_STATUS" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROGRESS_TRACK&quot;"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROGRESS_TRACK&quot;"></asp:SqlDataSource>
    </form>
</body>
</html>
