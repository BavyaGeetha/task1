<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
   
    <style type="text/css">
        .auto-style1 {
            width: 419px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            height: 81px;
        }
        .auto-style4 {
            width: 1106px;
            height: 40px;
        }
        .auto-style5 {
            margin-right: 31px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 419px;
            height: 30px;
        }
    </style>
    
   
</head>
<body>
  <div class="auto-style4" style="background-image: url('asset/images(1).jfif'); background-repeat: no-repeat; background-attachment: fixed;">
 
   <center> <form id="form1" runat="server">
       <center><h1>AROOPA PRIVATE LIMITED
           </h1></center>
       <fieldset> <legend>EMPLOYEE SALARY MANAGEMENT</legend>
             <div>
            <table>
                <tr>
                    <td>Employee Name:</td>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmpName" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvEmpName" runat="server" ControlToValidate="txtEmpName" ErrorMessage="enter the employee name" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Employee Id:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtEmpId" runat="server" CssClass="auto-style2" />
                        <asp:RequiredFieldValidator ID="rfvEmpId" runat="server" ControlToValidate="txtEmpId" ErrorMessage="enter the employeeid" />
                    </td>
                </tr>
                <tr>
                    <td>Department/Team:</td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="Dept" runat="server" CssClass="auto-style2" Width="129px">
                            <asp:ListItem Text="IT" Value="IT" />
                            <asp:ListItem Text="Software Developer" Value="IT" />
                            <asp:ListItem Text="Testing" Value="IT" />
                            <asp:ListItem Text="Marketing" Value="Marketing" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDept" runat="server" ControlToValidate="Dept" ErrorMessage="enter the deparment" />
                    </td>
                </tr>
                <tr>
                    <td>Sex:</td>
                    <td class="auto-style1">
                        <asp:RadioButtonList ID="Sex" runat="server" CssClass="auto-style2" OnSelectedIndexChanged="Sex_SelectedIndexChanged" Width="159px">
                            <asp:ListItem Text="Male" Value="Male" />
                            <asp:ListItem Text="Female" Value="Female" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="rfSex" runat="server" ControlToValidate="Sex" ErrorMessage="enter the sex" />
                    </td>
                </tr>
                <tr>
                    <td>Marital Status:</td>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="MaritalStatus" runat="server" OnSelectedIndexChanged="MaritalStatus_SelectedIndexChanged" Height="16px" Width="127px">
                            <asp:ListItem Text="Single" Value="Single" />
                            <asp:ListItem Text="Married" Value="Married" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvMaritalStatus" runat="server" ControlToValidate="MaritalStatus" ErrorMessage="enter the martial status" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Salary:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtSalary" runat="server" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvSalary" runat="server" ControlToValidate="txtSalary" ErrorMessage="enter the salary" />
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style2" Width="119px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="enter the address" />
                    </td>
                </tr>
                 <td class="auto-style3">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#006600" ForeColor="White" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" BackColor="#3399FF" ForeColor="White" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" BackColor="#FF3300" ForeColor="White" />
                    </td>
            </table>
        </div>
           <div>
    <asp:GridView ID="grdEmployee" runat="server"
      OnRowEditing="grdEmployee_RowEditing" OnRowDeleting="grdEmployee_RowDeleting"
       CssClass="auto-style5" DataKeyNames="Employee_ID" OnRowCancelingEdit="grdEmployee_RowCancelingEdit" OnRowUpdating="grdEmployee_RowUpdating" Width="878px">
      <Columns>
        <asp:BoundField DataField="Employee_Name" HeaderText="Employee Name" />
        <asp:BoundField DataField="Employee_ID" HeaderText="Employee Id"  />
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
          
           </fieldset>    
    </form></center>
    <marquee>SALARY DETAILS, AROOPA TECHNOLOGY</marquee>
      </div>
</body>
</html>
