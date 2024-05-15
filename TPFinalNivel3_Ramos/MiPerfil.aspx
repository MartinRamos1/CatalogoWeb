<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="TPFinalNivel3_Ramos.MiPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid ps-md-0">
        <div class="row g-0">
            <%--    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>--%>
            <div class="col-md-8 col-lg-6">
                <div class="login d-flex align-items-center py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9 col-lg-8 mx-auto">
                                <h3 class="login-heading mb-4">Tu perfil</h3>

                                <!-- Sign In Form -->
                                <div>
                                    <a href="Favoritos.aspx" class ="btn btn-lg btn-login text-uppercase fw-bold mb-2 text-danger"> Mis favoritos</a>
                                    <asp:Label ID="admin" CssClass="text-danger fs-5" runat="server" Text=""></asp:Label>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label>Correo electrónico</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" required="true"></asp:TextBox>
                                        <label>Nombre</label>
                                    </div>

                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" required="true"></asp:TextBox>
                                        <label>Apellido</label>
                                    </div>

                                    <%--<div class="form-floating mb-3">
                                        <asp:TextBox ID="txtUrlImagen" CssClass="form-control" runat="server"></asp:TextBox>
                                        <label>Foto de perfil</label>
                                        <asp:Image ID="imgPerfil" runat="server" />
                                    </div>--%>

                                    <%--div class="d-grid">--%>
                                    <asp:Button ID="btnPerfil" OnClick="btnPerfil_Click" class="btn btn-lg btn-light border btn-login text-uppercase fw-bold mb-2" runat="server" Text="Guardar" />
                                    <a href="Default.aspx" class ="btn btn-lg btn-outline-danger btn-login text-uppercase fw-bold mb-2">Cancelar</a>
                                    <%--</%--div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
