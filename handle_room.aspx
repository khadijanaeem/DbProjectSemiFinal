<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="handle_room.aspx.cs" Inherits="WebAppEHR.admin.handle_room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Handle Rooms</h2>
       
        <asp:GridView ID="GridViewRooms" runat="server" AutoGenerateColumns="false" OnRowDeleting="GridViewRooms_RowDeleting" DataKeyNames="room_num">
            <Columns>
                <asp:BoundField DataField="room_num" HeaderText="Room Number" />
                <asp:BoundField DataField="patient_id" HeaderText="Patient ID" />
                <asp:BoundField DataField="staff_id" HeaderText="Staff ID" />
                <asp:BoundField DataField="admission_date" HeaderText="Admission Date" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>