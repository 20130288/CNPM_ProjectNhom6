<%@ page import="vn.edu.hcmuaf.st.Entity.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Private Chef</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/details.css" rel="stylesheet">
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
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li><a href="login.jsp"><%=session.getAttribute("acc") != null ? account.getUname() : "TÀI KHOẢN" %>
                    </a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>
<section id="details_main">
    <div class="details_inner clearfix">
        <div class="container">
            <div class="row">
                <div class="details_main_1">
                    <h1>Chi Tiết Công Thức</h1>
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><i class="fa-solid fa-angles-right"></i></li>
                        <li>Chi tiết công thức</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="details">
    <div class="container">
        <div class="row">
            <div class="details_1">
                <h3>Công thức</h3>
                <div class=" content-top2">
                    <h4 class="text-center">O</h4>
                </div>
            </div>
            <div class="details_2 clearfix">
                <div class="col-sm-6">
                    <div class="details_3">
                        <h3>The Ingredient List</h3>
                    </div>
                    <div class="details_4">
                        <ul>
                            <li class="well_1"><i class="fa fa-leaf"></i>MAGGI Masala-ae-Magic</li>
                            <li class="well_2">1 sachet</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Bread</li>
                            <li class="well_2">9 slices</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Oil</li>
                            <li class="well_2">2 tablespoons</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Mustard Seeds</li>
                            <li class="well_2">1 teaspoon</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Curry Leaves</li>
                            <li class="well_2">6-8</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Dry Red Chillies</li>
                            <li class="well_2">2, whole</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Asafoetida Powder (Hing)</li>
                            <li class="well_2">1/8 teaspoon</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Onion</li>
                            <li class="well_2">1, chopped</li>
                            <li class="well_1"><i class="fa fa-leaf"></i>Potato</li>
                            <li class="well_2">1, cut into small cubes</li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="details_3">
                        <h3>The Easy Steps</h3>
                    </div>
                    <div class="details_5">
                        <a href="#"><img src="img/Recipes/fry/fry-1.jpg" alt="abc" class="img_responsive"></a>
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