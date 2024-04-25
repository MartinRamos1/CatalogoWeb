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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            dgvAdmin.DataSource = negocio.Listar();
            dgvAdmin.DataBind();
        }

        protected void dgvAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvAdmin.SelectedDataKey.Value.ToString();
            Response.Redirect("AgregarProducto.aspx?id=" + id);
        }
    }
}