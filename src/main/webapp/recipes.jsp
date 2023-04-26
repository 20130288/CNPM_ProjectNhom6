<%@ page import="vn.edu.hcmuaf.st.DAO.RecipeDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.st.Entity.Recipe" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh sách công thức</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="css/recipes.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<% RecipeDAO recipeDAO = new RecipeDAO();
    List<Recipe> recipeList = recipeDAO.getIngredientList();
    if (recipeList == null) {
        recipeList = new ArrayList<>();
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
                    <li><a href="index.jsp">TRANG CHỦ</a></li>
                    <li class="active"><a href="recipes.jsp">CÔNG THỨC</a></li>
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li><a href="login.jsp">TÀI KHOẢN</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</section>
<section id="recipes_main">
    <div class="recipes_inner clearfix">
        <div class="container">
            <div class="row">
                <div class="recipes_main_1">
                    <h1>Danh Sách Công Thức</h1>
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><i class="fa-solid fa-angles-right"></i></li>
                        <li>Danh sách công thức</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="cooking">
    <div class="container">
        <div class="row">
            <div class="cooking_1 clearfix">
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion">By Cuisine</option>
                            <option value="Hindu">North</option>
                            <option value="Muslim - Shia">South</option>
                            <option value="Muslim - Sunni">East</option>
                            <option value="Muslim - Others">West</option>
                            <option value="Christian">Oriental</option>
                            <option value="Sikh">Continental</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion">By Meal Type</option>
                            <option value="Hindu">Breakfast</option>
                            <option value="Muslim - Shia">Lunch</option>
                            <option value="Muslim - Sunni">Dinner</option>
                            <option value="Muslim - Others">Small Meals</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion">By Ingredient</option>
                            <option value="Hindu">Paneer</option>
                            <option value="Muslim - Shia">Spinach</option>
                            <option value="Muslim - Sunni">Peas</option>
                            <option value="Muslim - Others">Lentil Based</option>
                            <option value="Christian">Potato</option>
                            <option value="Sikh">Potol (Parwal)</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion">By Steps</option>
                            <option value="Hindu">Step 2</option>
                            <option value="Muslim - Shia">Step 3</option>
                            <option value="Muslim - Sunni">Step 4</option>
                            <option value="Muslim - Others">Step 5</option>
                            <option value="Christian">Step 6</option>
                            <option value="Sikh">Step 7</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion">By Dish Type</option>
                            <option value="Hindu">Curry</option>
                            <option value="Muslim - Shia">Dry Veg</option>
                            <option value="Muslim - Sunni">Mashed Veg</option>
                            <option value="Muslim - Others">Stir Fry</option>
                            <option value="Christian">Gravy</option>
                            <option value="Sikh">Thick Gravy</option>
                        </select>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="cooking_2">
                        <select class="input-text">
                            <option value="Religion"> Diet Health</option>
                            <option value="Hindu">Low Calorie</option>
                            <option value="Muslim - Shia">Gluten Free</option>
                            <option value="Muslim - Sunni">High Protein</option>
                            <option value="Muslim - Others">Low Fat</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="recipes">
    <div class="container">
        <div class="row">
            <div class="recipes_1 clearfix">
                <% for (int i = 0; i < recipeList.size(); i++) { %>
                <div class="col-sm-4">
                    <div class="recipes_2">
                        <a href="details.jsp"><img src="<%=recipeList.get(i).getThumbnail() %>" alt="abc"
                                                   class="img_responsive"></a>
                        <h4><%=recipeList.get(i).getName() %></h4>
                        <p><%=recipeList.get(i).getIntro() %></p>
                        <a href="details.jsp" class="button">Xem thêm</a>
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