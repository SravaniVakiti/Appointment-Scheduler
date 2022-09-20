<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Appointment.UI.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 50%;background-color:lightgray;">
        <tr>
            <td  colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp; Registration:</td>
            
        </tr>
        <tr>
            <td><h3>Employee Id*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtId" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Enter employeeId"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtId" ErrorMessage="Invalid EmployeeId" ValidationExpression="[0-9]{7}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>FirstName:</h3></td>
            <td style="width: 363px;">
                <asp:TextBox ID="txtFname" runat="server" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFname" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>LastName*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtLname" runat="server" style="margin-right: 0px" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLname" ErrorMessage="Enter LastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Designation*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtDesignation" runat="server" style="margin-right: 0px" Width="230px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Enter Designation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Email*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtEmail" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Phone Number*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtPhone" runat="server" Width="230px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter PhoneNumber"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid PhoneNumber" ValidationExpression="[6789][0-9]{9}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Password*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtPwd" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password should contain minimum 8 characters atleast one Uppercase Alphabet,1 Lowercase Alphabet ,1 Number and 1 special character" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Confirm Password*:</h3></td>
            <td style="width: 363px">
                <asp:TextBox ID="txtCPwd" runat="server" Width="230px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCPwd" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ErrorMessage="Password Mismatch"></asp:CompareValidator>
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
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


