<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPFinalNivel3_Ramos.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>tabla</h1>
    <asp:GridView ID="dgvAdmin" cssClass="table table-striped" runat="server"></asp:GridView>

</asp:Content>
