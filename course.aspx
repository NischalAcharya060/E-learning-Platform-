<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="E_learning.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E - Learning | Course Details</title>
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
                    margin-top: 0px;
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="382px" style="margin-left: 460px; margin-top: 103px" Width="782px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                        <asp:BoundField DataField="COURSE_TITTLE" HeaderText="COURSE_TITTLE" SortExpression="COURSE_TITTLE" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;COURSE_ID&quot;, &quot;COURSE_TITTLE&quot;) VALUES (:COURSE_ID, :COURSE_TITTLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;COURSE_TITTLE&quot; = :COURSE_TITTLE WHERE &quot;COURSE_ID&quot; = :COURSE_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                        <asp:Parameter Name="COURSE_TITTLE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="COURSE_TITTLE" Type="String" />
                        <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="99px" style="margin-left: 461px; margin-top: 21px" Width="556px">
                    <EditItemTemplate>
                        COURSE_ID:
                        <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                        <br />
                        COURSE_TITTLE:
                        <asp:TextBox ID="COURSE_TITTLETextBox" runat="server" Text='<%# Bind("COURSE_TITTLE") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        COURSE_ID:
                        <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                        <br />
                        COURSE_TITTLE:
                        <asp:TextBox ID="COURSE_TITTLETextBox" runat="server" Text='<%# Bind("COURSE_TITTLE") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        COURSE_ID:
                        <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                        <br />
                        COURSE_TITTLE:
                        <asp:Label ID="COURSE_TITTLELabel" runat="server" Text='<%# Bind("COURSE_TITTLE") %>' />
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
