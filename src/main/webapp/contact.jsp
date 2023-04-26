<%@ page import="vn.edu.hcmuaf.st.Entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liên hệ</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/contact.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<% Account account = new Account();
    if (session.getAttribute("acc") != null) {
        account = (Account) session.getAttribute("acc");
    } %>
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
                    <li class="active"><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li><a href="login.jsp"><%=session.getAttribute("acc") != null ? account.getUname() : "TÀI KHOẢN" %>
                    </a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>
<section id="contact_main">
    <div class="contact_inner clearfix">
        <div class="container">
            <div class="row">
                <div class="contact_main_1">
                    <h1>Liên Hệ</h1>
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><i class="fa-solid fa-angles-right"></i></li>
                        <li>Liên hệ</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="contact_inner">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2145945643592!2d106.7917617!3d10.8712764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1682508774165!5m2!1svi!2s"
            width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-8">
                    <div class="col-sm-12 padding_left_1">
                        <div class="contact_3">
                            <h2>Liên Hệ Chúng Tôi:</h2>
                            <div class=" content-top2">
                                <h4 class="text-center">O</h4>
                            </div>
                            <p>Hãy điền thông tin bên dưới để liên hệ cho chúng tôi.</p></div>
                    </div>
                    <div class="col-sm-12 space_all">
                        <div class="col-sm-6">
                            <div class="contact_4">
                                <input type="text" class="form-control" placeholder="Tên">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="contact_4">
                                <input type="text" class="form-control" placeholder="Địa chỉ Email">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="contact_5">
                            <textarea placeholder="Lời nhắn" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="contact_6">
                            <ul>
                                <li><a class="button hvr-shutter-out-horizontal" href="#" class="button">GỬI</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact_8 clearfix">
                        <div class="contact_7">
                            <h2>Kết Nối Với Chúng Tôi</h2>
                            <div class=" content-top2">
                                <h4 class="text-center">O</h4>
                            </div>
                        </div>
                        <div class="contact_2">
                            <h4>Địa chỉ:</h4>
                            <h5><i class="fa fa-home"></i><span class="media_1">Khu phố 6, phường Linh Trung, TP.Thủ Đức, Tp.Hồ Chí Minh, Việt Nam</span>
                            </h5>
                        </div>
                        <div class="contact_2">
                            <h4>Số điện thoại:</h4>
                            <h5><i class="fa fa-phone"></i><span class="media_1">028-38966780</span></h5>
                            <h5><i class="fa fa-calculator"></i><span class="media_1">028-38960713</span></h5>
                        </div>
                        <div class="contact_2">
                            <h4>E-mail:</h4>
                            <h5><i class="fa fa-envelope"></i><a href="#"><span
                                    class="media_2">20130288@st.hcmuaf.edu.vn</span></a></h5>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%@include file="footer.jsp" %>
</body>
</html>