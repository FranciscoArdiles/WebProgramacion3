using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            if (EsCredencialValida(username, password))
            {
                Response.Redirect("PaginaInicio.aspx");
            }
            else
            {
                lblMensaje.Text = "Credenciales incorrectas. Inténtalo de nuevo.";
                lblMensaje.Visible = true;

            }
        }

        private bool EsCredencialValida(string username, string password)
        {
            // Debes implementar tu lógica de autenticación aquí, como verificar contra una base de datos.
            // Este es solo un ejemplo básico.
            if (username == "usuario" && password == "contrasena")
            {
                return true;
            }
            return false;
        }

    }
}