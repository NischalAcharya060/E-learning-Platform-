<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="E_learning.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Student Details</title>
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
        top: -2px;
        left: -5px;
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
        <h1 class="navbar-title">Students Details</h1>
    </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STUDENT_ID" DataSourceID="Student" ForeColor="#333333" GridLines="None" Height="16px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 356px; margin-right: 109px; margin-top: 21px;" Width="1045px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>

                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
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
            <asp:SqlDataSource ID="Student" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;STUDENT_NAME&quot; = :original_STUDENT_NAME AND &quot;CONTACT&quot; = :original_CONTACT AND &quot;EMAIL&quot; = :original_EMAIL AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;DOB&quot; = :original_DOB" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;EMAIL&quot;, &quot;COUNTRY&quot;, &quot;DOB&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :CONTACT, :EMAIL, :COUNTRY, :DOB)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;EMAIL&quot; = :EMAIL, &quot;COUNTRY&quot; = :COUNTRY, &quot;DOB&quot; = :DOB WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;STUDENT_NAME&quot; = :original_STUDENT_NAME AND &quot;CONTACT&quot; = :original_CONTACT AND &quot;EMAIL&quot; = :original_EMAIL AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;DOB&quot; = :original_DOB">
                <DeleteParameters>
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="original_CONTACT" Type="Decimal" />
                    <asp:Parameter Name="original_EMAIL" Type="String" />
                    <asp:Parameter Name="original_COUNTRY" Type="String" />
                    <asp:Parameter Name="original_DOB" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="original_CONTACT" Type="Decimal" />
                    <asp:Parameter Name="original_EMAIL" Type="String" />
                    <asp:Parameter Name="original_COUNTRY" Type="String" />
                    <asp:Parameter Name="original_DOB" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="149px" style="margin-left: 358px; margin-top: 2px" Width="620px">
                <EditItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:TextBox ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    STUDENT_NAME:
                    <asp:Label ID="STUDENT_NAMELabel" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                    <br />
                    CONTACT:
                    <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
                    <br />
                    EMAIL:
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                    <br />
                    COUNTRY:
                    <asp:Label ID="COUNTRYLabel" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;CONTACT&quot;, &quot;EMAIL&quot;, &quot;COUNTRY&quot;, &quot;DOB&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :CONTACT, :EMAIL, :COUNTRY, :DOB)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;EMAIL&quot; = :EMAIL, &quot;COUNTRY&quot; = :COUNTRY, &quot;DOB&quot; = :DOB WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STUDENT_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DOB" Type="DateTime" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <br /><br /><br />
        <br />
        <br />
        <footer>
        <div class="footer-content">
            <p>&copy; 2024 - E-Learning. Created by Nischal Acharya.</p>
        </div>
    </footer>
</form>
</body>
</html>
