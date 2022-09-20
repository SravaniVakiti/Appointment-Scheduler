<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpcomingAppointments.aspx.cs" Inherits="Appointment.UI.UpcomingAppointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>&nbsp;</h2>
    <table align="center" style="width: 50%">
        <tr>
            <td colspan="2" style="color:darkblue;font-size:40px;font-family:'Times New Roman'">&nbsp;Upcoming Appointments:</td>
        </tr>
        <tr>
            <td colspan="2"><asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetUpcomingAppointments" TypeName="Appointment.BusinessLayer.AppointmentService"></asp:ObjectDataSource>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="EmployeeId" HeaderText="EmployeeId" SortExpression="EmployeeId" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
            
        </tr>
    </table>
    </asp:Content>
