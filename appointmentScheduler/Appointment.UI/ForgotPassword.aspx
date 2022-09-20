<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Appointment.UI.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 50%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp;Forgot Password </td>
            
        </tr>
        <tr>
            <td><h3>Employee Email</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>New Password</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password should containminimum 8 characters atleast one Uppercase Alphabet,1 Lowercase Alphabet ,1 Number and 1 special character" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Confirm Password</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPwd" ErrorMessage="Enter Confirm Pwd"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 382px">
                <asp:Button ID="btnReset" runat="server" BackColor="#000099" ForeColor="White" OnClick="btnReset_Click" Text="Reset Password" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 382px">
                <asp:Label ID="lb1Msg" runat="server"></asp:Label>
            </td>
        </tr>

        
    </table>
</asp:Content>
