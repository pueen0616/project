<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/common.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">	
</script>
<style>
.test img, .test table, {
	 border: 1px
 
	 solid
 
	 black;
}
.test img {
	width: 120px;
	height: 150px;
}

test th, .test td {
	border: 1px solid black;
	width: 60px;
}
.picNum {
display: none;
}

a{
display : inline;
}


<!-- -->
button {
background:none;
border:0;
outline:0;
cursor:pointer;
}
.tab_menu_container {
display:flex;
}
.tab_menu_btn {
width:80px;
height:40px;
transition:0.3s all;
}
.tab_menu_btn.on {
border-bottom:2px solid #df0000;
font-weight:700;
color:#df0000;
}
.tab_menu_btn:hover {
color:#df0000;
}
.tab_box {
display:none;
padding:20px;
}
.tab_box.on {
display:block;
}
.main {
    min-width: 320px;
    max-width: 800px;
    padding: 50px;
    margin: 0 auto;
    background: #ffffff;}

section {
    display: none;
    padding: 20px 0 0;
    border-top: 1px solid #ddd;}

/*������ư ����*/
  input {
      display: none;}

label {
    display: inline-block;
    margin: 0 0 -1px;
    padding: 15px 25px;
    font-weight: 600;
    text-align: center;
    color: #bbb;
    border: 1px solid transparent;}

label:hover {
    color: #2e9cdf;
    cursor: pointer;}

/*input Ŭ����, label ��Ÿ��*/
input:checked + label {
      color: #555;
      border: 1px solid #ddd;
      border-top: 2px solid #2e9cdf;
      border-bottom: 1px solid #ffffff;}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4 {
    display: block;}
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="main">
    <input id="tab1" type="radio" name="tabs" checked> <!--����Ʈ �޴�-->
    <label for="tab1">��ϼ�</label>

    <input id="tab2" type="radio" name="tabs">
    <label for="tab2">�������ݼ�</label>

    <input id="tab3" type="radio" name="tabs">
    <label for="tab3">�������ݼ�</label>

    <input id="tab4" type="radio" name="tabs">
    <label for="tab4">������</label>

    <section id="content1">
        <p>tab menu1�� ����</p>
    </section>

    <section id="content2">
        <p>tab menu2�� ����</p>
    </section>

    <section id="content3">
        <p>tab menu3�� ����</p>
    </section>

    <section id="content4">
        <p>tab menu4�� ����</p>
    </section>

</div>
	

		<div class="fixed_img_col">
			<c:forEach items="${roomlist }" var="item" varStatus="i">
				<ul id="roomlist">
					<li><a href="./host/hostDetail-123.jsp"> <span class="thumb">
								<img alt="�־ƹ��͵��ȳ�����"
									src="${pageContext.request.contextPath}/img/${item.pic}">
								<em>-</em>
						</span> <span><b>${item.roomName}</b></span>
					</a>
						<p>${item.roomPrice}</p></li>
				</ul>
				<div class="picNum">${item.picNum}</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>