<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WingtipToys.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <section>
      <div>
          <hgroup>
              <h2><%: Page.Title %></h2>
          </hgroup>

          <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="4" ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts">

            


              <GroupTemplate>
                  <tr id="itemPlaceholderContainer" runat="server">
                      <td id="itemPlaceholder"  runat="server"></td>
                  </tr>                  
              </GroupTemplate>

              <ItemTemplate>
                  <td>
                  <table>
                      <tr>
                          <td>
                              <a href="ProductDetails.aspx?productID=<%#: Item.ProductID %>">
                                  <img src="/Catalog/Images/Thumbs/<%#: Item.ImagePath %>" width="100" height="75" style="border:solid" />
                              </a>
                              
                          </td>
                      </tr>

                      <tr>
                          <td>
                              <a href="ProductDetails.aspx?productID=<%#: Item.ProductID %>"><span class="ProductName"><%#: Item.ProductName %></span> </a>       
                              <br />
                                <span><b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%> </span>
                              <br />
                          </td>
                      </tr>
                      
                </td>
                  </table>
              </ItemTemplate>

                <LayoutTemplate>
                  <table style="width:100%;">
                      <tr>
                          <td>
                              <table id="groupPlaceholderContainer" runat="server" style="width:100%;">
                                  <tr id="groupPlaceholder"></tr>
                              </table>
                          </td>
                      </tr>
                      
                  </table>
              </LayoutTemplate>


          </asp:ListView>
          

      </div>
  </section>
</asp:Content>
