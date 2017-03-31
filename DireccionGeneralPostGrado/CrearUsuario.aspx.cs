using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContadorCodigo();
        }

        public void ContadorCodigo()
        {
            //------------------------------------------------------------------//
            //              Metodo para contar el codigo                       //
            //----------------------------------------------------------------//

            DBclassDataContext db = new DBclassDataContext();
            var query = (from p in db.TBusrs
                         select p).Count();
            txtCodigo.Text = "000" + Convert.ToString(query + 1); //Realiza la busqueda en la base de datos y le suma 1
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
        public void LimpiarCampos()
        {
             //------------------------------------------------------------------//
            //              Metodo para limpiar los campos                      //
           //------------------------------------------------------------------//
            
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNick.Text = "";
            txtPass.Text = "";
            txtRepass.Text = "";
            dropEstado.SelectedIndex = 0;
            dropPerfil.SelectedIndex = 0;
        }

        protected void butAceptar_Click(object sender, EventArgs e)
        {
            DBclassDataContext db = new DBclassDataContext();
             //-------------------------------------------------------------------//
            //  Se realiza una busqueda de usuario para realizar la validacion   //
           //-------------------------------------------------------------------//
            var query = (from p in db.TBusrs
                         where p.nick.Equals(txtNick.Text)
                         select p).FirstOrDefault();

            if (txtNombre.Text =="" | txtApellido.Text =="" | txtNick.Text =="" | txtPass.Text=="" | txtRepass.Text =="")
            {
                Response.Write("<script>window.alert('Todos los campos son obligatorio, favor verificar');</script>");
            }

            else if (txtPass.Text != txtRepass.Text)
            {
                Response.Write("<script>window.alert('La contraseña no son iguales');</script>");
                LimpiarCampos();
            }
            else if (txtPass.Text.Length <= 5)
            {
                Response.Write("<script>window.alert('La contraseña tiene que ser mayor de 5 digitos');</script>");
                LimpiarCampos();
            }
            else if (query == null)
            {
                TBusr usuario = new TBusr();
                usuario.idUsuario = Int32.Parse(txtCodigo.Text);
                usuario.nombre = txtNombre.Text;
                usuario.apellido = txtApellido.Text;
                usuario.perfil = dropPerfil.Text;
                usuario.nick = txtNick.Text.Trim();
                usuario.pass = txtPass.Text;
                usuario.estado = dropEstado.Text;

                db.TBusrs.InsertOnSubmit(usuario);
                db.SubmitChanges();

                Response.Write("<script>window.alert('Registro guardado con exito');</script>");
                LimpiarCampos();
                Response.Redirect("CrearUsuario.aspx");
                ContadorCodigo();
            }
            else
            {
                Response.Write("<script>window.alert('Usuario ya existe!!!!!');</script>");
                LimpiarCampos();
            }
        }

        protected void butCancelar_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        protected void txtRepass_TextChanged(object sender, EventArgs e)
        {

        }
    }
}