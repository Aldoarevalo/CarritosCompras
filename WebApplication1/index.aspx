<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HfProductid" runat="server" />
            <Table>
         <tr>
         <td> 
         <asp:Label ID="Label1" runat="server" Text="Producto"></asp:Label>
         </td>
          <td colspan="2"> 
          <asp:TextBox ID="textproducto" runat="server"></asp:TextBox>
          </td>
          </tr>
         <tr>
         <td> 
         <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
         </td>
          <td colspan="2"> 
          <asp:TextBox ID="txtprecio" runat="server"></asp:TextBox>
          </td>
          </tr>
           <tr>
         <td> 
         <asp:Label ID="Label3" runat="server" Text="Count"></asp:Label>
         </td>
          <td colspan="2"> 
          <asp:TextBox ID="txtcount" runat="server"></asp:TextBox>
          </td>
          </tr>
         <tr>
         <td> 
         <asp:Label ID="Label4" runat="server" Text="Descripción"></asp:Label>
         </td>
          <td colspan="2"> 
          <asp:TextBox ID="txtdescripcion" runat="server"></asp:TextBox>
          </td>
          </tr>
        <tr>
         <td> 
        
         </td>
              
          <td colspan="3"> 
              <asp:Button ID="Butsave" runat="server" Text="Save" OnClick="Butsave_Click" />
              <asp:Button ID="Butdelete" runat="server" Text="Delete" />
              <asp:Button ID="Butclear" runat="server" Text="Clear" />
          </td>
          </tr>

     <tr>
         <td> 
        
         </td>
          <td colspan="2"> 
           <asp:Label ID="Labelsuccesme" runat="server" Text="" ForeColor="Green"></asp:Label>
          </td>
          </tr>

 <tr>
         <td> 
        
         </td>
          <td colspan="2"> 
           <asp:Label ID="Labelerror" runat="server" Text="" ForeColor="Red"></asp:Label>
          </td>
          </tr>
      </Table>
    <br/. />
            <asp:GridView ID="Gvproduct" runat="server" AutoGenerateColumns="false">
            <Columns>
              <asp:BoundField DataField="product" HeaderText="product"></asp:BoundField>
              <asp:BoundField DataField="price" HeaderText="price"></asp:BoundField>
               <asp:BoundField DataField="count" HeaderText="count"></asp:BoundField>
                <asp:BoundField DataField="description" HeaderText="description"></asp:BoundField>
             <asp:TemplateField>
                 <ItemTemplate>
              <asp:LinkButton Text="select" ID="lnkselect" CommandArgument='<% Eval("productid") %>' runat="server"/>

                     
                 </ItemTemplate>
             </asp:TemplateField>
             </Columns>
                </asp:GridView>
        </div>
    </form>
</body>
</html>
