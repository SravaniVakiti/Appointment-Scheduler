<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Appointment.UI.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" style="width: 50%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp;Forgot Password </td>
            
        </tr>
        <tr>
            <td><h3>Employee Email</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>New Password</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVPwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password should contain minimum 8 characters atleast one Uppercase Alphabet,1 Lowercase Alphabet ,1 Number and 1 special character" ValidationExpression="[a-zA-Z0-9$@#!%*?&amp;]{8,}" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td><h3>Confirm Password</h3></td>
            <td style="width: 382px">
                <asp:TextBox ID="txtCPwd" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVCPwd" runat="server" ControlToValidate="txtCPwd" ErrorMessage="Enter Confirm Pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CVCPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                <br />
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
                <asp:Label ID="lb1Msg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>

        
    </table>
</asp:Content>
