using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProgramacion3
{
    public partial class PagAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Carga de datos de alumnos (debes implementar esto)
            if (!IsPostBack)
            {
                CargarDatosAlumnos();
            }
        }
        protected void CargarDatosAlumnos()
        {
            // Implementa la lógica para cargar los datos de los alumnos desde tu base de datos o fuente de datos.
            // Luego, muestra los datos en la tabla HTML.
            // Asegúrate de que los datos se asignen correctamente a la tabla en tu página HTML.
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            // Maneja el evento del botón "Primero" (<<)
            // Implementa la lógica para mostrar el primer alumno.
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            // Maneja el evento del botón "Anterior" (<<)
            // Implementa la lógica para mostrar el alumno anterior.
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            // Maneja el evento del botón "Siguiente" (>>)
            // Implementa la lógica para mostrar el siguiente alumno.
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            // Maneja el evento del botón "Último" (||>)
            // Implementa la lógica para mostrar el último alumno.
        }
    }

}