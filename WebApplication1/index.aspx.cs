using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        string connectionSting = @"server=127.0.0.1; database=testing; Uid=root; pwd=1234;";
        public MySqlConnection sqlCon;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Butsave_Click(object sender, EventArgs e)
        {
            try
            {
                using (MySqlConnection sqlCon = new MySqlConnection(connectionSting))
                {

                    sqlCon.Open();
                    MySqlCommand sqlCmd = new MySqlCommand("ProductAddorEdit", sqlCon);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("_productid", Convert.ToInt32(HfProductid.Value == "" ? "0" : HfProductid.Value));
                    sqlCmd.Parameters.AddWithValue("_product", textproducto.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("_price", Convert.ToDecimal(txtprecio.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_count", Convert.ToInt32(txtcount.Text.Trim()));
                    sqlCmd.Parameters.AddWithValue("_description", txtdescripcion.Text.Trim());
                    sqlCmd.ExecuteNonQuery();

                    Labelsuccesme.Text = "Grabado con Éxito";
                }
            }
            catch (Exception ex)
            {

                Labelerror.Text = ex.Message;
            }

        }
    }
}