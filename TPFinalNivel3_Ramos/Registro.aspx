<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPFinalNivel3_Ramos.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-xl-9 mx-auto">
                <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">

                    <div class="card-body p-4 p-sm-5">
                        <h5 class="card-title text-center mb-5 fw-light fs-2">Registro</h5>
                        <div>
                            <div class="form-floating mb-3">
                                <asp:TextBox ID="txtEmail" type="email" class="form-control" placeholder="name@example.com" runat="server"></asp:TextBox>
                                <label>Email</label>
                                <asp:RequiredFieldValidator ErrorMessage="El email es requerido" ControlToValidate="txtEmail" runat="server" />
                            </div>

                            <hr>

                            <div class="form-floating mb-3">
                                <asp:TextBox ID="txtPass" type="password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                                <label>Contraseña</label>
                                <asp:RequiredFieldValidator ErrorMessage="La contraseña es requerida" ControlToValidate="txtPass" runat="server" />
                            </div>

                            <div class="form-floating mb-3">
                                <asp:TextBox ID="txtPassConfirm" type="password" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
                                <label>Confirmar Contraseña</label>
                                <asp:RequiredFieldValidator ErrorMessage="Confirmar la contraseña" ControlToValidate="txtPassConfirm" runat="server" />
                            </div>

                            <div class="d-grid mb-2">
                                <asp:Label ID="lblErrorSignUp" CssClass="mb-1 text-danger" runat="server" Text=""></asp:Label>
                                <asp:Button ID="btnSignUp" OnClick="btnSignUp_Click" class="btn btn-lg btn-light border btn-login fw-bold text-uppercase" runat="server" Text="Registrarte" />
                            </div>

                            <a class="d-block text-center" href="Login.aspx">
                                <p class="text-muted">Ya estas registrado? Inicia sesión</p>
                            </a>

                            <hr class="my-4">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
