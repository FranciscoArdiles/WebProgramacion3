using MySql.Data.MySqlClient;
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
    public partial class PagInicio : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
           


        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            ManConex mconex = new ManConex();
            string cadConex = System.Configuration.ConfigurationManager.ConnectionStrings["ConStrMySQL"].ConnectionString;
            mconex.cadenaConexion = cadConex;

            using (MySqlConnection connection = mconex.getConexion())
            {

                // Consulta SQL para obtener la contraseña encriptada del usuario.
                string sql = "SELECT password FROM usuarios WHERE login = @NombreUsuario";
                MySqlCommand command = new MySqlCommand(sql, connection);
                command.Parameters.AddWithValue("@NombreUsuario", username);

                string storedHashedPassword = command.ExecuteScalar() as string;

                if (!string.IsNullOrEmpty(storedHashedPassword))
                {
                    // Encripta la contraseña ingresada por el usuario y compara con la contraseña almacenada.
                    string hashedPassword = HashPassword(password);

                    if (storedHashedPassword == hashedPassword)
                    {
                        Response.Redirect("PagAlumnos.aspx");
                    }
                    else
                    {
                        lblMensaje.Text = "Credenciales incorrectas. Inténtalo de nuevo.";
                        lblMensaje.Visible = true;
                    }
                }
                else
                {
                    lblMensaje.Text = "El usuario no existe. Verifica el nombre de usuario.";
                    lblMensaje.Visible = true;
                }
            }
        }

        private bool EsCredencialValida(string username, string password)
        {

            if (username == "usuario" && password == "contrasena")
            {
                return true;
            }
            return false;
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