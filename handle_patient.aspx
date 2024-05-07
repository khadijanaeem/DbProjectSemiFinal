<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="handle_patient.aspx.cs" Inherits="WebAppEHR.admin.handle_patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
        <h2>Insert New Patient</h2>
        <asp:TextBox ID="txtPatientName" runat="server" placeholder="Patient Name" /><br />
        <asp:TextBox ID="txtAge" runat="server" placeholder="Age" /><br />
        <asp:TextBox ID="txtGender" runat="server" placeholder="Gender" /><br />
        <asp:TextBox ID="txtAddress" runat="server" placeholder="Address" /><br />
        <asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number" /><br />
        <asp:TextBox ID="txtDiagnosis" runat="server" placeholder="Diagnosis" /><br />
        <asp:TextBox ID="txtPharmacyID" runat="server" placeholder="Pharmacy ID" /><br />
        <asp:TextBox ID="txtPrescription" runat="server" placeholder="Prescription" /><br />
        <asp:Button ID="btnInsertPatient" runat="server" Text="Insert" OnClick="btnInsertPatient_Click" CssClass="btn" />
    </div>

    <div class="container">
        <h2>Handle Patients</h2>
        <asp:GridView ID="GridViewPatients" runat="server" AutoGenerateColumns="true" OnRowDeleting="GridViewPatients_RowDeleting">
           
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDeleting="GridViewPatients_RowDeleting" DataKeyNames="PatientID">
   
</asp:GridView>
    </div>
</asp:Content>