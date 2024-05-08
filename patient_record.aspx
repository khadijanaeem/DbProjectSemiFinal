<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="patient_record.aspx.cs"
    Inherits="WebAppEHR.admin.patient_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Add any additional head content here if needed -->
    <link href="assets/css/style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Patient Records</h2>
        <div class="row">
            <div class="col-md-12">
                <!-- Display room data -->
                <h3>Rooms</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewRooms" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
                </div>
            </div>
            <div class="col-md-12">
                <!-- Display appointment data -->
                <h3>Appointments</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewAppointments" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
                </div>
            </div>
            <div class="col-md-12">
                <!-- Display billing data -->
                <h3>Billing</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewBilling" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
                </div>
            </div>
            <div class="col-md-12">
                <!-- Display EHR data -->
                <h3>EHR</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewEHR" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
