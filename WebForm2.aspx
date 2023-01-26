<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="task.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 337px;
        }
        .auto-style2 {
            margin-left: 103px;
        }
        .auto-style3 {
            margin-left: 55px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
      <center>  <h1>EMPLOYEE SALARY DETAILS</h1></center>
       <div>
    <asp:GridView ID="grdEmployee" runat="server"
      OnRowEditing="grdEmployee_RowEditing" OnRowDeleting="grdEmployee_RowDeleting"
       CssClass="auto-style5" DataKeyNames="Employee_ID" OnRowCancelingEdit="grdEmployee_RowCancelingEdit" OnRowUpdating="grdEmployee_RowUpdating" Width="878px" OnSelectedIndexChanged="grdEmployee_SelectedIndexChanged">
      <Columns>
        <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name" />
        <asp:BoundField DataField="Employee_ID" HeaderText="Employee Id" ReadOnly="True" />
        <asp:BoundField DataField="Department" HeaderText="Department/Team" />
        <asp:BoundField DataField="Sex" HeaderText="Sex" />
        <asp:BoundField DataField="Marital_Status" HeaderText="Marital Status" />
        <asp:BoundField DataField="Salary" HeaderText="Salary" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
          <asp:CommandField ButtonType="Button" ShowEditButton="True" />
          <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
          <ControlStyle BackColor="#FF3300" ForeColor="White" />
          </asp:CommandField>
      </Columns>
    </asp:GridView>
  </div>
        <asp:Button ID="Button1" runat="server" BackColor="#FF3300" CssClass="auto-style2" ForeColor="White" OnClick="Button1_Click" Text="CANCEL" Width="121px" />
        <asp:Button ID="Button2" runat="server" BackColor="#339966" CssClass="auto-style3" ForeColor="White" OnClick="Button2_Click" Text="BACK" Width="132px" />
    </form>
</body>
</html>
