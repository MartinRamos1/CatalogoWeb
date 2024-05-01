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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                UserNegocio negocio = new UserNegocio();
                User usuario = (User)Session["user"];
                //usuario = negocio.buscarUser(usuario.Email, usuario.Pass);
                txtEmail.Enabled = false;
                if (!IsPostBack)
                {
                    txtEmail.Text = usuario.Email;
                    txtNombre.Text = usuario.Nombre;
                    txtApellido.Text = usuario.Apellido;
                }
            }
        }

        protected void btnPerfil_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNombre.Text != "" && txtApellido.Text != "")
                {
                    UserNegocio negocio = new UserNegocio();
                    User user = (User)Session["user"];
                    user.Nombre = txtNombre.Text;
                    user.Apellido = txtApellido.Text;

                    negocio.actualizarPerfil(user);
                }
            }
            catch (Exception)
            {

            }



        }
    }
}