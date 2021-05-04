using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ComponenteEntidad;
using ComponenteDatos;

namespace ComponenteNegocio
{
    public class CategoriasCN
    {
        CategoriaDA cdao = new CategoriaDA();

        public List<Categorias> ListarCategorias()
        {
            return cdao.Listar();
        }

        public string InsertarCategorias(Categorias cat)
        {
            return cdao.InsertarCategorias(cat);
        }

        public string ActualizarCategorias(Categorias cat) {
            return cdao.ActualizarCategorias(cat);
        }

    }
}
