<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Appointment.UI.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 50%;background-color:lightgray;">
    <tr>
        <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman', Times, serif">&nbsp; Login:</td>
    </tr>
    <tr>
        <td><h3>Employee Email*:</h3></td>
        <td style="width: 421px">
            <asp:TextBox ID="txtEmailid" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RFVEmailid" runat="server" ControlToValidate="txtEmailid" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVEmailid" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td><h3>Password*:</h3></td>
        <td style="width: 421px">
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Incorrect password" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 421px">
            <asp:HyperLink ID="HLForgotPwd" runat="server" ForeColor="#000099" NavigateUrl="~/ForgotPassword.aspx">Forgot Password??</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 421px">
            <asp:HyperLink ID="HLRegister" runat="server" ForeColor="#FF3300" NavigateUrl="~/RegisterPage.aspx">Register as a new user?</asp:HyperLink>
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
            <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
