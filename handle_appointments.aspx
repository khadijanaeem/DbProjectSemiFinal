<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="handle_appointments.aspx.cs" Inherits="WebAppEHR.admin.handle_appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Handle Appointments</h2>
        <asp:GridView ID="GridViewAppointments" runat="server" AutoGenerateColumns="false" OnRowDeleting="GridViewAppointments_RowDeleting" DataKeyNames="patient_id">
            <Columns>
                <asp:BoundField DataField="patient_id" HeaderText="Patient ID" ReadOnly="true" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="app_date" HeaderText="Appointment Date" />
                <asp:BoundField DataField="dep1name" HeaderText="Department Name" />
                <asp:BoundField DataField="docname" HeaderText="Doctor Name" />
                <asp:BoundField DataField="m1" HeaderText="Message" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>