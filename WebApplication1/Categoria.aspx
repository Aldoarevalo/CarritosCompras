<%@ Page Title="Categoria" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="CarritoCompras.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">


        <div class="row" style="margin-top:3px">
            <div class="col">
                <form action="">

                    <div class="form-group">
                        <div class="col col-md-12">
                            <label for="nombre">Código</label>
                            <input type="text" class="form-control" name="codigo" id="codigo">
                        </div>
                        <div class="col col-md-12">
                            <label for="nombre">Descripcion</label>
                            <input type="text" class="form-control" name="descripcion" id="descripcion"
                                style="margin-bottom:5px">
                        </div>
                        <div class="col col-md-12" style="margin-right:4px;padding-right:2em">
                            <asp:Button ID="Button1" runat="server" Text="Nuevo" class="btn btn-primary" />
                            <asp:Button ID="Button2" runat="server" Text="Guardar" class="btn btn-primary" />
                            <asp:Button ID="Button3" runat="server" Text="Actualizar" class="btn btn-primary"
                                OnClick="Button3_Click" />
                        </div>
                        <div class="col-12">
                            <h3>Listado de Categorias</h3>
                            <asp:ListView ID="ListView2" runat="server" DataKeyNames="codcategoria"
                                DataSourceID="SqlDataSource1">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="codcategoriaLabel" runat="server"
                                                Text='<%# Eval("codcategoria") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="descategoriaLabel" runat="server"
                                                Text='<%# Eval("descategoria") %>' />
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update"
                                                Text="Actualizar" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel"
                                                Text="Cancelar" />
                                        </td>
                                        <td>
                                            <asp:Label ID="codcategoriaLabel1" runat="server"
                                                Text='<%# Eval("codcategoria") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="descategoriaTextBox" runat="server"
                                                Text='<%# Bind("descategoria") %>' />
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No se han devuelto datos.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert"
                                                Text="Insertar" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel"
                                                Text="Borrar" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="codcategoriaTextBox" runat="server"
                                                Text='<%# Bind("codcategoria") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="descategoriaTextBox" runat="server"
                                                Text='<%# Bind("descategoria") %>' />
                                        </td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="codcategoriaLabel" runat="server"
                                                Text='<%# Eval("codcategoria") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="descategoriaLabel" runat="server"
                                                Text='<%# Eval("descategoria") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="itemPlaceholderContainer" runat="server" border="0" style=""
                                                    class="table table-hover">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Código</th>
                                                        <th runat="server">Descripción</th>
                                                    </tr>
                                                    <tr id="itemPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="codcategoriaLabel" runat="server"
                                                Text='<%# Eval("codcategoria") %>' />
                                        </td>
                                        <td>
                                            <asp:Label ID="descategoriaLabel" runat="server"
                                                Text='<%# Eval("descategoria") %>' />
                                        </td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                        </div>

                    </div>

                </form>
            </div>
        </div>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:BDVENTAS_5ConnectionString %>"
            SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>



    </div>


    </div>

</asp:Content>