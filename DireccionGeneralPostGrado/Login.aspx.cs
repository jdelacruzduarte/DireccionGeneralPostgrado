using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //calendario.Visible = true;
        }

        protected void calendario_SelectionChanged(object sender, EventArgs e)
        {
            /*txtCalendario.Text = calendario.SelectedDate.ToString("dd-MM-yyyy");
            calendario.Visible = false; */
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //calendario.Visible = true;
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            //calendario.Visible = true;
        }

        protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
        {
            
            Server.Transfer("RegistrarEntrada.aspx");
        }
    }
}