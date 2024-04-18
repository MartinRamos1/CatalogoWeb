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
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                ProductoNegocio negocio = new ProductoNegocio();
                producto = negocio.buscarPorId(id);
            }
            else { Response.Redirect("Default.aspx", false); }
                
        }
    }
}