<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="TPFinalNivel3_Ramos.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container m-4">
            <h3 class="login-heading mb-4">Favoritos</h3>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

            <%foreach (dominio.Producto prod in ListaFav)
                {%>

            <div class="col">
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-6 text-center">
                            <img src="<%: prod.urlImagen%>"
                                class="img-fluid rounded-start"
                                alt="<%: prod.Nombre%>">
                        </div>
                        <div class="col-md-6">
                            <div class="card-body">
                                <h5 class="card-title"><%: prod.Nombre%>
                                </h5>
                                <p class="card-text fw-bold fs-5">
                                    $<%: prod.Precio.ToString("0.0")%>
                                </p>
                                <p class="card-text">
                                    <a href="#" class="btn btn-lg btn-light border text-uppercase fw-bold mb-2 fs-5">Comprar</a>
                                    <a href="Detalles.aspx?id=<%: prod.Id%>" class="btn btn-outline-info border text-uppercase fw-bold">Ver más</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%}%>
        </div>
    </div>

</asp:Content>
