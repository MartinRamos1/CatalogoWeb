<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="TPFinalNivel3_Ramos.AgregarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-3">
        <div class="col-4">
            <div class="row m-lg-2">
                <div>

                    <asp:Label ID="lblId" CssClass="form-label" runat="server" Text="ID"></asp:Label>
                    <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Nombre</label>
                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Código</label>
                    <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Precio</label>
                    <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Descripción</label>
                    <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Imagen</label>
                    <asp:TextBox ID="txtImagen" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <label class="mt-3">Marca</label>
                <asp:DropDownList ID="ddlMarca" CssClass="btn btn-light dropdown-toggle border m-lg-2" runat="server"></asp:DropDownList>

                <label>Categoría</label>
                <asp:DropDownList ID="ddlCategoria" CssClass="btn btn-light dropdown-toggle border m-lg-2" runat="server"></asp:DropDownList>

            </div>

            <div class="m-3">
                <asp:Button OnClick="btnAgregar_Click" ID="btnAgregar" runat="server" CssClass="btn btn-lg btn-light border btn-login text-uppercase fw-bold mb-2" Text="Agregar" />
                <a href="Default.aspx" class="btn btn-lg btn-outline-danger border text-uppercase fw-bold mb-2">Cancelar</a>
                <%if (btnAgregar.Text == "Aceptar")
                    {%>
                <asp:Button OnClick="btnEliminar_Click" ID="btnEliminar" runat="server" CssClass="btn btn-lg btn-danger border text-uppercase fw-bold mb-2" Text="Eliminar" />
                <%}%>
            </div>
        </div>

    </div>

</asp:Content>
