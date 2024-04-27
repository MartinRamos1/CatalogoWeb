using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class FavoritoNegocio
    {
        public void agregarFavorito(Favorito fav)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("insert into FAVORITOS values (@idUser, @idProducto)");
                datos.setearParametros("idUser", fav.IdUser);
                datos.setearParametros("idProducto", fav.IdProducto);
                datos.ejecutarAccion();
            }
            catch (Exception)
            {

                throw;
            }
            finally { datos.cerrarConexion(); }

        }

        public bool esFavorito(Favorito fav)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("Select Id, IdUser, IdArticulo from Favoritos Where idUser = @idUser AND idArticulo = @idProducto");
                datos.setearParametros("idUser", fav.IdUser);
                datos.setearParametros("IdProducto", fav.IdProducto);
                datos.ejecutarLectura();
                while (datos.lector.Read())
                {
                    fav.Id = (int)datos.lector["id"];
                    return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }


        }
        public void eliminarFavorito(Favorito fav)
        {
            AccesoDatos datos = new AccesoDatos();
            datos.setearConsulta("Delete FROM Favoritos Where idUser = @idUser AND idArticulo = @idProducto");
            datos.setearParametros("idUser", fav.IdUser);
            datos.setearParametros("IdProducto", fav.IdProducto);
            datos.ejecutarAccion();

        }
    }

}

    