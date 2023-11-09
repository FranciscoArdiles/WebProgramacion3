using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebProgramacion3.Conexion;

namespace WebProgramacion3
{
    public partial class PagEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatosProfesores();
            }
        }

        private void CargarDatosProfesores()
        {
            string pSQL = "select * from trabajo.profesores";

            ManConex mconex = new ManConex();
            string cadConex = System.Configuration.ConfigurationManager.ConnectionStrings["ConStrMySQL"].ConnectionString;

            if (cadConex.Equals(""))
            {
                return;
            }

            mconex.cadenaConexion = cadConex;

            DataTable dt = mconex.ejecutarSelect(pSQL) as DataTable;

            if (dt != null && dt.Rows.Count > 0 && dt.Rows[0][0] != DBNull.Value)
            {
                ViewState.Add("tablaTot", dt);
                gvProfesores.DataSource = dt;
                gvProfesores.DataBind();
            }
            Session.Add("tabla", dt);
            DataTable vdt = (DataTable)ViewState["tablaTot"];
        }

        protected void gvProfesores_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string nId = e.CommandArgument.ToString();

            if (e.CommandName.Equals("Editando"))
            {
                // recupero de viewstate los datos guardados obtenidos en cargarGrilla 
                DataTable dt = (DataTable)ViewState["tablaTot"];

                // transformo el datatable en dataview
                DataView dv = dt.AsDataView();
                dv.RowFilter = "id = " + nId;

                divDgv.Visible = false;
                divControl.Visible = true;

                txtId.Text = nId;
                txtApellido.Text = dv[0].Row[2].ToString();
                txtNombre.Text = dv[0].Row[1].ToString();


            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            string Apellido = txtApellido.Text;
            string Nombre = txtNombre.Text;
            int ID = Convert.ToInt32(txtId.Text);

            string pSQL = "UPDATE trabajo.profesores SET APELLIDO = '" + Apellido + "', NOMBRE = '" + Nombre + "' WHERE ID = " + ID + ";";

            ManConex mconex = new ManConex();
            string cadConex = System.Configuration.ConfigurationManager.ConnectionStrings["ConStrMySQL"].ConnectionString;
            mconex.cadenaConexion = cadConex;

            MySqlConnection con = null;

            try
            {
                con = mconex.getConexion();
                MySqlCommand cmd = new MySqlCommand(pSQL, con);

                //con.Open();
                cmd.ExecuteNonQuery();


                CargarDatosProfesores();
                divDgv.Visible = true;
                divControl.Visible = false;

            }
            catch (Exception ex)
            {
                // Manejo de errores: muestra el mensaje de error o realiza alguna acción adecuada
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            divDgv.Visible = true;
            divControl.Visible = false;

        }
    }
}