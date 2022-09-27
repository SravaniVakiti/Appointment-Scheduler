<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="Appointment.UI.registerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 50%;background-color:lightgray;">
        <tr>
            <td  colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp; Registration:</td>
            
        </tr>
        <tr>
            <td><h3>Employee Id*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtEmployeeId" runat="server" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="Enter employeeId" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="Invalid EmployeeId" ValidationExpression="[0-9]{7}" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>FirstName*:</h3></td>
            <td style="width: 363px;">
                <asp:TextBox ID="txtFname" runat="server" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVFname" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter FirstName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>LastName*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtLname" runat="server" style="margin-right: 0px" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter LastName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Designation*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtDesignation" runat="server" style="margin-right: 0px" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVDesignation" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Enter Designation" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Email*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Phone Number*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtPhone" runat="server" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter PhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid PhoneNumber" ValidationExpression="[6789][0-9]{9}" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Password*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtPwd" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password should contain minimum 8 characters atleast one Uppercase Alphabet,1 Lowercase Alphabet ,1 Number and 1 special character" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Confirm Password*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtCPwd" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVCPwd" runat="server" ControlToValidate="txtCPwd" ErrorMessage="Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CVCPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 363px">
                <asp:Button ID="btnRegister" runat="server" BackColor="#000099" ForeColor="White" Text="Register" Width="130px" OnClick="Register_Button" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 363px">
                <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
