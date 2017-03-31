using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;


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

        /*private bool IsvalidUser(string userName, string password)
        {
            
            DBclassDataContext context = new DBclassDataContext();
            var query = from p in context.TBusrs
                        where p.nick == userName
                        && p.pass == password
                        select p;

            if (query.Any())
            {
                return true;

            }
            else
            {
                return false;
            }  
        }*/


        protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
        {                       
                DBclassDataContext db = new DBclassDataContext();
                var query = (from p in db.TBusrs
                             where p.nick.Contains(txtUsuario.Text)// <---p.nick.Equal() --->
                             select p).FirstOrDefault();
                
                if (query == null)
                {
                    // Invalid user name
                    Response.Write("<script>window.alert('Usuario no existe');</script>");
                }
                else if (!query.pass.Equals(txtPass.Text))
                {
                    // Invalid password
                    Response.Write("<script>window.alert('Contraseña incorrecta ');</script>");
                }
                else if (query.estado != "Activo")
                {
                    // User inactive
                    Response.Write("<script>window.alert('Usuario inactivo ');</script>");
                }
                else
                {
                // Success
                    Session["usuario"] = txtUsuario.Text;                
                    Response.Redirect("BuscarEntrada.aspx");
                   Session.RemoveAll();
                    //Server.Transfer("RegistrarEntrada.aspx");          

                }
                
                
            /*
            if (IsvalidUser(txtUsuario.Text, txtPass.Text))
            {
                //User is valid
                Server.Transfer("RegistrarEntrada.aspx");
            }
            else
            {
                   Response.Write("<script>window.alert('Usuario y/o Contraseña incorrecta ');</script>");
            //    MessageBox.Show("Incorrecto, verifique sus datos", "Cecom", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }*/
        }
    }
}