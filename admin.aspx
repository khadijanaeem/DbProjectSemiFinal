<%@ Page Title="" Language="C#" MasterPageFile="/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebAppEHR.admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url('../Image/hero-bg.jpg');width:100%;height:720px;background-repeat:no-repeat;background-size:cover;background-attachment:fixed;">
        <div class="container p-md-4 p-sm-4">
            <div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </div>
            <h2 class="text-center">Admin Homepage</h2>
            <div class="text-center">
                <asp:TextBox ID="txtAdminID" runat="server" placeholder="Admin ID"></asp:TextBox><br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
        </div>
    </div>
</asp:Content>
