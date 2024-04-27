using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TPFinalNivel3_Ramos
{
    public partial class Detalles : System.Web.UI.Page
    {
        public Producto producto { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {

                int id = int.Parse(Request.QueryString["id"]);
                ProductoNegocio negocio = new ProductoNegocio();
                producto = negocio.buscarPorId(id);

                if (Session["user"] != null)
                {
                    Favorito fav = new Favorito();
                    FavoritoNegocio fnegocio = new FavoritoNegocio();
                    fav.IdUser = int.Parse(Session["userId"].ToString());
                    fav.IdProducto = int.Parse(Request.QueryString["id"]);
                    if (fnegocio.esFavorito(fav))
                    {
                        btnFavorito.CssClass = "btn btn-light border border-secondary py-2 icon-hover px-3 text-danger";
                    }
                }

            }

        }

        protected void btnFavorito_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] != null)
                {
                    Favorito fav = new Favorito();
                    FavoritoNegocio negocio = new FavoritoNegocio();
                    fav.IdUser = int.Parse(Session["userId"].ToString());
                    fav.IdProducto = int.Parse(Request.QueryString["id"]);
                    if (!negocio.esFavorito(fav))
                    {
                        negocio.agregarFavorito(fav);
                        btnFavorito.CssClass = "btn btn-light border border-secondary py-2 icon-hover px-3 text-danger";
                    }
                    else
                    {
                        negocio.eliminarFavorito(fav);
                        btnFavorito.CssClass = "btn btn-light border border-secondary py-2 icon-hover px-3";
                    }
                } else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception)
            {

            }

        }
    }
}