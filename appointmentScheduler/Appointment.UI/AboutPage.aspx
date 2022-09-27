<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutPage.aspx.cs" Inherits="Appointment.UI.AboutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>About Appointment Scheduler Application:</h3>
    <p>Appointment Scheduler application allows you to schedule your appointments and store your appointments in web so that you can access it from anywhere.</p>
    <p>It provides the following funcationally:</p>
    <ul>
        <li>
            Adding Appointments
        </li>
        <li>
            Searching your Appointments
        </li>
        <li>
            Edit and delete your Appointments
        </li>
        <li>
            Get all Appointments
        </li>
        <li>
            Get Appointments by date
        </li>
    </ul>
    <p>In order to use this application, you must register as a user.</p>
    <p>Click 
    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF3300" NavigateUrl="~/registerPage.aspx">here to register.</asp:HyperLink></p>
<p>&nbsp;</p>
</asp:Content>
