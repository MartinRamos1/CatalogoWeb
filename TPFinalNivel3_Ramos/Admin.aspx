<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPFinalNivel3_Ramos.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Panel de control</h1>
    <a href="AgregarProducto.aspx" Class="btn btn-lg btn-light border btn-login text-uppercase fw-bold m-2">Nuevo</a>
    <asp:GridView ID="dgvAdmin" cssClass="table table-striped" DataKeyNames="Id" OnSelectedIndexChanged="dgvAdmin_SelectedIndexChanged" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
            <asp:BoundField HeaderText="Marca" DataField="Marca" />
            <asp:BoundField HeaderText="Categoria" DataField="Categoria" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:CommandField ShowSelectButton="true" SelectText="Modificar"/>
        </Columns>
         
    </asp:GridView>


</asp:Content>
