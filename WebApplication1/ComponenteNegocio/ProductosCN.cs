using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ComponenteEntidad;
using ComponenteDatos;

namespace ComponenteNegocio
{
    public class ProductosCN
    {
        ProductosDA cdao = new ProductosDA();

        public string InsertarProductos(Productos pro)
        {
            return cdao.InsertarProductos(pro);
        }

        public string ActualizarProductos(Productos pro)
        {
            return cdao.ActualizarProductos(pro);
        }

        public string EliminarProductos(Productos pro)
        {
            return cdao.EliminarProductos(pro);
        }

        public List<Productos> ListarTodos()
        {
            return cdao.ListarTodos();
        }
        
        public Productos ListarporCategorias(string id)
        {
            return cdao.ListarporCategoria(id);
        }

        public List<Productos> UltimoEmp()
        {
            ProductosDA cd = new ProductosDA();
            return cd.UltimoCod();
        }

    }
}
