using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using ComponenteNegocio;
using ComponenteDatos;

using System.Data;
using System.Data.SqlClient;

namespace CarritoCompras
{
    public partial class Contact : Page
    {
        DataTable dtb;
        DataTable carrito = new DataTable();
        string html = "";

        public void CargarDetalle()
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
                
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}