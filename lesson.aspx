﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson.aspx.cs" Inherits="E_learning.lesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Lesson Details</title>
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
.btn {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        border: 2px solid transparent;
        border-radius: 5px;
        cursor: pointer;
    }

    .btn2 {
        color: #fff;
        background-color: #007bff;
        border-color: #007bff;
    }

    .btn2:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }

    .btn3 {
        color: #fff;
        background-color: #dc3545;
        border-color: #dc3545;
    }

    .btn3:hover {
        background-color: #c82333;
        border-color: #bd2130;
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
    <h1 class="navbar-title">Lesson Details</h1>
</div>
               <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="margin-left: 363px; margin-right: 0px; margin-top: 59px" Width="748px">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="LESSON_NO" HeaderText="LESSON_NO" ReadOnly="True" SortExpression="LESSON_NO" />
                       <asp:BoundField DataField="COUSER_ID" HeaderText="COUSER_ID" SortExpression="COUSER_ID" />
                       <asp:BoundField DataField="LESSON_TITTLE" HeaderText="LESSON_TITTLE" SortExpression="LESSON_TITTLE" />
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
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE_LESSON&quot; WHERE &quot;LESSON_NO&quot; = :LESSON_NO" InsertCommand="INSERT INTO &quot;COURSE_LESSON&quot; (&quot;LESSON_NO&quot;, &quot;COUSER_ID&quot;, &quot;LESSON_TITTLE&quot;) VALUES (:LESSON_NO, :COUSER_ID, :LESSON_TITTLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE_LESSON&quot;" UpdateCommand="UPDATE &quot;COURSE_LESSON&quot; SET &quot;COUSER_ID&quot; = :COUSER_ID, &quot;LESSON_TITTLE&quot; = :LESSON_TITTLE WHERE &quot;LESSON_NO&quot; = :LESSON_NO">
                   <DeleteParameters>
                       <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                       <asp:Parameter Name="COUSER_ID" Type="Decimal" />
                       <asp:Parameter Name="LESSON_TITTLE" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="COUSER_ID" Type="Decimal" />
                       <asp:Parameter Name="LESSON_TITTLE" Type="String" />
                       <asp:Parameter Name="LESSON_NO" Type="Decimal" />
                   </UpdateParameters>
               </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
               <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="128px" style="margin-left: 363px; margin-top: 5px" Width="693px" AllowPaging="True">
                   <EditItemTemplate>
                       LESSON_NO:
                       <asp:Label ID="LESSON_NOLabel1" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                       <br />
                       COUSER_ID:
                       <asp:TextBox ID="COUSER_IDTextBox" runat="server" Text='<%# Bind("COUSER_ID") %>' />
                       <br />
                       LESSON_TITTLE:
                       <asp:TextBox ID="LESSON_TITTLETextBox" runat="server" Text='<%# Bind("LESSON_TITTLE") %>' />
                       <br />
                       <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn2"/>
                       &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn3"/>
                   </EditItemTemplate>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <InsertItemTemplate>
                       LESSON_NO:
                       <asp:TextBox ID="LESSON_NOTextBox" runat="server" Text='<%# Bind("LESSON_NO") %>' />
                       <br />
                       COUSER_ID:
                       <asp:TextBox ID="COUSER_IDTextBox" runat="server" Text='<%# Bind("COUSER_ID") %>' />
                       <br />
                       LESSON_TITTLE:
                       <asp:TextBox ID="LESSON_TITTLETextBox" runat="server" Text='<%# Bind("LESSON_TITTLE") %>' />
                       <br />
                       <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn2"/>
                       &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn3"/>
                   </InsertItemTemplate>
                   <ItemTemplate>
                       LESSON_NO:
                       <asp:Label ID="LESSON_NOLabel" runat="server" Text='<%# Eval("LESSON_NO") %>' />
                       <br />
                       COUSER_ID:
                       <asp:Label ID="COUSER_IDLabel" runat="server" Text='<%# Bind("COUSER_ID") %>' />
                       <br />
                       LESSON_TITTLE:
                       <asp:Label ID="LESSON_TITTLELabel" runat="server" Text='<%# Bind("LESSON_TITTLE") %>' />
                       <br />
                       <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn2"/>
                       &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn3"/>
                       &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn2"/>
                   </ItemTemplate>
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               </asp:FormView>
    </form>
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
