using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalNivel3_Ramos
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["lista"] != null)
            {
                dgvAdmin.DataSource = Session["lista"];
                dgvAdmin.DataBind(); 
            }

        }
    }
}