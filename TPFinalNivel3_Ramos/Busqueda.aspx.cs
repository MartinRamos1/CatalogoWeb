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
    public partial class Busqueda : System.Web.UI.Page
    {
        public List<Producto> ListaFiltrada { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["listaFiltrada"] != null)
            {
                ListaFiltrada = (List<Producto>)Session["listaFiltrada"];
            }
            else { Response.Redirect("Default.aspx"); }
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            List<Producto> Lista = (List<Producto>)Session["lista"];
            List<Producto> listaFiltrada = Lista.FindAll(x => x.Nombre.ToUpper().Contains(txtBuscar.Text.ToUpper()));
            Session.Add("listaFiltrada", listaFiltrada);
            Response.Redirect("Busqueda.aspx");
        }
    }
}