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
    public partial class PagAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CargarDatosAlumnos();
            }
        }
        protected void CargarDatosAlumnos()
        {
            string pSQL = "select * from trabajo.alumnos";

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
                ViewState.Add("tabla", dt);
                ViewState.Add("NROFILA", 0);

                actualizarControles(0);
            }
            else
                ViewState["NROFILA"] = null;
        }
        protected void actualizarControles(int index = 0)
        {
            DataTable dt = (DataTable)ViewState["tabla"];

            int i = 0;
            int ini = (int)ViewState["NROFILA"];

            switch (index)
            {
                case 0:
                    i = 0;
                    break;

                case -1:
                    if (ini > 0) i = ini - 1;
                    break;

                case 1:
                    if (ini < dt.Rows.Count - 1) i = ini + 1;
                    break;

                default:
                    i = dt.Rows.Count - 1;
                    break;
            }

            lblNombre.Text = dt.Rows[i]["NOMBRE"].ToString();
            lblDni.Text = dt.Rows[i]["DNI"].ToString();
            lblEstado.Text = dt.Rows[i]["ESTADO"].ToString();

            ViewState["NROFILA"] = i;
        }
        protected void btnFirst_Click(object sender, EventArgs e)
        {
            actualizarControles(0);
        }
        protected void btnPrev_Click(object sender, EventArgs e)
        {
            actualizarControles(-1);
        }
        protected void btnNext_Click(object sender, EventArgs e)
        {
            actualizarControles(+1);
        }
        protected void btnLast_Click(object sender, EventArgs e)
        {
            actualizarControles(5000);
        }
    }

}