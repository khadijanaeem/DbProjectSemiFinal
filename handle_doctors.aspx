<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="handle_doctors.aspx.cs" Inherits="WebAppEHR.admin.handle_doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Insert New Doctor</h2>
        <asp:TextBox ID="txtDoctorName" runat="server" placeholder="Doctor Name" /><br />
        <asp:TextBox ID="txtDepartmentID" runat="server" placeholder="Department ID" /><br />
        <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number" /><br />
        <asp:Button ID="btnInsertDoctor" runat="server" Text="Insert" OnClick="btnInsertDoctor_Click" CssClass="btn" />
    </div>

    <div class="container">
        <h2>Handle Doctors</h2>
        <asp:GridView ID="GridViewDoctors" runat="server" AutoGenerateColumns="false" OnRowEditing="GridViewDoctors_RowEditing" OnRowCancelingEdit="GridViewDoctors_RowCancelingEdit"  OnRowDeleting="GridViewDoctors_RowDeleting" DataKeyNames="DocID">
            <Columns>
                <asp:BoundField DataField="DocID" HeaderText="Doctor ID" ReadOnly="true" />
                <asp:BoundField DataField="Docname" HeaderText="Doctor Name" />
                <asp:BoundField DataField="DepartID" HeaderText="Department ID" />
                <asp:BoundField DataField="phoneNum" HeaderText="Phone Number" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
