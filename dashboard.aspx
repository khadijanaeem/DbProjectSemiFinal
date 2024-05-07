<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs"
    Inherits="WebAppEHR.admin.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Add any additional head content here if needed -->
   
  <link href="assets/css/style.css" rel="stylesheet"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Hospital Dashboard</h2>
        <div class="row">
            <div class="col-md-12">
                <!-- Display appointment data -->
                <h3>Appointments</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewAppointments" runat="server" AutoGenerateColumns="true"  CssClass="gridview"></asp:GridView>
                </div>
                <!-- Button to handle appointments -->
                <asp:Button ID="btnAppointments" runat="server" Text="Handle Appointments" OnClick="btnAppointments_Click" CssClass="btn" />
            </div>
            <div class="col-md-12">
                <!-- Display patient data -->
                <h3>Patients</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewPatients" runat="server" AutoGenerateColumns="true"  CssClass="gridview"></asp:GridView>
                </div>
                <!-- Button to handle patients -->
                <asp:Button ID="btnPatients" runat="server" Text="Handle Patients" OnClick="btnPatients_Click" CssClass="btn" />
            </div>
            <div class="col-md-12">
                <!-- Display room data -->
                <h3>Rooms</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewRooms" runat="server" AutoGenerateColumns="true"  CssClass="gridview"></asp:GridView>
                </div>
                <!-- Button to handle rooms -->
                <asp:Button ID="btnRooms" runat="server" Text="Handle Rooms" OnClick="btnRooms_Click" CssClass="btn" />
            </div>
            <div class="col-md-12">
                <!-- Display Staff data -->
                <h3>Staff</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewStaff" runat="server" AutoGenerateColumns="true" CssClass="gridview"></asp:GridView>
                </div>
                <!-- Button to handle staff -->
                <asp:Button ID="btnStaff" runat="server" Text="Handle Staff" OnClick="btnStaff_Click" CssClass="btn" />
            </div>
            <div class="col-md-12">
                <!-- Display Doctors data -->
                <h3>Doctors</h3>
                <div class="table-container">
                    <asp:GridView ID="GridViewdoctors" runat="server" AutoGenerateColumns="true"  CssClass="gridview"></asp:GridView>
                </div>
                <!-- Button to handle doctors -->
                <asp:Button ID="btnDoctors" runat="server" Text="Handle Doctors" OnClick="btnDoctors_Click" CssClass="btn" />
            </div>
        </div>
        <!-- Add more sections for other data if needed -->
    </div>
</asp:Content>
