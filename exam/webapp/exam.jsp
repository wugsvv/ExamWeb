<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="js/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- css的引入 -->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap/js/bootstrap.js"></script>
<!-- js的引入 -->
<style type="text/css">
.bottom {
	position: absolute;
	right: 0px;
	bottom: 0px;
	background: #000000;
	color: #fff;
	display: block;
	width: 100%;
	text-align: center;
	z-index: 10;
}

.bottom span {
	position: relative;
	display: block;
	left: 0;
}

.head {
	position: fixed;
	height: 6rem;
	width: 100%;
	right: 0;
	top: 0;
	z-index: 999;
	background-color: white;
}

.wrapper {
	min-height: 100%;
}

.wrapper .content {
	padding-bottom: 50px;
}

.footer {
	position: absolute;
	right: 0px;
	bottom: 0px;
	background: #000000;
	color: #fff;
	display: block;
	width: 100%;
	text-align: center;
	z-index: 10;
	/*position: relative;*/
	margin-top: 50px;
	height: 50px;
	clear: both;
}

.clearfix::after {
	display: block;
	content: ".";
	height: 0;
	clear: both;
	visibility: hidden;
}
.img{
	position: relative;
	left: 50%;
	top: 50%;
	margin: -70px 0 0 -70px;
}
footer {
  background-color: #333;
  color: #fff;
  padding: 20px 0;
  text-align: center;
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.footer-left p {
  margin: 0;
}

.footer-right ul {
  list-style-type: none;
  padding: 0;
}

.footer-right ul li {
  display: inline-block;
  margin-right: 10px;
}

.footer-right ul li a {
  text-decoration: none;
  color: #fff;
}
</style>

<title>考试系统</title>
</head>
<body >
	<!-- 导航栏 -->
	<nav class="navbar navbar-default ">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">考试系统</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> 科目 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="math.html">数学</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">语文</a></li>

							<li role="separator" class="divider"></li>
							<li><a href="#">C语言</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Java</a></li>
						</ul></li>
					<li><a href="grade/gradeList.html">成绩</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"> 知识点复习 <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="knowledge.html">笔记</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">题型</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">题库</a></li>

							<li role="separator" class="divider"></li>
							<li><a href="#">重点</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">难点</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
				<ul class="nav" style="margin-top: 13px;">
				    
				    <c:if test="${null==number }">
				    <li class="active" style="float: right;"><a href="Login.jsp">登录</a>
					<li style="float: right;"><a href="Register.jsp">注册</a></li>
				    </c:if>
				    
				   <c:if test="${null!=number }">
				    <li class="active" style="float: right;">欢迎登录</li>
				    </c:if>
					
				    
				   
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- 轮播广告 -->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="img/000.jpg" style="width:75% ; height:300px ; margin-left: 150px;" alt="...">
				<div class="carousel-caption">...</div>
			</div>
			<div class="item">
				<img src="img/001.jpg" style="width:75% ;height:300px ;margin-left: 150px" alt="...">
				<div class="carousel-caption">...</div>
			</div>
			...<div class="item">
				<img src="img/002.jpg" style="width:75% ;height:300px ;margin-left: 150px" alt="...">
				<div class="carousel-caption">...</div>
			</div>
      <div class="item">
				<img src="img/003.jpg" style="width:75% ;height:300px ;margin-left: 150px" alt="...">
				<div class="carousel-caption">...</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

<!--系统推荐-->


<h3>系统推荐<small>必学课程</small></h3><hr>
			<div class="row">
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
			        <h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
			        <h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
			        <h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
					<h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
					<h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
			        <h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
					<h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			  <div class="col-md-3" style="padding-left: 7px;padding-right: 7px;">
			    <div class="thumbnail">
			      <img src="img/003.jpg" alt="...">
			      <div class="caption">
					<h4>何骆斌老师</h4>
			        <p>这是最好的课，也是最简单的课</p>
			      </div>
			    </div>
			  </div>
			</div>
		</div>



    <!--footer  -->
    <footer>
      <div class="footer-content">
        <div class="footer-left">
          <p>&copy; 2023 云考试系统. Copyright 2023 江靖&王亚鑫.All rights reserved.</p>
  
        </div>
        <div class="footer-right">
          <nav>
            <ul>
              <li><a href="#">首页</a></li>
              <li><a href="#">关于我们</a></li>
              <li><a href="#">产品</a></li>
              <li><a href="#">联系我们</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </footer>

</body>
</html>