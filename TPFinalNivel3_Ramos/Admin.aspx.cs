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

            if (UserNegocio.isAdmin((User)Session["user"]))
            {
                ProductoNegocio negocio = new ProductoNegocio();
                Session.Add("lista", negocio.Listar());
                dgvAdmin.DataSource = Session["lista"];
                dgvAdmin.DataBind();
            }
            else { Response.Redirect("Login.aspx"); }

        }

        protected void dgvAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvAdmin.SelectedDataKey.Value.ToString();
            Response.Redirect("AgregarProducto.aspx?id=" + id);
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            List<Producto> lista = (List<Producto>)Session["lista"];
            List<Producto> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            dgvAdmin.DataSource = listaFiltrada;
            dgvAdmin.DataBind();

        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCriterio.Items.Clear();
            if (ddlCampo.SelectedValue.ToString() != "Precio")
            {
                ddlCriterio.Items.Add("Comienza con");
                ddlCriterio.Items.Add("Termina con");
                ddlCriterio.Items.Add("Contiene");
            }
            else
            {
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
                ddlCriterio.Items.Add("Igual a");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtFiltro.Text != "")
                {
                    ProductoNegocio negocio = new ProductoNegocio();
                    dgvAdmin.DataSource = negocio.Filtrar(ddlCampo.SelectedValue.ToString(), ddlCriterio.SelectedValue.ToString(), txtFiltro.Text);
                    dgvAdmin.DataBind();

                }else { Response.Redirect("Admin.aspx"); }
            }
            catch (Exception)
            {

            }
        }
    }
}