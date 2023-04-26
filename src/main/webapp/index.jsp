<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.st.Entity.Recipe" %>
<%@ page import="vn.edu.hcmuaf.st.DAO.RecipeDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.st.DAO.HomeDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CooksCorner</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
    <link href="css/ken-burns.css" rel="stylesheet" type="text/css" media="all"/>
    <link type="text/css" rel="stylesheet" href="css/animate.css">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<% RecipeDAO recipeDAO = new RecipeDAO();
    HomeDAO homeDAO = new HomeDAO();
    List<Recipe> recipeList = recipeDAO.getIngredientList();
    List<Recipe> newest = homeDAO.getNewest();
    if (recipeList == null) {
        recipeList = new ArrayList<>();
    }
    if (newest == null) {
        newest = new ArrayList<>();
    }
%>
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
                    <li class="active"><a href="index.jsp">TRANG CHỦ</a></li>
                    <li><a href="recipes.jsp">CÔNG THỨC</a></li>
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li><a href="login.jsp">TÀI KHOẢN</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>
<section id="center" class="center_home">
    <div class="banner">
        <div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000"
             data-pause="hover">
            <!-- Wrapper-for-Slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active"><!-- First-Slide -->
                    <img src="img/Sliders/slider-1.jpg" alt="" class="img-responsive">
                    <div class="carousel-caption kb_caption kb_caption_right">
                        <h1 data-animation="animated flipInX" class="">NẤU ĂN NGON TẠI NHÀ</h1>
                        <p data-animation="animated flipInX" class="">Trang web có thể giúp bạn tạo ra những bữa ăn ngon
                            tại nhà, thay vì phải đến nhà hàng hay quán ăn. [...]</p>
                        <h4><a href="recipes.jsp" class="button hvr-shutter-out-horizontal">Xem thêm</a></h4>
                    </div>
                </div>
                <div class="item"> <!-- Second-Slide -->
                    <img src="img/Sliders/slider-2.jpg" alt="" class="img-responsive">
                    <div class="carousel-caption kb_caption kb_caption_right">
                        <h1 data-animation="animated fadeInDown">MÓN ĂN MỚI MẺ</h1>
                        <p data-animation="animated fadeInUp">Trang web có thể cung cấp cho bạn các công thức mới mẻ và
                            độc đáo để giúp bạn khám phá thêm nhiều món ăn mới [...]</p>
                        <h4><a href="recipes.jsp" class="button hvr-shutter-out-horizontal">Xem thêm</a></h4>
                    </div>
                </div>
                <div class="item"><!-- Third-Slide -->
                    <img src="img/Sliders/slider-3.jpg" alt="" class="img-responsive">
                    <div class="carousel-caption kb_caption kb_caption_right">
                        <h1 data-animation="animated fadeInDown">CÔNG THỨC ĐƠN GIẢN</h1>
                        <p data-animation="animated fadeInUp">Trang web sẽ cung cấp cho bạn các công thức
                            đơn giản, dễ làm để giúp bạn có thể tự tin khi nấu ăn. Điều này có thể giúp tăng khả năng
                            thực hiện và giúp bạn tạo ra những bữa ăn ngon miệng và dinh dưỡng tại nhà.
                            [...]</p>
                        <h4><a href="recipes.jsp" class="button">Xem thêm</a></h4>
                    </div>
                </div>
            </div>
            <!-- Left-Button -->
            <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
                <i class="fa-solid fa-angle-left" style="margin-top: 15px;"></i>
                <span class="sr-only">Previous</span>
            </a>
            <!-- Right-Button -->
            <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
                <i class="fa-solid fa-angle-right" style="margin-top: 15px;"></i>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <script src="js/custom.js"></script>
    </div>
</section>
<section id="event">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="event_1">
                    <h3>Công Thức</h3>
                    <div class=" content-top2">
                        <h4 class="text-center">O</h4>
                    </div>
                </div>
                <% for (int i = 0; i < recipeList.size(); i++) {
                %>
                <div class="col-sm-6">
                    <div class="event_2">
                        <!-- colored -->
                        <div class="ih-item square colored effect14 bottom_to_top"><a href="details.jsp">
                            <div class="img"><img src="<%=recipeList.get(i).getThumbnail() %>" alt="abc"
                                                  class="img-responsive"></div>
                            <div class="info">
                                <h3><%=recipeList.get(i).getName() %>
                                </h3>
                                <p><%=recipeList.get(i).getIntro() %>
                                </p>
                            </div>
                        </a></div>
                        <!-- end colored -->
                    </div>
                </div>
                <% } %>
            </div>
            <div class="col-sm-12" style="margin-top: 30px;">
                <div class="event_1">
                    <a href="recipes.jsp" class="button">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="fusion">
    <div class="container">
        <div class="row">
            <div class="fusion_1">
                <h3>Công Thức Nổi Bật</h3>
                <div class=" content-top2">
                    <h4 class="text-center">O</h4>
                </div>
            </div>
            <div class="fusion_2 clearfix">
                <div class="col-sm-6 space_all">
                    <div class="fusion_3">
                        <a href="#"><img src="img/15.jpg" alt="abc" class="img_responsive"></a>
                    </div>
                </div>
                <div class="col-sm-6 space_all">
                    <div class="fusion_4">
                        <h3>Everyday Specials</h3>
                        <h4>Pasta Recipe</h4>
                        <p>Pasta is one of the most popular North Indian pasta dishes. It is a simple preparation which
                            can...</p>
                        <a href="#" class="button">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="noodles">
    <div class="container">
        <div class="row">
            <div class="noodles_1">
                <h3>Công Thức Mới Tải Lên</h3>
                <div class=" content-top2">
                    <h4 class="text-center">O</h4>
                </div>
            </div>
            <div class="noodles_2 clearfix">
                <% for (int i = 0; i < newest.size(); i++) { %>
                <div class="col-sm-3">
                    <div class="noodles_3">
                        <a href="details.jsp"><img src="<%=newest.get(i).getThumbnail() %>" alt="abc"
                                                   class="img_responsive"></a>
                        <h4><%=newest.get(i).getName() %>
                        </h4>
                        <p><%=newest.get(i).getIntro() %>
                        </p>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</section>
<%@include file="footer.jsp" %>
</body>
</html>