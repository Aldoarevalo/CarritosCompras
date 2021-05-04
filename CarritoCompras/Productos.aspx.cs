using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using ComponenteNegocio;
using ComponenteEntidad;

namespace CarritoCompras
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        private void Ultimo()
        {
            ProductosCN cnper = new ProductosCN();
            List<Productos> per = cnper.UltimoEmp();
            foreach (Productos ma in per)
            {
                int codigo = 0;
                codigo = Convert.ToInt32(ma.Codproducto);
                codigo = codigo + 1;
                ma.Codproducto = codigo.ToString();                
                txtCodigo.Text = ma.Codproducto;
            }
        }

        private void limpiar() {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtPrecio.Text = "";
            txtCantidad.Text = "";            
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            limpiar();
            Ultimo();
            txtNombre.Enabled = true;
            txtPrecio.Enabled = true;
            txtCantidad.Enabled = true;
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            ComponenteNegocio.ProductosCN oMatriculaCN = new ComponenteNegocio.ProductosCN();
            ComponenteEntidad.Productos oMatriculaCE = new ComponenteEntidad.Productos();
            oMatriculaCE.Codproducto = txtCodigo.Text;
            oMatriculaCE.Desproducto = txtNombre.Text;
            oMatriculaCE.Codcategoria = cbCategoria.SelectedValue.ToString();
            oMatriculaCE.Preproducto = decimal.Parse(txtPrecio.Text);
            if (!string.IsNullOrEmpty(FileUpload1.FileName))
            {
                FileUpload1.SaveAs(Server.MapPath("/Imagenes/") + FileUpload1.FileName);
                
            }
            oMatriculaCE.Canproducto = int.Parse(txtCantidad.Text);
            oMatriculaCE.Imagen = FileUpload1.FileName;
            oMatriculaCN.InsertarProductos(oMatriculaCE);
            limpiar();

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {
                ComponenteNegocio.ProductosCN oMatriculaCN = new ComponenteNegocio.ProductosCN();
                ComponenteEntidad.Productos oMatriculaCE = new ComponenteEntidad.Productos();
                oMatriculaCE.Codproducto = Convert.ToString(row.Cells[0].Text);
                oMatriculaCN.EliminarProductos(oMatriculaCE);
            }

        }

    }
}