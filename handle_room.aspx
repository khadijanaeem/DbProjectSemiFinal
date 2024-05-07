<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="handle_room.aspx.cs" Inherits="WebAppEHR.admin.handle_room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Insert New Room</h2>
        <asp:TextBox ID="txtRoomNumber" runat="server" placeholder="Room Number" /><br />
        <asp:TextBox ID="txtPatientID" runat="server" placeholder="Patient ID" /><br />
        <asp:TextBox ID="txtStaffID" runat="server" placeholder="Staff ID" /><br />
        <asp:TextBox ID="txtAdmissionDate" runat="server" placeholder="Admission Date (YYYY-MM-DD)" /><br />
        <asp:Button ID="btnInsertRoom" runat="server" Text="Insert" OnClick="btnInsertRoom_Click" CssClass="btn" />
    </div>

    <div class="container">
        <h2>Handle Rooms</h2>
        <asp:GridView ID="GridViewRooms" runat="server" AutoGenerateColumns="false" OnRowEditing="GridViewRooms_RowEditing" OnRowCancelingEdit="GridViewRooms_RowCancelingEdit"  OnRowDeleting="GridViewRooms_RowDeleting" DataKeyNames="room_num">
            <Columns>
                <asp:BoundField DataField="room_num" HeaderText="Room Number" ReadOnly="true" />
                <asp:BoundField DataField="patient_id" HeaderText="Patient ID" />
                <asp:BoundField DataField="staff_id" HeaderText="Staff ID" />
                <asp:BoundField DataField="admission_date" HeaderText="Admission Date" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
