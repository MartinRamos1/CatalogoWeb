﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="TPFinalNivel3_Ramos.Detalles" %>

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
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#" >
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#" >
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#" >
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#" >
                            <img width="60" height="60" class="rounded-2" src="<%: producto.urlImagen%>" />
                        </a>
                        <a data-fslightbox="mygalley" class="border mx-1 rounded-2 item-thumb" data-type="image" href="#" >
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
                                <div class="input-group " style="width: 170px;">
                                    <button class="btn btn-white border border-secondary px-3" type="button" id="button-addon1" data-mdb-ripple-color="dark">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <input type="text" class="form-control text-center border border-secondary" placeholder="1" aria-label="Example text with button addon" aria-describedby="button-addon1" />
                                    <button class="btn btn-white border border-secondary px-3" type="button" id="button-addon2" data-mdb-ripple-color="dark">
                                        <i class="fas fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn btn-warning shadow-0">Comprar </a>
                        <a href="#" class="btn btn-primary shadow-0"><i class="me-1 fa fa-shopping-basket"></i>Agregar al carrito </a>
                        <asp:LinkButton ID="btnFavorito" OnClick="btnFavorito_Click" runat="server" CssClass="btn btn-light border border-secondary py-2 icon-hover px-3"><i class="me-1 fa fa-heart fa-lg"></i></asp:LinkButton>
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
                                <a class="nav-link d-flex align-items-center justify-content-center w-100 active" id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1" role="tab" aria-controls="ex1-pills-1" aria-selected="true">Descripcion</a>
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
                                <div class="d-flex mb-3">
                                    <a href="#" class="me-3">
                                        <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/8.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                                    </a>
                                    <div class="info">
                                        <a href="#" class="nav-link mb-1">Rucksack Backpack Large
                                            <br />
                                            Line Mounts
                                        </a>
                                        <strong class="text-dark">$38.90</strong>
                                    </div>
                                </div>

                                <div class="d-flex mb-3">
                                    <a href="#" class="me-3">
                                        <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/9.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                                    </a>
                                    <div class="info">
                                        <a href="#" class="nav-link mb-1">Summer New Men's Denim
                                            <br />
                                            Jeans Shorts
                                        </a>
                                        <strong class="text-dark">$29.50</strong>
                                    </div>
                                </div>

                                <div class="d-flex mb-3">
                                    <a href="#" class="me-3">
                                        <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/10.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                                    </a>
                                    <div class="info">
                                        <a href="#" class="nav-link mb-1">T-shirts with multiple colors, for men and lady </a>
                                        <strong class="text-dark">$120.00</strong>
                                    </div>
                                </div>

                                <div class="d-flex">
                                    <a href="#" class="me-3">
                                        <img src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/11.webp" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
                                    </a>
                                    <div class="info">
                                        <a href="#" class="nav-link mb-1">Blazer Suit Dress Jacket for Men, Blue color </a>
                                        <strong class="text-dark">$339.90</strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer class="text-center text-lg-start text-muted bg-primary mt-3">
        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start pt-4 pb-4">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-12 col-lg-3 col-sm-12 mb-2">
                        <!-- Content -->
                        <a href="https://mdbootstrap.com/" target="_blank" class="text-white h2">MDB
                        </a>
                        <p class="mt-1 text-white">
                            © 2023 Copyright: MDBootstrap.com
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-6 col-sm-4 col-lg-2">
                        <!-- Links -->
                        <h6 class="text-uppercase text-white fw-bold mb-2">Store
                        </h6>
                        <ul class="list-unstyled mb-4">
                            <li><a class="text-white-50" href="#">About us</a></li>
                            <li><a class="text-white-50" href="#">Find store</a></li>
                            <li><a class="text-white-50" href="#">Categories</a></li>
                            <li><a class="text-white-50" href="#">Blogs</a></li>
                        </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-6 col-sm-4 col-lg-2">
                        <!-- Links -->
                        <h6 class="text-uppercase text-white fw-bold mb-2">Information
                        </h6>
                        <ul class="list-unstyled mb-4">
                            <li><a class="text-white-50" href="#">Help center</a></li>
                            <li><a class="text-white-50" href="#">Money refund</a></li>
                            <li><a class="text-white-50" href="#">Shipping info</a></li>
                            <li><a class="text-white-50" href="#">Refunds</a></li>
                        </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-6 col-sm-4 col-lg-2">
                        <!-- Links -->
                        <h6 class="text-uppercase text-white fw-bold mb-2">Support
                        </h6>
                        <ul class="list-unstyled mb-4">
                            <li><a class="text-white-50" href="#">Help center</a></li>
                            <li><a class="text-white-50" href="#">Documents</a></li>
                            <li><a class="text-white-50" href="#">Account restore</a></li>
                            <li><a class="text-white-50" href="#">My orders</a></li>
                        </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-12 col-sm-12 col-lg-3">
                        <!-- Links -->
                        <h6 class="text-uppercase text-white fw-bold mb-2">Newsletter</h6>
                        <p class="text-white">Stay in touch with latest updates about our products and offers</p>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control border" placeholder="Email" aria-label="Email" aria-describedby="button-addon2" />
                            <button class="btn btn-light border shadow-0" type="button" id="button-addon2" data-mdb-ripple-color="dark">
                                Join
                            </button>
                        </div>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <div class="">
            <div class="container">
                <div class="d-flex justify-content-between py-4 border-top">
                    <!--- payment --->
                    <div>
                        <i class="fab fa-lg fa-cc-visa text-white"></i>
                        <i class="fab fa-lg fa-cc-amex text-white"></i>
                        <i class="fab fa-lg fa-cc-mastercard text-white"></i>
                        <i class="fab fa-lg fa-cc-paypal text-white"></i>
                    </div>
                    <!--- payment --->

                    <!--- language selector --->
                    <div class="dropdown dropup">
                        <a class="dropdown-toggle text-white" href="#" id="Dropdown" role="button" data-mdb-toggle="dropdown" aria-expanded="false"><i class="flag-united-kingdom flag m-0 me-1"></i>English </a>

                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="Dropdown">
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-united-kingdom flag"></i>English <i class="fa fa-check text-success ms-2"></i></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-poland flag"></i>Polski</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-china flag"></i>中文</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-japan flag"></i>日本語</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-germany flag"></i>Deutsch</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-france flag"></i>Français</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-spain flag"></i>Español</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-russia flag"></i>Русский</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#"><i class="flag-portugal flag"></i>Português</a>
                            </li>
                        </ul>
                    </div>
                    <!--- language selector --->
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer -->

</asp:Content>


