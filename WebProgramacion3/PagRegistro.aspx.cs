using MySql.Data.MySqlClient;
using Org.BouncyCastle.Crmf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProgramacion3.Conexion;

namespace WebProgramacion3
{
    public partial class PagRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNombre.Text.Trim()) || string.IsNullOrEmpty(txtPassword.Text.Trim()) || string.IsNullOrEmpty(txtConfirmPassword.Text.Trim()) || string.IsNullOrEmpty(txtUsername.Text.Trim()))
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Todos los campos deben estar completos";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }



            if (txtPassword.Text.Trim() == txtConfirmPassword.Text.Trim())
            {
                string Nombre = txtNombre.Text.Trim();  
                string Username = txtUsername.Text.Trim();
                string Password = HashPassword(txtPassword.Text.Trim());
                string Estado = "V";
                DateTime Fecha = DateTime.Now;
                string fechaFormateada = Fecha.ToString("yyyy-MM-dd HH:mm:ss");

                string pSQL = "INSERT INTO usuarios (nombre, estado, login, fyh, password) values ('" + Nombre +"', '" + Estado +"', '" + Username + "', '" + fechaFormateada + "', '" + Password +"');";

                ManConex mconex = new ManConex();
                string cadConex = System.Configuration.ConfigurationManager.ConnectionStrings["ConStrMySQL"].ConnectionString;
                mconex.cadenaConexion = cadConex;

                MySqlConnection con = null;


                try
                {
                    con = mconex.getConexion();
                    MySqlCommand cmd = new MySqlCommand(pSQL, con);

                    cmd.ExecuteNonQuery();
                    Response.Write("El Usuario ha sido creado con éxito");
                    Response.Redirect("PagInicio.aspx");
                }
                catch (Exception ex)
                {
                    lblMensaje.ForeColor = System.Drawing.Color.Red;
                    lblMensaje.Text = "Error: " + ex.Message;
                    //Response.Write("Error: " + ex.Message);
                }
                finally
                {
                    if (con != null)
                    {
                        con.Close();
                    }
                }
            }


        }
        public static string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hash = sha256.ComputeHash(bytes);
                return BitConverter.ToString(hash).Replace("-", "").ToLower();
            }
        }
    }
}