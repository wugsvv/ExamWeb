<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
	<html lang="ch">
	<head>
		<title>注册</title>
		<script type="text/javascript">
			function  fun(){
				alert("默认代表您同意《用户服务协议》和《隐私政策》");
			}
			function  onclickfun(){
				var  nameobj=document.getElementById("zcname");
				var  nametext=nameobj.value;
				var  namespanobj=document.getElementById("namespan");
				var  natt=/^\w{3,5}$/;
				if(natt.test(nametext)!=true){
					namespanobj.innerHTML="用户名不合要求";
				}
				var  passobj=document.getElementById("zcpass");
				var  passtext=passobj.value;
				var  passspanobj=document.getElementById("passspan");
				var  patt=/^\w{6,12}$/;
				if(patt.test(passtext)!=true){
				passspanobj.innerHTML="密码不合要求";
			}
				var  passrobj=document.getElementById("zcrpass");
				var  passrtext=passrobj.value;
				var passrspanobj=document.getElementById("passrspan");
				if(passrtext!=passtext){
					passrspanobj.innerHTML="密码不正确";
				}

			}
		</script>
		<meta charset="utf-8">
		<style type="text/css">
			#lunkuo{
				position: absolute;
				top: 50%;/*顶部到元素*/
				left:30%;
				width: 40%;
				height:420px;
				margin-top:-200;/*边缘到底部*/		
				background-color: #f0a1a8;
				text-align-last: center;
				filter:alpha(Opacity=60);
				moz-opacity:0.6;
				opacity: 0.6;
			}
			#lunkuo input{
				font-size: 20px;
				text-align: center;
				border-radius: 25px;
			}
		</style>
	</head>
	<body background="img/1.jpg" onload="fun()"style="background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;" >
		<div id="lunkuo">
			<h1>注册</h1><br />
			<form action="Register"  method="post">	
				<svg t="1586146954028" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2643" width="23" height="23"><path d="M904.4 346.2c-21.5-50.7-52.2-96.3-91.3-135.4-39.1-39.1-84.6-69.8-135.4-91.3C625.3 97.4 569.5 86.1 512 86.1s-113.3 11.3-165.8 33.5c-50.7 21.5-96.3 52.2-135.4 91.3-39.1 39.1-69.8 84.6-91.3 135.4C97.4 398.7 86.1 454.5 86.1 512c0 57.5 11.3 113.3 33.5 165.8 21.5 50.7 52.2 96.3 91.3 135.4 39.1 39.1 84.6 69.8 135.4 91.3 52.5 22.2 108.3 33.5 165.8 33.5s113.3-11.3 165.8-33.5c50.7-21.5 96.3-52.2 135.4-91.3 39.1-39.1 69.8-84.6 91.3-135.4 22.2-52.5 33.5-108.3 33.5-165.8-0.2-57.5-11.5-113.3-33.7-165.8zM770.7 770.7c-69.1 69.1-161 107.2-258.7 107.2s-189.6-38.1-258.7-107.2-107.2-161-107.2-258.7 38.1-189.6 107.2-258.7 161-107.2 258.7-107.2 189.6 38.1 258.7 107.2 107.2 161 107.2 258.7-38.1 189.6-107.2 258.7z" p-id="2644"></path><path d="M618.9 552.8c47.3-33.6 78.2-88.7 78.2-151 0-102-83-185.1-185.1-185.1s-185.1 83-185.1 185.1c0 62.3 30.9 117.4 78.2 151-67.5 32.9-118.4 96-133.4 173.5-3.1 16.3 7.5 32 23.8 35.1 1.9 0.4 3.8 0.5 5.7 0.5 14.1 0 26.7-10 29.4-24.3 16.7-86.6 93-149.5 181.3-149.5 88.4 0 164.6 62.9 181.3 149.5 3.1 16.3 18.9 26.9 35.1 23.8 16.3-3.1 26.9-18.9 23.8-35.1-14.8-77.6-65.7-140.7-133.2-173.5zM512 276.7c69 0 125.1 56.1 125.1 125.1s-56.1 125-125.1 125-125.1-56.1-125.1-125.1 56.1-125 125.1-125z" p-id="2645"></path></svg>
				<input type="text" name="number" id="zcname"  placeholder="学生学号/教职工工号"/><span id="namespan"style="color: red;"></span><br /><br />		
				<svg t="1586146995954" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3403" width="23" height="23"><path d="M512 128a170.666667 170.666667 0 0 0-170.666667 170.666667v128h341.333334V298.666667a170.666667 170.666667 0 0 0-162.133334-170.453334L512 128z m298.666667 384H213.333333a42.666667 42.666667 0 0 0-42.666666 42.666667v298.666666a42.666667 42.666667 0 0 0 42.666666 42.666667h597.333334a42.666667 42.666667 0 0 0 42.666666-42.666667v-298.666666a42.666667 42.666667 0 0 0-42.666666-42.666667zM512 42.666667a256 256 0 0 1 256 256v128h42.666667a128 128 0 0 1 128 128v298.666666a128 128 0 0 1-128 128H213.333333a128 128 0 0 1-128-128v-298.666666a128 128 0 0 1 128-128h42.666667V298.666667a256 256 0 0 1 246.4-255.829334L512 42.666667z" p-id="3404"></path></svg>
				<input type="password" name="password1" id="zcpass" placeholder="密码:6-12位" /><span id="passspan"style="color: red;"></span><br /><br />				
				<svg t="1586147123231" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5214" width="23" height="23"><path d="M512 572.8c-48 0-88 40-88 88 0 41.6 28.8 76.8 67.2 84.8v75.2c0 11.2 8 19.2 19.2 19.2h3.2c11.2 0 19.2-8 19.2-19.2v-75.2c38.4-9.6 67.2-44.8 67.2-84.8 0-48-40-88-88-88z m0 134.4c-25.6 0-46.4-20.8-46.4-46.4s20.8-46.4 46.4-46.4 46.4 20.8 46.4 46.4-20.8 46.4-46.4 46.4z" fill="#3E3A39" p-id="5215"></path><path d="M780.8 448h-3.2v-118.4c0-145.6-118.4-264-264-264s-264 118.4-264 264V448h-4.8C188.8 448 144 492.8 144 547.2v313.6c0 54.4 44.8 99.2 99.2 99.2h537.6c54.4 0 99.2-44.8 99.2-99.2V547.2c0-54.4-44.8-99.2-99.2-99.2z m-484.8-118.4c0-120 97.6-216 216-216s216 97.6 216 216V448h-432v-118.4zM832 860.8c0 28.8-22.4 51.2-51.2 51.2H243.2c-28.8 0-51.2-22.4-51.2-51.2V547.2c0-28.8 22.4-51.2 51.2-51.2h537.6c28.8 0 51.2 22.4 51.2 51.2v313.6z" fill="#3E3A39" p-id="5216"></path></svg>
				<input type="password" name="password2" id="zcrpass" placeholder="请再次确认密码" /><span id="passrspan"style="color: red;"></span><br /><br />
				<svg t="1586147028498" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4245" width="23" height="23"><path d="M971.52 412.672a49.152 49.152 0 0 0-20.096-39.616L540.992 73.024a49.792 49.792 0 0 0-57.984 0L72.64 373.056a48.64 48.64 0 0 0-13.568 15.552 16.576 16.576 0 0 0-4.16 4.736 18.816 18.816 0 0 0-1.792 13.952c-0.192 1.792-0.64 3.52-0.64 5.376v498.496c0 27.072 22.016 49.152 49.152 49.152h820.736a49.408 49.408 0 0 0 49.152-49.152V412.672zM504.832 102.848c2.048-1.536 4.544-2.368 7.168-2.368s5.12 0.768 7.168 2.368l403.2 294.72L512 632.192 100.8 398.208l404.032-295.36z m426.176 816.96a12.288 12.288 0 0 1-8.64 3.584H101.632a12.16 12.16 0 0 1-12.16-12.16V434.304l413.376 235.264a18.688 18.688 0 0 0 18.368 0l413.312-236.352 0.064 477.952a12.8 12.8 0 0 1-3.584 8.64z m0 0" fill="#333333" p-id="4246"></path></svg>
				<input type="text" name="nickname" id="zcemail" placeholder="请输入姓名" /><br /><br />
				<svg t="1586147067477" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="5047" width="23" height="23"><path d="M690.08 128l-356.448 0.128a23.168 23.168 0 0 0-22.72 23.392l0.256 721.056c0 12.864 10.24 23.36 22.752 23.392l356.48-0.16a23.104 23.104 0 0 0 22.72-23.392l-0.256-721.024A23.104 23.104 0 0 0 690.08 128z m-141.792 711.648c0 20.576-16.224 37.312-36.256 37.312-20 0-36.288-16.672-36.256-37.28-0.032-20.576 16.192-37.312 36.224-37.312 20.032-0.032 36.288 16.736 36.288 37.28zM695.36 229.504l0.192 530.528c0 12.864-10.24 23.392-22.72 23.392l-321.632 0.064a23.2 23.2 0 0 1-22.784-23.36l-0.16-530.528c0-12.832 10.24-23.36 22.752-23.36l321.632-0.096c12.48-0.032 22.72 10.464 22.72 23.36z" fill="" p-id="5048"></path></svg>
				<input type="tel" name="phone" id="zcpgone" placeholder="请输入手机号" /><br /><br />
				<input type="image" src="img/3.png"onclick="onclickfun()">
			</form>
			
		</div>
	</body>
</html>