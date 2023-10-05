<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <div class="container-fluid">
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
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">

                <h1 class="font-weight-semi-bold text-uppercase mb-3">Contact Us</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="">Home</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0">Contact</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Contact Start -->
        <div class="container-fluid pt-5">
            <div class="text-center mb-4">
                <h2 class="section-title px-5"><span class="px-2">Contact For Any Queries</span></h2>
            </div>
            <div class="row px-xl-5">
                <div class="col-lg-7 mb-5">
                    <form action="contact" method="post">
                    <div class="contact-form">
                        <div id="success"></div>
                        
                            <div class="control-group">
                                <input name="name" type="text" class="form-control" id="name" placeholder="Your Name"
                                       required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input name="email" type="email" class="form-control" id="email" placeholder="Your Email"
                                       required="required" data-validation-required-message="Please enter your email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input name="subject" type="text" class="form-control" id="subject" placeholder="Subject"
                                       required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input name="message" class="form-control" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message">
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <button class="btn btn-primary py-2 px-4" type="submit">Send Message</button>
                            </div>
                    </div>
                                                </form>

                </div>
                <div class="col-lg-5 mb-5">
                    <h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
                    <p>Our shop always welcomes customer feedback to get a better experience. Please always leave a contribution so that our shop can answer your questions and contact you.</p>
                    <div class="d-flex flex-column mb-3">
                        <h5 class="font-weight-semi-bold mb-3">Store</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i><a href=" https://goo.gl/maps/ZbRyAVyKghnoDLkv9" target="_blank"> FPT University, An Binh, Ninh Kieu, Can Tho, Viet Nam</a></p>
                        <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@gmail.com</p>
                        <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


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