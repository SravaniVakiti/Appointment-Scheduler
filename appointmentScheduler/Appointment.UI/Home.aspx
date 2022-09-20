<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Appointment.UI.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 30%">
    <tr>
        <td>
            <asp:Button ID="btnLogin" runat="server" BackColor="#009999" Text="Login" Width="180px" ForeColor="White" Height="38px" BorderColor="White" PostBackUrl="~/LoginPage.aspx" />
        </td>
        <td>
            <asp:Button ID="btnRegister" runat="server" BackColor="#009999" style="margin-left: 0px" Text="Register" Width="180px" BorderStyle="Groove" ForeColor="White" Height="38px" BorderColor="White" PostBackUrl="~/Register.aspx" />
        </td>
    </tr>
</table>
</asp:Content>
