<%-- 
    Document   : index
    Created on : Jul 13, 2023, 7:29:45 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DBconnector.imageDB"%>
<%@page import="java.util.Locale" %>
<%@page import="java.text.NumberFormat"%>

<% imageDB img =  new imageDB(); %>
<%  NumberFormat numberFormat = NumberFormat.getNumberInstance(Locale.getDefault());  %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>EShopper - Bootstrap Shop Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Topbar Start -->
        <div class="container-fluid">
            <div class="row bg-secondary py-2 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark" href="">FAQs</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Help</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Support</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-dark pl-2" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center py-3 px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a href="" class="text-decoration-none">
                        <h3 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">G7</span>Irréprochable</h3>
                    </a>
                </div>
                <!<!-- Searchhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh -->
                <div class="col-lg-6 col-6 text-left">
                    <form action="search" id="searchForm" method="post">
                        <div class="input-group">
                            <input id="searchInput" type="text" class="form-control" placeholder="Search for products" name="searchData">
                            <div class="input-group-append">
                                <span class="input-group-text bg-transparent text-primary">
                                    <i class="fa fa-search"></i>
                                </span> 
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 col-6 text-right">
                    <a href="cart" class="btn border">
                        <i class="fas fa-shopping-cart text-primary"></i>
                    </a>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid mb-5">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                     <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Clocks <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="Category?type=ban" class="dropdown-item" name="type">Desk clocks </a>
                                    <a href="Category?type=treo tuong" class="dropdown-item" name="type">Wall clocks</a>
                                  
                                </div>
                            </div>
                            <a href="Category?type=ghe" class="nav-item nav-link">Chairs</a>
                            <a href="Category?type=Lo Hoa" class="nav-item nav-link" >Vase</a>
                            <a href="Category?type=trang tri cao cap" class="nav-item nav-link">Luxury furniture</a>
                             <a href="Category?type=Tuong trang tri" class="nav-item nav-link" >Decorative Sculptures & Figurines</a>
                           
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h3 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">G7</span>Irréprochable</h3>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="homepage" class="nav-item nav-link">Home</a>
                                <a href="shop" class="nav-item nav-link">Shop</a>
                                <!--<a href="detail.html" class="nav-item nav-link active">Shop Detail</a>-->
                                <a href="contact" class="nav-item nav-link">Contact</a>
                            </div>
                            <div class="navbar-nav ml-auto py-0">
                                <c:if test="${(sessionScope.account!=null)}">
                                     Hello: ${sessionScope.account} <a href="logout">(Log out)</a>
                                </c:if>
                                <c:if test="${(sessionScope.account==null)}">
                                    <a href="Login.jsp" class="nav-item nav-link">Login</a>
                                </c:if>
                                </div>
                            </div>
                        </nav>
                        <div id="header-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" style="height: 410px;">
                                    <img class="img-fluid" src="img/big2.jpg" alt="Image" name="slide1">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Decor</h3>
                                            <a href="shop" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item" style="height: 410px;">
                                    <img class="img-fluid" src="img/big3.jpg" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                            <a href="shop" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-prev-icon mb-n2"></span>
                                </div>
                            </a>
                            <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                                <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                    <span class="carousel-control-next-icon mb-n2"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Navbar End -->


            <!-- Featured Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5 pb-3">
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                            <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Featured End -->



            <!-- Categories End -->


            <!-- Offer Start -->
            <div class="container-fluid offer pt-5">
                <div class="row px-xl-5">
                    <div class="col-md-6 pb-4">
                        <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                            <img src="img/CW04.png" alt="">
                            <div class="position-relative" style="z-index: 1;">
                                <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                                <h1 class="mb-4 font-weight-semi-bold">Chair Collection</h1>
                                <a href="shop" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 pb-4">
                        <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                            <img src="img/F04.png" alt="">
                            <div class="position-relative" style="z-index: 1;">
                                <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                                <h1 class="mb-4 font-weight-semi-bold">Color Collection</h1>
                                <a href="shop" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer End -->


            <!-- Products Start -->
            <div class="container-fluid pt-5">
                <div class="text-center mb-4">
                    <h2 class="section-title px-5"><span class="px-2">Đồng Hồ</span></h2>
                </div>


                <div class="row px-xl-5 pb-3">

                    <c:forEach items="${requestScope.data}" var="c"> 
                        <c:set var="currentID" value="${c.id}"/>
                        <c:set var="currentPrice" value="${c.price}"/>
                        <%
             String result = img.FindImg((String) pageContext.getAttribute("currentID"));
                        %>
                        <div class="col-lg-3 col-md-6 col-sm-12 pb-1" name="${c.id}">
                            <div class="card product-item border-0 mb-4">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100" src="<%= result %>" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <h6 class="text-truncate mb-3">${c.nameProduct}</h6>
                                    <% String priceNE = numberFormat.format(pageContext.getAttribute("currentPrice")); %>

                                    <div class="d-flex justify-content-center">
                                        <h6><%= priceNE %> VND</h6>
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="detail?sid=${c.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>

            </div>
            <!-- Subscribe End -->


            <!-- Products Start -->
            <div class="container-fluid pt-5">
                <div class="text-center mb-4">
                    <h2 class="section-title px-5"><span class="px-2">Lọ/Bình</span></h2>
                </div>
                <div class="row px-xl-5 pb-3">
                    <c:forEach items="${requestScope.lo}" var="d"> 
                        <c:set var="currentID" value="${d.id}"/>
                        <%
             String result = img.FindImg((String) pageContext.getAttribute("currentID"));
                        %>

                        <div class="col-lg-3 col-md-6 col-sm-12 pb-1" name="${d.id}">
                            <div class="card product-item border-0 mb-4">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100"  src="<%= result %>" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <h6 class="text-truncate mb-3">${d.nameProduct}</h6>
                                    <div class="d-flex justify-content-center">
                                        <% String priceNE = numberFormat.format(pageContext.getAttribute("currentPrice")); %>
                                        <h6><%= priceNE %> VND</h6>
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="detail?sid=${d.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>

                                </div>
                            </div>
                        </div>
                    </c:forEach> 
                </div>

            </div>
            <!-- Products End -->


            <!-- Vendor Start -->
            <div class="container-fluid py-5">
                <div class="row px-xl-5">
                    <div class="col">
                        <div class="owl-carousel vendor-carousel">
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-1.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-2.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-3.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-4.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-5.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-6.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-7.jpg" alt="">
                            </div>
                            <div class="vendor-item border p-4">
                                <img src="img/vendor-8.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Vendor End -->


            <!-- Footer Start -->
            <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
            <div class="row px-xl-5 pt-5">
                <div class="col-lg-6 col-md-12 mb-5 pr-3 pr-xl-5">
                    <a href="" class="text-decoration-none">
                       <h3 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">G7</span>Irréprochable</h3>
                    </a>
                    <p>We deliver quality that's worth your money.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Nguyen Van Cu noi dai, CanTho, VietNam</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>fptcantho@fpt.edu.vn</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="row">
                        <div class="col-md-4 mb-5">
                            <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-dark mb-2" href="homepage"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                <a class="text-dark mb-2" href="shop"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                <!--<a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>-->
                                <a class="text-dark mb-2" href="cart"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                <a class="text-dark" href="contact"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                            </div>
                        </div>
                        <!--                        <div class="col-md-4 mb-5">
                                                    <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                                                    <div class="d-flex flex-column justify-content-start">
                                                        <a class="text-dark mb-2" href="index.html"><i class="fa fa-angle-right mr-2"></i>Home</a>
                                                        <a class="text-dark mb-2" href="shop.html"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                                                        <a class="text-dark mb-2" href="detail.html"><i class="fa fa-angle-right mr-2"></i>Shop Detail</a>
                                                        <a class="text-dark mb-2" href="cart.html"><i class="fa fa-angle-right mr-2"></i>Shopping Cart</a>
                                                        <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                                                        <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                                                    </div>
                                                </div>-->
                        <!--                        <div class="col-md-4 mb-5">
                                                    <h5 class="font-weight-bold text-dark mb-4">Newsletter</h5>
                                                    <form action="">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control border-0 py-4" placeholder="Your Name" required="required" />
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="email" class="form-control border-0 py-4" placeholder="Your Email"
                                                                   required="required" />
                                                        </div>
                                                        <div>
                                                            <button class="btn btn-primary btn-block border-0 py-3" type="submit">Subscribe Now</button>
                                                        </div>
                                                    </form>
                                                </div>-->
                    </div>
                </div>
            </div>
            <div class="row border-top border-light mx-xl-5 py-4">
                <div class="col-md-6 px-xl-0">
                    <p class="mb-md-0 text-center text-md-left text-dark">
                        &copy; <a class="text-dark font-weight-semi-bold" href="#">Your Site Name</a>. All Rights Reserved. Designed
                        by
                        <a class="text-dark font-weight-semi-bold" href="https://htmlcodex.com">G7 Studio</a><br>
                        Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                    </p>
                </div>
                <div class="col-md-6 px-xl-0 text-center text-md-right">
                    <img class="img-fluid" src="img/payments.png" alt="">
                </div>
            </div>
        </div>
            <!-- Footer End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>

            <!-- Contact Javascript File -->
            <script src="mail/jqBootstrapValidation.min.js"></script>
            <script src="mail/contact.js"></script>

            <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <script >
                const search = document.getElementById('searchInput');
                var boResearch = false;
                document.getElementById('searchInput').addEventListener('keypress', function (event) {
                    if (event.key === 'Enter') {
                        event.preventDefault(); // Prevent the default form submission
                        checkInputs();
                        if (boResearch == true) {
                            document.getElementById('searchForm').submit(); // Submit the form
                        }
                    }
                });

                function checkInputs() {

                    const searchValue = search.value.trim();
                    if (searchValue === '') {
                    } else {

                        boResearch = true;
                    }




                }
            </script>
        </body>

    </html>