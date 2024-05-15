using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;
using negocio;


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

        public List<Producto> Listar(User user)
        {
            List<Producto> listaFav = new List<Producto>();
            AccesoDatos datos = new AccesoDatos();

            datos.setearConsulta("Select A.Id, A.Codigo, A.Nombre, A.Descripcion, A.IdMarca, M.Descripcion Marca, A.IdCategoria, C.Descripcion Categoria, A.Precio, A.ImagenUrl from ARTICULOS A, FAVORITOS F, MARCAS M, CATEGORIAS C Where A.Id = F.IdArticulo AND F.IdUser = @IdUser AND M.Id = A.IdMarca AND C.Id = A.IdCategoria");
            datos.setearParametros("IdUser", user.Id);
            datos.ejecutarLectura();

            while (datos.lector.Read())
            {
                Producto aux = new Producto();
                aux.Id = (int)datos.lector["Id"];
                aux.Codigo = (string)datos.lector["Codigo"];
                aux.Nombre = (string)datos.lector["Nombre"];
                aux.Descripcion = (string)datos.lector["Descripcion"];
                aux.Marca = new Marca();
                aux.Marca.Descripcion = (string)datos.lector["Marca"];
                aux.Marca.Id = (int)datos.lector["idMarca"];
                aux.Categoria = new Categoria();
                aux.Categoria.Descripcion = (string)datos.lector["Categoria"];
                aux.Categoria.Id = (int)datos.lector["idCategoria"];
                aux.urlImagen = (string)datos.lector["ImagenUrl"];
                aux.Precio = (decimal)datos.lector["Precio"];

                listaFav.Add(aux);
            }
                return listaFav;

        }

    }
}

    

    