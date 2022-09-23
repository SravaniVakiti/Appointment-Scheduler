<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GetAppointmentByDate.aspx.cs" Inherits="Appointment.UI.GetAppointmentByDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 44%;background-color:lightgray;">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'" >&nbsp; Search Appointment:</td>
        </tr>
        <tr>
            <td style="height: 32px"><h3>Enter Appointment Date*:</h3></td>
            <td style="height: 32px; width: 262px;">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="200px" Height="32px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Mandatory To Enter Date " ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 262px">
                <asp:Button ID="btnSearch" runat="server" Text="Search" BackColor="#000099" BorderColor="White" ForeColor="White" OnClick="btn_Search" Width="180px" style="margin-bottom: 6px" Height="40px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 262px">
                <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" id="ODSGetAppointmentByDate">
                <asp:GridView ID="GVGetAppointmentByDate" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ODSGetAppointmentByDate">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
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
                <asp:ObjectDataSource ID="ODSGetAppointmentByDate" runat="server" DataObjectTypeName="Appointment.Entities.Appointments" SelectMethod="GetAppointmentByDate" TypeName="Appointment.BusinessLayer.AppointmentService" UpdateMethod="EditAppointment">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtDate" Name="Date" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            
        </tr>
    </table>
</asp:Content>
