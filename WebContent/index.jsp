<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnWay - �¡������������� ���� �پ��� Ŭ����</title>
<!-- ������ ã�Ƽ� �ٿ����� -->
<script src="https://kit.fontawesome.com/9b7675f701.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
<script type="text/javascript">



</script>
</head>
<body>

<header>
	<!-- �ΰ� -->
	<ul class="header-list">
		<li><div><img alt="�ΰ�" src="resources/image/main_Logo.png" width="170px" height="40px"/></div></li>
		
	<!-- �˻�â -->	
		<li>
		<div class="searchContainer">
			<div class="search_Box">
				<table class="search_Elements">
					<tr>
						<td>
							<input type="text" placeholder="ã���ô� Ŭ������ �����Ű���?" class="search">
						</td>
						<td>
							<a href="#"><img src="resources/image/search_icon.png" style="float: right;"/></a>
						</td>
					</tr>
				</table>
			</div>
		</div>
		</li>
			
 
	<!-- �޴� -->	
		<li>
			<div>
				<input type="checkbox" id="menuicon">
				<label for="menuicon">
					<span></span>
					<span></span>
					<span></span>
				</label>
				<div class="sidebar">
					<ul class="sitemap-ul">
						<li><a href="#"></a>
							<ul id="submenu">
								<li><a href="#">����</a></li>
								<li><a href="#">����������</a></li>
								<li><a href="#">�̺�Ʈ</a></li>
								<li><a href="#">��������</a></li>
								<li><a href="#">������</a></li>
								<li><a href="#">�ǽð����</a></li>
							</ul>
						</li>
					</ul>
				</div>			
			</div>
		</li>
	
		
			<li>
				<div class="login">
	     			 <a href="login/main_regist.jsp"><i class="fas fa-sign-in-alt"></i>LOGIN</a>
	   			</div>
			</li>
			
			<li>   
			   <div class="join">
			      <a href="login/inmain_regist.jsp"><i class="fas fa-user-friends"></i> JOIN</a>
			   </div>
		   </li>
					   
		
		 
		</ul>
	


</header>
<main>

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- �����̵� ���� -->
			<li class="slideitem">
				<a>
					<div class="textbox">
						<h3>���ο� ��� ã��</h3>
						<p>�¶������� ���ϰ� ��⼼��!</p>
					</div> .............................................
					<img src="resources/image/slide_camera.png">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3></h3>
						<p></p>
					</div>
					<img src="resources/image/slide_painting.png">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3></h3>
						<p></p>
					</div>
					<img src="resources/image/slide_yoga.png">
				</a>
			</li class="slideitem">

			<!-- ��,�� �����̵� ��ư -->
			<div class="slide-control">
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<!-- ����¡ -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>
</div>

	<div class="category">
		<a href="#"><i class="fas fa-desktop"></i> IT</a>
		<a href="#"><i class="fas fa-utensils"></i> Cooking</a>
		<a href="#"><i class="fas fa-language"></i> Language</a>
		<a href="#"><i class="fas fa-coins"></i> Stock</a>
		<a href="#"><i class="fas fa-palette"></i> Art</a>
		<a href="#"><i class="fas fa-running"></i> Sport</a>
		<a href="#"><i class="fas fa-map-marked"></i> Around Teacher</a>
	</div>
	
	<section>
		<div class="sec_title">�α� CLASS</div>
		����
	</section>
	
	<section>
		<div class="sec_title">�������� EVENT</div>
		����
	</section>
</main>

<footer>
	<div class="last">
		<span class="footerLogo">
			<h1>LearnWay</h1>
		</span>
		<div class="addrWrap">
			<sub>
				����� ������ ������� TEL:1234-5678, FAX:1234-5679,
				<p class="copyright">Copyright(C) 2021 All Right Reserved.</p>
			</sub>
			<a href="#"><sub>�̿���</sub></a>
			<a href="#"><sub>��������ó����ħ</sub></a>
		</div>
	</div>
</footer>


</body>
</html>