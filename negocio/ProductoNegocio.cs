﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
//using System.Windows.Forms;
using dominio;



namespace negocio
{
    public class ProductoNegocio
    {
        public List<Producto> lista = new List<Producto>();
        //SqlConnection conexion = new SqlConnection();
        //SqlCommand comando = new SqlCommand();
        //SqlDataReader lector;
        AccesoDatos datos = new AccesoDatos();

       public List<Producto> Listar()
        {
            try
            {
                datos.setearConsulta("Select A.Id, A.Codigo,A.Nombre, A.Descripcion Descripción, A.ImagenUrl, M.Descripcion Marca, C.Descripcion Categoría, M.Id idMarca, C.Id idCategoria, Precio From ARTICULOS A, MARCAS M, CATEGORIAS C Where M.Id = A.IdMarca AND A.IdCategoria = C.Id");          
                datos.ejecutarLectura();

                while(datos.lector.Read())
                {
                    Producto aux = new Producto();
                    aux.Id = (int)datos.lector["Id"];
                    aux.Codigo = (string)datos.lector["Codigo"];
                    aux.Nombre = (string)datos.lector["Nombre"];
                    aux.Descripcion = (string)datos.lector["Descripción"];
                    aux.Marca = new Marca();
                    aux.Marca.Descripcion = (string)datos.lector["Marca"];
                    aux.Marca.Id = (int)datos.lector["idMarca"];
                    aux.Categoria = new Categoria();
                    aux.Categoria.Descripcion = (string)datos.lector["Categoría"];
                    aux.Categoria.Id = (int)datos.lector["idCategoria"];
                    aux.urlImagen = (string)datos.lector["ImagenUrl"];
                    aux.Precio = (decimal)datos.lector["Precio"];

                    lista.Add(aux);
                }

                datos.cerrarConexion();
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
        
       public void agregarProducto(Producto prod)
        {
            //AccesoDatos datos = new AccesoDatos();
            try
            {   
                  datos.setearConsulta("Insert into ARTICULOS values (@codigo,@nombre,@descripcion,@idMarca,@idCategoria,@urlImagen,@precio)");
                  datos.setearParametros("codigo", prod.Codigo);
                  datos.setearParametros("nombre", prod.Nombre);
                  datos.setearParametros("descripcion", prod.Descripcion);
                  datos.setearParametros("idMarca", prod.Marca.Id);
                  datos.setearParametros("IdCategoria", prod.Categoria.Id);
                  datos.setearParametros("urlImagen", prod.urlImagen);
                  datos.setearParametros("precio", prod.Precio);

                  datos.ejecutarAccion();
                  lista.Add(prod);                
             
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { datos.cerrarConexion();}

        }


        public void eliminarProducto(int id)
        {   
            
            try
            {
                
                {
                    datos.setearConsulta("Delete from ARTICULOS where Id = @id");
                    datos.setearParametros("id", id);
                    datos.ejecutarAccion();
                }
                

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

           public void modificarProducto(Producto producto)
            {
            try
            {
                datos.setearConsulta("Update ARTICULOS set Codigo = @codigo , Nombre = @nombre, Descripcion = @descripcion, IdMarca = @idMarca, IdCategoria = @idCategoria, ImagenUrl = @url, Precio = @precio Where Id = @id");
                datos.setearParametros("codigo", producto.Codigo);
                datos.setearParametros("nombre", producto.Nombre);
                datos.setearParametros("descripcion", producto.Descripcion);
                datos.setearParametros("idMarca", producto.Marca.Id);
                datos.setearParametros("idCategoria", producto.Categoria.Id);
                

                if (producto.urlImagen != null)
                datos.setearParametros("url", producto.urlImagen);
                else datos.setearParametros("url", " ");

                datos.setearParametros("precio", producto.Precio);
                datos.setearParametros("id", producto.Id);

                datos.ejecutarAccion();
      
            }
            catch (Exception ex)
            {

                throw ex;
            }finally { datos.cerrarConexion();}
        } 

        public Producto buscarPorId(int id)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            AccesoDatos datos = new AccesoDatos();
            datos.setearConsulta("Select Codigo, Nombre, A.Descripcion, M.Descripcion Marca, C.Descripcion Categoria, A.IdMarca, A.IdCategoria, ImagenUrl Imagen, Precio from ARTICULOS A, CATEGORIAS C, MARCAS M Where A.id = @id AND C.Id = A.IdCategoria AND M.Id = A.IdMarca");
            datos.setearParametros("id", id);
            datos.ejecutarLectura();


            Producto prod = new Producto();
            while (datos.lector.Read())
            {
                prod.Id = id;
                prod.Codigo = (string)datos.lector["Codigo"];
                prod.Nombre = (string)datos.lector["Nombre"];
                prod.Descripcion = (string)datos.lector["Descripcion"];

                prod.Marca = new Marca();
                prod.Marca.Descripcion = (string)datos.lector["Marca"];
                prod.Marca.Id = (int)datos.lector["IdMarca"];

                prod.Categoria = new Categoria();
                prod.Categoria.Descripcion = (string)datos.lector["Categoria"];
                prod.Categoria.Id = (int)datos.lector["IdCategoria"];

                prod.urlImagen = (string)datos.lector["Imagen"];
                prod.Precio = (decimal)datos.lector["Precio"];

            }

            return prod;
        }

        }

  
 
    }

