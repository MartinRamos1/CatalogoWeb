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
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page is AgregarProducto && !UserNegocio.isAdmin((User)Session["user"])){
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}