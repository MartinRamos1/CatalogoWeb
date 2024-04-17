using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class CategoriaNegocio
    {
        public List<Categoria> Listar()
        {   
            AccesoDatos datos = new AccesoDatos();
            List<Categoria> lista = new List<Categoria>();

           datos.setearConsulta("Select Id, Descripcion from CATEGORIAS");
           datos.ejecutarLectura();
   
            while (datos.lector.Read())
            {
                Categoria aux = new Categoria();
                aux.Id = (int)datos.lector["Id"];
                aux.Descripcion = (string)datos.lector["Descripcion"];

                lista.Add(aux);
            }
            datos.cerrarConexion();
            return lista;

        }
    }
}
