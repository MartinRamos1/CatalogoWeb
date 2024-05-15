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
                txtEmail.Enabled = false;

                if (!IsPostBack)
                {
                    // COMPLETAR CAMPOS CON USER EN SESIÓN
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
                // VALIDACIONES
                Page.Validate();
                if (!Page.IsValid)
                    return;

                // VALIDAR TEXTO VACIO
                if (txtNombre.Text != "" && txtApellido.Text != "")
                {
                    // UPDATE EN DB
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