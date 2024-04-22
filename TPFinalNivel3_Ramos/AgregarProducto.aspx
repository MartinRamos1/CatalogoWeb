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

                    <label>Título</label>
                    <asp:TextBox ID="txtTitulo" CssClass="form-control" runat="server"></asp:TextBox>

                    <label>Cantidad de canciones</label>
                    <asp:TextBox ID="txtCantidadCanciones" CssClass="form-control" runat="server"></asp:TextBox>

                    <asp:Label ID="lblUrlImagen" CssClass="form-label" runat="server" Text="Imagen"></asp:Label>
                    <asp:TextBox ID="txtUrlImagen" CssClass="form-control" runat="server" placeholder="https://"></asp:TextBox>

                    <asp:Label ID="lblFecha" runat="server" Text="Fecha de lanzamiento"></asp:Label>
                    <asp:TextBox ID="Fecha" CssClass="form-control" runat="server" placeholder="dd/mm/aaaa"></asp:TextBox>
                </div>

                <asp:Label ID="lblEstilo" runat="server" CssClass="form-label" Text="Estilo"></asp:Label>
                <asp:DropDownList ID="ddlEstilo" CssClass="btn btn-light dropdown-toggle border" runat="server"></asp:DropDownList>

                <asp:Label ID="lblEdicion" runat="server" CssClass="form-label" Text="Edicion"></asp:Label>
                <asp:DropDownList ID="ddlEdicion" CssClass="btn btn-light dropdown-toggle border" runat="server"></asp:DropDownList>

            </div>

            <div class="m-3">
                <asp:Button ID="btnAgregar" runat="server" CssClass="btn btn-lg btn-light border btn-login text-uppercase fw-bold mb-2" Text="Agregar"/>
                <a href="Default.aspx" class ="btn btn-lg btn-outline-danger border text-uppercase fw-bold mb-2">Cancelar</a>
                <%if (btnAgregar.Text == "Aceptar")
                    {%>
                <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-lg btn-danger border text-uppercase fw-bold mb-2" Text="Eliminar" />
                <%}%>
                
            </div>
        </div>

    </div>

</asp:Content>
