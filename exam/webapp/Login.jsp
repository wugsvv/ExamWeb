<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE >
<html>
	<html lang="ch">
	<head>
		<meta charset="utf-8">
		<title>登录</title>
		<style type="text/css">
			#title{
				font-family:"新宋体";
				position: absolute;
				color: brown;
				font-size: 60px;
			    text-align-last: center;
			    left: 40%;
			    top: 10%;
			}
			#content{
				position: absolute;
				top: 50%;/*顶部到元素*/
				left:30%;
				width: 40%;
				height:400px;
				margin-top:-200;/*边缘到底部*/		
				background-color: #34495e;
				text-align-last: center;
				/*这里做一个半透明效果*/
				filter:alpha(Opacity=60);
				-moz-opacity:0.8;
				opacity: 0.8;
			}
			#userid{
				color: #3498db;
				font-size: 30px;
				text-align: center;
				border-radius: 25px;/*边框圆角*/
			}
			#password{
				color: #3498db;
				font-size: 30px;
				text-align: center;
				border-radius: 25px;
			}
			#denglu{
				background-color: pink;
				border-radius:10px;
             	border:0;/*边框宽度0*/
            	height:50px;
             	width:90px;
            	padding:5px 10px;/*上下填充10 左右5*/
            	font-size: 20px;
			}
			#zhuce{
				background-color: pink;
				border-radius:10px;
             	border:0;/*边框宽度0*/
            	height:50px;
             	width:90px;
            	padding:5px 10px;/*上下填充10 左右5*/
            	font-size: 20px;
			}
			#content h1{
				color: white;
				font-size: 50px;			
			}
         </style>
	</head>
	<body background="img/1.jpg" style="background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
		<div id="title">
			<svg t="1585894995769" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3410" width="50" height="50"><path d="M0 0h1024v1024H0z" fill="#FFFFFF" p-id="3411"></path><path d="M212 80c-44.112 0-80 35.888-80 80v704c0 44.112 35.888 80 80 80h600c44.112 0 80-35.888 80-80V160c0-44.112-35.888-80-80-80H212m0-80h600c88.366 0 160 71.634 160 160v704c0 88.366-71.634 160-160 160H212c-88.366 0-160-71.634-160-160V160c0-88.366 71.634-160 160-160z" fill="#707070" p-id="3412"></path><path d="M322 12v1000a12 12 0 0 1-12 12h-56a12 12 0 0 1-12-12V12a12 12 0 0 1 12-12h56a12 12 0 0 1 12 12z" fill="#707070" p-id="3413"></path><path d="M678 80v199.11h88V80h-88m-60-60h208v283.652c0 19.582-17.908 35.458-40 35.458h-128c-22.092 0-40-15.876-40-35.458V20z" fill="#707070" p-id="3414"></path></svg>
			考试登录
		</div>
	<div id="content">	
	<span style="margin-left: 95px;color:#F00;"	>${info }</span>
		<h1 >Welcome</h1><br />
		<form action="Login"method="post" >
			<input type="text" name="number" id="userid" placeholder="请输入账号" /><br /><br />
			<input type="password" name="password1" id="password" placeholder="请输入密码" /><br /><br />
			<input type="submit" name="denglu" id="denglu" value="登录" />&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="zc.html" target="_blank"><input type="button" name="zhuce"id="zhuce"value="注册"/></a>
		</form></div>
	</body>
</html>	 	
    