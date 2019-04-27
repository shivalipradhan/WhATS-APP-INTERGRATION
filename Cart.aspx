<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Ecom.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <form runat="server">
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="Home.aspx">home</a></li>
                                <li>Shopping Cart</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <!--shopping cart area start -->
        <div class="shopping_cart_area pt-30">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product_remove">Delete</th>
                                            <th class="product_thumb">Image</th>
                                            <th class="product_name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product_quantity">Quantity</th>
                                            <th class="product_total">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="MainRepeater" ItemType="Ecom.ProductCart" runat="server"
                                                      OnItemCommand="MainRepeater_OnItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td class="product_remove">
                                                        <asp:LinkButton ID="DeleteCartItem" runat="server" CommandArgument="<%# Item.ProductId %>" CommandName="Delete">
                                                    <i class="fa fa-trash-o"></i>
                                                        </asp:LinkButton>
                                                    <td class="product_thumb">
                                                        <img src="/assets/images/<%# Item.ProductId %>.jpg" style="width: 100px;">
                                                    </td>
                                                    <td class="product_name"><%# Item.ProductName %>
                                                    </td>
                                                    <td class="product-price">AUD <%# Item.Price %>.00</td>
                                                    <td class="product_quantity">
                                                        <%# Item.Qty %>
                                                    </td>
                                                    <td class="product_total">AUD <%# Item.Amount %>.00</td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
                <div class="coupon_area">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code left">
                                <h3>Coupon</h3>
                                <div class="coupon_inner">
                                    <p>Enter your coupon code if you have one.</p>
                                    <input placeholder="Coupon code" type="text">
                                    <button type="submit">Apply coupon</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <h3>Cart Totals</h3>
                                <div class="coupon_inner">
                                    <div class="cart_subtotal">
                                        <p>Subtotal</p>
                                        <p class="cart_amount">AUD <%= CartAmount %></p>
                                    </div>
                                    <div class="cart_subtotal ">
                                        <p>Shipping</p>
                                        <p class="cart_amount">AUD 50.00</p>
                                    </div>

                                    <div class="cart_subtotal">
                                        <p>Total</p>
                                        <p class="cart_amount">AUD <%= NetAmount %></p>
                                    </div>
                                    <div class="checkout_btn">
                                        <a href="#">Proceed to Checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
            </div>
        </div>
        <!--shopping cart area end -->

    </form>

</asp:Content>
