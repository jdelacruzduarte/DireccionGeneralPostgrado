using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DireccionGeneralPostGrado
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ContadorEntrada();            
        }
        public void ContadorEntrada()
        {
            //------------------------------------------------------------------//
            //              Metodo para contar el codigo de entrada            //
            //----------------------------------------------------------------//
            DBclassDataContext db = new DBclassDataContext();
            var query = (from p in db.TBents
                         select p).Count();
            txtEntrada.Text = "000" + Convert.ToString(query + 1); //Realiza la busqueda en la base de datos y le suma 1
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
            txtFecha.Text ="";
            txtOficio.Text = "";
            DropProcedencia.SelectedIndex = 0;
            txtDescripcion.Text = "";
            DropEstado.SelectedIndex = 0;
         }

        protected void butAceptar_Click(object sender, EventArgs e)
        {
            string usuario = Session["usuario"].ToString();
            DBclassDataContext db = new DBclassDataContext();
            TBent entrada = new TBent();

            // se realiza una busqueda para guardar el id del usuario y cargarlo
            var query = (from p in db.TBusrs
                         where p.nick.Equals(usuario)
                         select p).FirstOrDefault();

            if (txtOficio.Text == "" | txtDescripcion.Text == "")
            {
                Response.Write("<script>window.alert('Hay campos obligatorio, favor verificar');</script>");
            }
            else
            {
                entrada.idEntrada = Int32.Parse(txtEntrada.Text.Trim());
                entrada.idUsuario = query.idUsuario;
                entrada.numOficio = Int32.Parse(txtOficio.Text.Trim());
                entrada.lugOrigen = DropProcedencia.Text;
                entrada.fechaEntrada = DateTime.Parse(txtFecha.Text);
                entrada.descripcion = txtDescripcion.Text;
                //entrada.documentoRecibido = UploadArchivo.;
                entrada.estado = "Entrada";

                //----------------------------------------------------------------------------------
               
                    string str = UploadArchivo.FileName;
                    UploadArchivo.SaveAs(Server.MapPath(".") + "//Archivos//" + str);
                    string path = "//Archivos//" + str.ToString();

                    entrada.documentoRecibido = path;
                
                //----------------------------------------------------------------------------------

                /* PENDIENTE--------------------------------------------
                if (IsPostBack)
                {
                    Boolean fileOK = false;
                    String path = Server.MapPath("~/UploadedImages/");
                    if (UploadArchivo.HasFile)
                    {
                        String fileExtension =
                            System.IO.Path.GetExtension(UploadArchivo.FileName).ToLower();
                        String[] allowedExtensions =
                            {".gif", ".png", ".jpeg", ".jpg", ".pdf"};
                        for (int i = 0; i < allowedExtensions.Length; i++)
                        {
                            if (fileExtension == allowedExtensions[i])
                            {
                                fileOK = true;
                            }
                        }
                    }

                    if (fileOK)
                    {
                        try
                        {
                            UploadArchivo.PostedFile.SaveAs(path + UploadArchivo.FileName);
                            Label1.Text = "File uploaded!";
                        }
                        catch (Exception ex)
                        {
                            Label1.Text = "File could not be uploaded.";
                        }
                    }
                    else
                    {
                        Label1.Text = "Cannot accept files of this type.";
                    }
                }  
                */
                db.TBents.InsertOnSubmit(entrada);
                db.SubmitChanges();
                Response.Write("<script>window.alert('Registro guardado con exito');</script>");
                LimpiarCampos();
     //           ContadorEntrada();
                Response.Redirect("RegistrarEntrada.aspx");
                
            }            
        }

        protected void txtOficio_TextChanged(object sender, EventArgs e)
        {

        }
    }
}