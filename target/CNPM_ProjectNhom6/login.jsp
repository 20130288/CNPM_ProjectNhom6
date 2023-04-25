<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng nhập | Đăng ký</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">


</head>
<body>
<section id="header">
    <nav class="navbar navbar-default navbar-fixed-top">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand navbar-brand-centered"><a href="index.jsp">
                <div class="ribbon  ribbon--red">CooksCorner</div>
            </a></div>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div>
                <ul class="nav navbar-nav navbar">
                    <li><a href="index.jsp">TRANG CHỦ</a></li>
                    <li><a href="recipes.jsp">CÔNG THỨC</a></li>
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li class="active"><a href="login.jsp">TÀI KHOẢN</a></li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>
<section id="login_main">
    <div class="login_inner clearfix">
        <div class="container">
            <div class="row">
                <div class="login_main_1">
                    <h1>Tài khoản</h1>
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><i class="fa-solid fa-angles-right"></i></li>
                        <li>Tài khoản</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="login">
    <div class="container">
        <div class="row">
            <div class="body_page-main">
                <div class="login-container">
                    <div class="login_1">
                        <h3>Đăng nhập</h3>
                        <div class=" content-top2">
                            <h4 class="text-center">O</h4>
                        </div>
                    </div>
                    <form action="">
                        <label for="email">Địa chỉ Email hoặc tên đăng nhập<span>*</span></label>
                        <input id="email" type="email" placeholder="Nhập email hoặc tên đăng nhập...">
                        <label for="pass">Mật khẩu <span>*</span></label>
                        <input id="pass" type="password" placeholder="Nhập mật khẩu...">
                        <div class="save">
                            <div class="lost-pass">
                                <a href="#">Quên mật khẩu?</a>
                            </div>

                        </div>
                        <button class="login-button" type="submit">ĐĂNG NHẬP</button>
                        <div class="or">
                            <span>HOẶC</span>
                        </div>
                        <button class="register-button" id="register-button-login">ĐĂNG KÝ</button>
                        <div class="other_login">
                            <div class="login_google">
                                <button><i class="fa-brands fa-google-plus-g"></i></button>
                            </div>
                            <div class="login_facebook">
                                <button><i class="fa-brands fa-facebook-f"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!--        Register Form-->
            <div class="modal">
                <div class="modal-content">

                    <div class="register-container">
                        <div class="close"><a href="" id="closeButton"><i class="fa-solid fa-xmark"></i></a></div>
                        <div class="login_1">
                            <h3>Đăng ký</h3>
                            <div class=" content-top2">
                                <h4 class="text-center">O</h4>
                            </div>
                        </div>
                        <form action="">
                            <label for="uname">Username- <span>*</span></label>
                            <input id="uname" type="text" placeholder="Nhập Tên Đăng Nhập...">
                            <label for="email-register">Địa Chỉ Email <span>*</span></label>
                            <input id="email-register" type="email" placeholder="Địa Chỉ Email...">
                            <label for="pass-register">Mật Khẩu <span>*</span></label>
                            <input id="pass-register" type="password" placeholder="Nhập Mật Khẩu...">

                            <button class="register-button" id="register-button" type="submit">ĐĂNG KÝ</button>
                            <div class="or">
                                <span>HOẶC</span>
                            </div>
                            <button class="login-button" id="login-button-register">ĐĂNG NHẬP</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="footer.jsp" %>
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/login.js"></script>
</body>
</html>