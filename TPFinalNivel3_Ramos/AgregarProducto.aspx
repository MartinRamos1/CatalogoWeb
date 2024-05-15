<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarProducto.aspx.cs" Inherits="TPFinalNivel3_Ramos.AgregarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-3">
        <div class="col-4">
            <div class="row m-lg-2">
                <div>
                    <h1 class="fs-3">Nuevo</h1>
                    <asp:TextBox ID="txtId" CssClass="form-control mt-4" runat="server" placeholder="ID"></asp:TextBox>

                    <asp:TextBox ID="txtNombre" CssClass="form-control mt-4" runat="server" placeholder="Nombre"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />

                    <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server" placeholder="Código"></asp:TextBox>

                    <asp:TextBox ID="txtPrecio" CssClass="form-control mt-4" runat="server" placeholder="Precio"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="El precio es requerido" ControlToValidate="txtPrecio" runat="server" />

                    <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server" placeholder="Descripción"></asp:TextBox>

                    <asp:TextBox ID="txtImagen" CssClass="form-control mt-4" runat="server" placeholder="Imagen"></asp:TextBox>

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
