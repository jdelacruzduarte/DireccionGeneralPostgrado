using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class BuscarUsuario : System.Web.UI.Page
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
    }
}