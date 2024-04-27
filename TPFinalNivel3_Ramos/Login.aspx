<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPFinalNivel3_Ramos.Login" %>

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
                                <h3 class="login-heading mb-4">Login</h3>

                                <!-- Sign In Form -->
                                <div>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="txtEmail" cssclass="form-control" placeholder="name@example.com" runat="server"></asp:TextBox>
                                        <label for="floatingInput">Email</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <asp:TextBox ID="txtPass" type="password" cssclass="form-control" placeholder="Contraseña" runat="server"></asp:TextBox>
                                        <label for="floatingPassword">Contraseña</label>
                                    </div>

                                    <div class="d-grid">
                                        <a href="Registro.aspx">
                                        <p>No tenes cuenta? Registrate</p>
                                        </a>
                                        <asp:Label ID="lblLoginError" class="mb-2 text-danger" runat="server" Text=""></asp:Label>
                                        <asp:Button ID="btnLogIn" OnClick="btnLogIn_Click" class="btn btn-lg btn-light border btn-login text-uppercase fw-bold mb-2" runat="server" Text="Iniciar sesión" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
