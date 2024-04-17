using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class MarcaNegocio
    {
        public List<Marca> Listar()
        {
            AccesoDatos datos = new AccesoDatos();

            List<Marca> lista = new List<Marca>();
            datos.setearConsulta("Select Id, Descripcion from MARCAS");
            datos.ejecutarLectura();
            
            while(datos.lector.Read())
            {
                Marca aux = new Marca();
                aux.Id = (int)datos.lector["Id"];
                aux.Descripcion = (string)datos.lector["Descripcion"];

                lista.Add(aux);
                
            }
            
            datos.cerrarConexion();
            
            return lista;
        }
    }
}
