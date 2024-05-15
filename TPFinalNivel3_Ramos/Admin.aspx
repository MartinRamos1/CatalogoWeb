<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TPFinalNivel3_Ramos.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="m-2">Panel de control</h1>

    <a href="AgregarProducto.aspx" class="btn btn-lg btn-light border btn-login text-uppercase fw-bold m-2">Nuevo</a>
    <div class="row">
        <div class="col-2 m-2">
            <asp:TextBox ID="txtFiltro" OnTextChanged="txtFiltro_TextChanged" CssClass="form-control" runat="server" placeholder="Filtrar" />

            <asp:CheckBox CssClass="form-check-input" ID="checkFiltro" AutoPostBack="true" Text="Avanzado" runat="server" />
        </div>

    </div>
    <%if (checkFiltro.Checked)
        {%>

    <div class="row m-1">

        <div class="col-2">
            <div class="mb-3">
                <asp:Label Text="Campo" runat="server" />
                <asp:DropDownList ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" runat="server" AutoPostBack="true" CssClass="form-control">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Marca" />
                    <asp:ListItem Text="Categoría" />
                    <asp:ListItem Text="Codigo" />
                    <asp:ListItem Text="Precio" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="col-2">
            <div class="mb-3">
                <asp:Label Text="Criterio" runat="server" />
                <asp:DropDownList ID="ddlCriterio" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>

    </div>

    <asp:Button ID="btnBuscar" OnClick="btnBuscar_Click" CssClass="btn btn-primary m-2" Text="Buscar" runat="server" />
    <%}%>


    <asp:GridView ID="dgvAdmin" CssClass="table table-striped" DataKeyNames="Id" OnSelectedIndexChanged="dgvAdmin_SelectedIndexChanged" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
            <asp:BoundField HeaderText="Marca" DataField="Marca" />
            <asp:BoundField HeaderText="Categoria" DataField="Categoria" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:CommandField ShowSelectButton="true" SelectText="Modificar" />
        </Columns>
    </asp:GridView>


</asp:Content>
