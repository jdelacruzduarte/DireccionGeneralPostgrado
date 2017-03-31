using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Page_PreInit(object sender, EventArgs e)
        {
            //-------------------------------------------------------------------//
            //      Realiza la validacion para la seleccion la MasterPage       //
            //-----------------------------------------------------------------//
            string usuario = Session["usuario"].ToString();
            DBclassDataContext db = new DBclassDataContext();
            var query = (from p in db.TBusrs
                         where p.nick.Equals(usuario)
                         select p).FirstOrDefault();
            if (query.perfil == "Administrador")
            {
                MasterPageFile = "~/big.Master";
            }
            else
            {
                MasterPageFile = "~/Operador.Master";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            string valor =  row.Cells[2].Text;
          
            Session.Add("numero", valor);
            //Server.Transfer("UpdateEntrada.aspx");

            Response.Redirect("UpdateEntrada.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource2";

            
            DBclassDataContext db = new DBclassDataContext();

            var query = from p in db.TBents
                        where p.numOficio.Equals(txtBuscar.Text)
                        select p.idEntrada;  
            
            GridView1.DataSource = query;
            GridView1.DataBind();


        }
    }
}