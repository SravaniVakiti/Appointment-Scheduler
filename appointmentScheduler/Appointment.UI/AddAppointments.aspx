<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddAppointments.aspx.cs" Inherits="Appointment.UI.AddAppointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 44%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp;Add Appointment:</td>
           
        </tr>
        <tr>
            <td><h3>Employee Id*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtEmployeeId" runat="server" style="margin-bottom: 2px" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RevEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="invalid EmployeeId" ForeColor="Red" ValidationExpression="[0-9]{7}"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RfvEmployeeId" runat="server" ControlToValidate="txtEmployeeId" ErrorMessage="Enter Employee Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Designation*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDesignation" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDesignation" runat="server" ControlToValidate="txtDesignation" ErrorMessage="enter Designation" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Description*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDescription" runat="server" ControlToValidate="txtDescription" ErrorMessage="enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Date*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Time*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvTime" runat="server" ControlToValidate="txtTime" ErrorMessage="Enter Time" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Duration*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDuration" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RfvDuration" runat="server" ControlToValidate="txtDuration" ErrorMessage="Enter Duration" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 250px">
                <asp:Button ID="btnAdd" runat="server" Text="Add Appointment" BackColor="#000099" BorderColor="White" ForeColor="White" Height="35px" Width="180px" OnClick="btn_AddAppointment" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 250px">
                <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
