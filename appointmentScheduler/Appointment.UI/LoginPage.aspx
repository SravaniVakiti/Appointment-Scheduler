<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Appointment.UI.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 50%;background-color:lightgray;">
    <tr>
        <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman', Times, serif">&nbsp; Login:</td>
    </tr>
    <tr>
        <td><h3>Employee Email*:</h3></td>
        <td style="width: 421px">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td><h3>Password*:</h3></td>
        <td style="width: 421px">
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Incorrect password" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 421px">
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#000099" NavigateUrl="~/ForgotPassword.aspx">Forgot Password??</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 421px">
            <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#FF3300" NavigateUrl="~/Register.aspx">Register as a new user?</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 421px">
            <asp:Button ID="btnLogin" runat="server" BackColor="#000099" ForeColor="White" OnClick="btnLogin_Click" Text="Log in" Width="140px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 421px">
            <asp:Label ID="lb1Msg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
