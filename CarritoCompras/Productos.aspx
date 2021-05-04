<%@ Page Title="Home Page" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="CarritoCompras._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
        <div class="row" style="margin-bottom:10px">
            <div class="col-md-12">
                <h1>Listado de Productos</h1>
                <form action="">
                    <div class="form-group">
                        <div class="col-12 col-sm-4">
                            <label for="codigo">Código</label>
                            <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-4">
                            <label for="nombre">Nombre del producto</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                        </div>

                        <div class="col-12 col-sm-4">
                            <label for="categoria">Categoria</label>
                            <asp:DropDownList ID="cbCategoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="descategoria" DataValueField="codcategoria" CssClass="form-control"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>" SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
                        </div>

                        <div class="col-12 col-sm-4" style="margin-top: 4px">
                            <label for="precio">Precio</label>
                            <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-4" style="margin-top: 4px">
                            <label for="cantidad">Cantidad</label>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="col-12 col-sm-4" style="margin-top: 4px">
                            <label for="nombre">Imagen</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                        </div>
                        <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                            <asp:Button ID="Button1" runat="server" Text="Nuevo" class="btn btn-primary" OnClick="Button1_Click" OnLoad="Page_Load"/>
                        </div>
                        <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click"/>
                        </div>
                        <div class="col col-xs-2 col-sm-4" style="margin-top: 4px">
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" class="btn btn-primary"/>
                        </div>
                    </div>


                </form>
            </div>

        </div>

        <div class="row" style="margin-top:5px">
            <div class="col">
                <div class="table-responsive">          
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codproducto,codcategoria1" DataSourceID="SqlDataSource2" CssClass="table table-striped" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="codproducto" HeaderText="codproducto" ReadOnly="True" SortExpression="codproducto" Visible="False"/>
                <asp:BoundField DataField="desproducto" HeaderText="Producto" SortExpression="desproducto" />
                <asp:BoundField DataField="preproducto" HeaderText="Precio" SortExpression="preproducto" />
                <asp:BoundField DataField="canproducto" HeaderText="Stock" SortExpression="canproducto" />
                <asp:BoundField DataField="descategoria" HeaderText="Categoria" SortExpression="descategoria" />
                <asp:BoundField DataField="imagen" HeaderText="imagen" SortExpression="imagen" Visible="False" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="codcategoria" HeaderText="codcategoria" SortExpression="codcategoria" Visible="False" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>" SelectCommand="pa_productos_ListarTodos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
         
  </div>
            </div>
        </div>
    </div>



</asp:Content>