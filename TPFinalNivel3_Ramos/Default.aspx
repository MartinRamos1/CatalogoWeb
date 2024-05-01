<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalNivel3_Ramos.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        
    </style>


    <div class="container m-4">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

                <%foreach (dominio.Producto prod in Lista)
                    {%>

                <div class="col">
                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-6 text-center">
                                <img  src="<%: prod.urlImagen%>"
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
                                        <asp:Button ID="btnCarrito" CssClass="btn btn-warning mb-2" runat="server" Text="Agregar al carrito" />
                                        <a href="Detalles.aspx?id=<%: prod.Id%>" Class="btn btn-outline-primary">Ver más</a>
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
