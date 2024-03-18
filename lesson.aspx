<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson.aspx.cs" Inherits="E_learning.lesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Lesson Details</title>
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
               <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="margin-left: 363px; margin-right: 0px; margin-top: 127px" Width="748px">
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
               <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="LESSON_NO" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="128px" style="margin-left: 369px; margin-top: 28px" Width="693px">
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
                       <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                       &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                       <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                       &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                       <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                       &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                       &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                   </ItemTemplate>
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
               </asp:FormView>
    </form>
</body>
</html>
