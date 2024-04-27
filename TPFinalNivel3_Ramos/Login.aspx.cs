﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace TPFinalNivel3_Ramos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            try
            {
                User login = new User();
                UserNegocio negocio = new UserNegocio();
                login.Email = txtEmail.Text;
                login.Pass = txtPass.Text;
                if (negocio.Login(login))
                {
                Session.Add("user", login);
                Response.Redirect("Default.aspx");
                }
            }
            catch (Exception)
            {
                
            }
            

        }
    }
}