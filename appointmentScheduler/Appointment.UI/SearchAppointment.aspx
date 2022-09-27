<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchAppointment.aspx.cs" Inherits="Appointment.UI.SearchAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" style="width: 44%;background-color:lightgray;"">
        <tr>
            <td colspan="2" style="color:white;font-size:30px;background-color:darkblue;font-family:'Times New Roman'">&nbsp;Search Appointment:</td>
        </tr>
        <tr>
            <td style="width: 279px"><h3>Enter Employee Id*:</h3></td>
            <td style="width: 428px">
                <asp:TextBox ID="txtId" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RFVEmpId" runat="server" ControlToValidate="txtId" ErrorMessage="Enter Employee Id" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="REVEmpId" runat="server" ControlToValidate="txtId" ErrorMessage="Invalid EmployeeId" ForeColor="Red" ValidationExpression="[0-9]{7}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 279px; height: 39px;"></td>
            <td style="height: 39px; width: 428px">
                <asp:Button ID="btnsearch" runat="server" OnClick="btn_Search" Text="Search" BackColor="#000099" ForeColor="White" Height="35px" Width="140px" BorderColor="White" />
            </td>
        </tr>
        <tr>
            <td style="width: 279px">&nbsp;</td>
            <td style="width: 428px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GVSearchAppointment" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ODSSearchAppointment">
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
                <asp:ObjectDataSource ID="ODSSearchAppointment" runat="server" DataObjectTypeName="Appointment.Entities.Appointments" SelectMethod="GetAppointmentByEmpId" TypeName="Appointment.BusinessLayer.AppointmentService" UpdateMethod="EditAppointment">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtId" Name="EmployeeId" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
            
        </tr>
        </table>

</asp:Content>
