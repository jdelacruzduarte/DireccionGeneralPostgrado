using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class UpdateEntrada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBclassDataContext db = new DBclassDataContext();
            string valor = (string)(Session["numero"]);
            txtEntrada.Text = valor;
            
            var query = (from p in db.TBents
                         where p.idEntrada.Equals(txtEntrada.Text)
                         select p).FirstOrDefault();
            txtFecha.Text = Convert.ToString(query.fechaEntrada);// se realiza una conversion de entero a string
            txtOficio.Text = Convert.ToString(query.numOficio);// se realiza una conversion de entero a string
            txtDescripcion.Text = query.descripcion;            
            dropProcedencia.Items.Insert(0, query.lugOrigen);
            
            
            txtDescripcion.Text = query.descripcion;
            dropEstado.Items.Insert(0, query.estado);
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
        protected void butCancelar_Click(object sender, EventArgs e)
        {
            ImgFechaButon.Enabled = true;
          //  txtEntrada.Enabled = true; //la entrada no se puede modificar
            txtDescripcion.Enabled = true;
            txtFecha.Enabled = true;
            txtOficio.Enabled = true;
            dropEstado.Enabled = true;
            dropProcedencia.Enabled = true;
            butGuardar.Enabled = true;
        }
    }
}