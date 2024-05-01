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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            UserNegocio negocio = new UserNegocio();
            User nuevoUser = new User();
            try
            {
                nuevoUser.Email = txtEmail.Text;
                nuevoUser.Pass = txtPass.Text;
                if (negocio.noExisteEmail(nuevoUser) && (nuevoUser.Pass == txtPassConfirm.Text))
                {
                    negocio.SignUp(nuevoUser);
                    Session.Add("user", nuevoUser);
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception)
            {

                throw;
            }




        }
    }
}