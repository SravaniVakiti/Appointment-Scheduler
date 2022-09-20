<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddAppointments.aspx.cs" Inherits="Appointment.UI.AddAppointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 44%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp;Add Appointment:</td>
           
        </tr>
        <tr>
            <td><h3>Employee Id*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtId" runat="server" style="margin-bottom: 2px" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtId" ErrorMessage="Enter Employee Id"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Designation*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDesignation" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDesignation" ErrorMessage="enter Designation"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Description*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDescription" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescription" ErrorMessage="enter Description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Date*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDate" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Time*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time" OnTextChanged="txtTime_TextChanged" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTime" ErrorMessage="Enter Time"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><h3>Appointment Duration*:</h3></td>
            <td style="width: 250px">
                <asp:TextBox ID="txtDuration" runat="server" OnTextChanged="txtDuration_TextChanged" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDuration" ErrorMessage="Enter Duration"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 250px">
                <asp:Button ID="Button1" runat="server" Text="Add Appointment" BackColor="#000099" BorderColor="White" ForeColor="White" OnClick="btn_AddAppointment" Height="35px" Width="180px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 250px">
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
