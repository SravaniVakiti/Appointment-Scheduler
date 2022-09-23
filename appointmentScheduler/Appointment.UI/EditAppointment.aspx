<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditAppointment.aspx.cs" Inherits="Appointment.UI.EditAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 44%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp; Edit Appointment:</td>
           
        </tr>
        <tr>
            <td><h3>Employee Id:</h3></td>
            <td>
                <asp:TextBox ID="txtEmployeeId" runat="server" style="margin-bottom: 0px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="Enter Employee Id" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REVEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="Invalid EmployeeId" ForeColor="Red" ValidationExpression="[0-9]{7}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Date:</h3></td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Time:</h3></td>
            <td>
                <asp:TextBox ID="txtTime" runat="server" Width="200px" TextMode="Time"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvTime" runat="server" ControlToValidate="txtTime" ErrorMessage="Enter Time" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Duration:</h3></td>
            <td>
                <asp:TextBox ID="txtDuration" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDuration" runat="server" ControlToValidate="txtDuration" ErrorMessage="Enter Duration" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="btn_EditAppointment" BackColor="#000099" BorderColor="White" ForeColor="White" Height="40px" Width="125px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
