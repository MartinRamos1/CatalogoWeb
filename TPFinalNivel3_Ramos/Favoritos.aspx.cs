using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace TPFinalNivel3_Ramos
{
    public partial class Favoritos : System.Web.UI.Page
    {
        public List<Producto> ListaFav { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                User user = (User)Session["user"];

                FavoritoNegocio negocio = new FavoritoNegocio();
                ListaFav = negocio.Listar(user);
                Session.Add("ListaFav", ListaFav);

            }
            else { Response.Redirect("Login.aspx"); }
        }

    }
}