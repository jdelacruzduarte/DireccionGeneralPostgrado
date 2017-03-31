using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class big : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            labUsuario.Text = Session["usuario"].ToString();                   
        }

        protected void butCerrar_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}