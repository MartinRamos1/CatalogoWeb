<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="TPFinalNivel3_Ramos.Detalles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- content -->
    <section class="py-5">
        <div class="container">
            <div class="row gx-5">
                <aside class="col-lg-6">
                    <div class="border rounded-4 mb-3 d-flex justify-content-center">
                        <a data-fslightbox="mygalley" class="rounded-4" target="_blank" data-type="image" href="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/detail1/big.webp">
                            <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit" src="<%: producto.urlImagen%>" />
                        </a>
                    </div>
                    <div class="d-flex justify-content-center mb-3">
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#">
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#">
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#">
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#">
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#">
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                    </div>
                    <!-- thumbs-wrap.// -->
                    <!-- gallery-wrap .end// -->
                </aside>
                <main class="col-lg-6">
                    <div class="ps-lg-3">
                        <h4 class="title text-dark"><%: producto.Nombre%>
                            <br />
                            <%: producto.Marca.Descripcion%>
                        </h4>
                        <div class="d-flex flex-row my-3">
                            <div class="text-warning mb-1 me-2">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <span class="ms-1">4.5
                                </span>
                            </div>
                            <span class="text-muted"><i class="fas fa-shopping-basket fa-sm mx-1"></i>154 orders</span>
                            <span class="text-success ms-2">In stock</span>
                        </div>

                        <div class="mb-3">
                            <span class="h5">$<%: producto.Precio.ToString("0.00")%></span>
                        </div>

                        <p>
                            <%: producto.Descripcion%>
                        </p>

                        <div class="row">
                            <dt class="col-3">Categoría</dt>
                            <dd class="col-9"><%: producto.Categoria.Descripcion%></dd>

                            <dt class="col-3">Marca</dt>
                            <dd class="col-9"><%: producto.Marca.Descripcion%></dd>
                        </div>

                        <hr />

                        <div class="row mb-4">
                            <!-- col.// -->
                            <div class="col-md-4 col-6 ">
                                <label class="mb-2 d-block">Cantidad</label>
                                <asp:DropDownList ID="ddlCantidad" CssClass="btn btn-light dropdown-toggle border " runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <a href="#" class="btn btn-lg btn-light border text-uppercase fw-bold fs-6">Comprar </a>
                        <%-- <a href="#" class="btn btn-primary shadow-0"><i class="me-1 fa fa-shopping-basket"></i>Agregar al carrito </a>--%>
                        <asp:LinkButton ID="btnFavorito" OnClick="btnFavorito_Click" runat="server" CssClass="btn btn-light border border-secondary py-2 px-3"><i class="me-1 fa fa-heart fa-lg"></i></asp:LinkButton>
                    </div>
                </main>
            </div>
        </div>
    </section>
    <!-- content -->

    <section class="bg-light border-top py-4">
        <div class="container">
            <div class="row gx-4">
                <div class="col-lg-8 mb-4">
                    <div class="border rounded-2 px-3 py-2 bg-white">
                        <!-- Pills navs -->
                        <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                            <li class="nav-item d-flex" role="presentation">
                                <a class="nav-link d-flex align-items-center justify-content-center w-100 active text-uppercase fw-bold btn btn-dark" id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1" role="tab" aria-controls="ex1-pills-1" aria-selected="true">Descripcion</a>
                            </li>
                        </ul>
                        <!-- Pills navs -->

                        <!-- Pills content -->
                        <div class="tab-content" id="ex1-content">
                            <div class="tab-pane fade show active" id="ex1-pills-1" role="tabpanel" aria-labelledby="ex1-tab-1">
                                <p>
                                    <%: producto.Descripcion%>
                                </p>

                                <table class="table border mt-3 mb-2">
                                    <tr>
                                        <th class="py-2">Nombre</th>
                                        <td class="py-2"><%: producto.Nombre%></td>
                                    </tr>
                                    <tr>
                                        <th class="py-2">Marca</th>
                                        <td class="py-2"><%: producto.Marca%></td>
                                    </tr>
                                    <tr>
                                        <th class="py-2">Categoría</th>
                                        <td class="py-2"><%: producto.Categoria%></td>
                                    </tr>
                                    <tr>
                                        <th class="py-2">Código de producto</th>
                                        <td class="py-2"><%: producto.Codigo%></td>
                                    </tr>
                                    <tr>
                                        <th class="py-2">En stock</th>
                                        <td class="py-2 text-success fw-bold">SÍ</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="tab-pane fade mb-2" id="ex1-pills-2" role="tabpanel" aria-labelledby="ex1-tab-2">
                                Tab content or sample information now
                                <br />
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
              aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
              officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
              nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                            </div>
                            <div class="tab-pane fade mb-2" id="ex1-pills-3" role="tabpanel" aria-labelledby="ex1-tab-3">
                                Another tab content or sample information now
                                <br />
                                Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
              commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
              mollit anim id est laborum.
                            </div>
                            <div class="tab-pane fade mb-2" id="ex1-pills-4" role="tabpanel" aria-labelledby="ex1-tab-4">
                                Some other tab content or sample information now
                                <br />
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
              aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
              officia deserunt mollit anim id est laborum.
                            </div>
                        </div>
                        <!-- Pills content -->
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="px-0 border rounded-2 shadow-0">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Te puede interesar</h5>

                                <%if (ListaInteres != null)
                                    {%>
                                <%foreach (dominio.Producto prod in ListaInteres)
                                    {%>
                                <div class="d-flex mb-3">
                                    <a href="Detalles.aspx?id=<%: prod.Id%>" class="me-3">
                                        <img src="<%: prod.urlImagen%>" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                                    </a>
                                    <div class="info">
                                        <a href="Detalles.aspx?id=<%: prod.Id%>" class="nav-link mb-1">
                                            <%: prod.Nombre%>
                                        </a>
                                        <strong class="text-dark">$<%: prod.Precio.ToString("0")%></strong>
                                    </div>
                                </div>
                                <%}%>

                                <%}%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
</asp:Content>


