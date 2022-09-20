<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="Appointment.UI.MenuPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LblMsg" runat="server" ForeColor="#FF3300"></asp:Label>
<br />
<asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList4" ShowExpandCollapse="False">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <Nodes>
            <asp:TreeNode Text="Appointments" Value="Appointments">
                <asp:TreeNode NavigateUrl="~/AddAppointments.aspx" Text="Add Appointments" Value="Add Appointments"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/SearchAppointment.aspx" Text="Search Appointments" Value="Search Appointments"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/EditAppointment.aspx" Text="Edit Appointment" Value="Edit Appointment"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/AllAppointments.aspx" Text="Get All Appointment" Value="Get Appointment by Date"></asp:TreeNode>
                <asp:TreeNode Text="Upcoming Appointments" Value="Upcoming Appointments" NavigateUrl="~/UpcomingAppointments.aspx"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/GetAppointmentByDate.aspx" Text="Get Appointment By Date" Value="New Node"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Users" Value="Users">
                <asp:TreeNode NavigateUrl="~/AllUsers.aspx" Text="All Users" Value="All Users"></asp:TreeNode>
            </asp:TreeNode>
        </Nodes>
        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
</asp:Content>
