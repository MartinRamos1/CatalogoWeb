using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TPFinalNivel3_Ramos
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        public Producto Seleccionado { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // CARGAR DROPDOWN LIST CON BASE DE DATOS
            try
            {
                MarcaNegocio mnegocio = new MarcaNegocio();
                ddlMarca.DataValueField = "Id";
                ddlMarca.DataTextField = "Descripcion";
                ddlMarca.DataSource = mnegocio.Listar();
                ddlMarca.DataBind();

                CategoriaNegocio cnegocio = new CategoriaNegocio();
                ddlCategoria.DataValueField = "Id";
                ddlCategoria.DataTextField = "Descripcion";
                ddlCategoria.DataSource = cnegocio.Listar();
                ddlCategoria.DataBind();
            }
            catch (Exception)
            {

                throw;
            }
            

            if (!IsPostBack)
            {
                // MODIFICAR
                if (Request.QueryString["id"] != null)
                {
                    try
                    {
                        ProductoNegocio negocio = new ProductoNegocio();
                        // BUSCAR ID
                        int id = int.Parse(Request.QueryString["id"]);
                        Seleccionado = negocio.buscarPorId(id); 

                        // PRECARGAR CAMPOS
                        txtId.Text = id.ToString();
                        txtNombre.Text = Seleccionado.Nombre;
                        txtCodigo.Text = Seleccionado.Codigo;
                        txtPrecio.Text = Seleccionado.Precio.ToString();
                        txtDescripcion.Text = Seleccionado.Descripcion;
                        txtImagen.Text = Seleccionado.urlImagen;

                        // PRECARGAR DROPDOWN LIST
                        ddlMarca.SelectedValue = Seleccionado.Marca.Id.ToString();
                        ddlCategoria.SelectedValue = Seleccionado.Categoria.Id.ToString();

                        // MODIFICAR TEXTO BOTÓN
                        btnAgregar.Text = "Aceptar";
                    }
                    catch (Exception)
                    {

                    }
                    
                }

            }

            }

            protected void btnAgregar_Click(object sender, EventArgs e)
            {
            try
            {
                ProductoNegocio negocio = new ProductoNegocio();
                Producto nuevo = new Producto();
                nuevo.Codigo = txtCodigo.Text;
                nuevo.Nombre = txtNombre.Text;
                nuevo.Precio = decimal.Parse(txtPrecio.Text);
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.urlImagen = txtImagen.Text;

                nuevo.Marca = new Marca();
                nuevo.Marca.Id = int.Parse(ddlMarca.SelectedValue);
                nuevo.Marca.Descripcion = ddlMarca.SelectedItem.Text;

                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);
                nuevo.Categoria.Descripcion = ddlCategoria.SelectedItem.Text;

                if (btnAgregar.Text == "Agregar")
                    negocio.agregarProducto(nuevo);
                else
                {
                    nuevo.Id = int.Parse(txtId.Text);
                    negocio.modificarProducto(nuevo);
                }
                Response.Redirect("Admin.aspx");
            }
            catch (Exception)
            {
                throw;
            }

            }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            negocio.eliminarProducto(int.Parse(Request.QueryString["id"]));
            Response.Redirect("Admin.aspx");
        }
    }
    } 
