<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/common.css">
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="wrap">
		<h1>���� ����Ʈ </h1>
		<table border="1">
			<thead>
				<tr>
					<td>����</td>
					<td>����</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roomlist }" var="item" varStatus="i">
					<tr>
						<td><c:out value="${item.roomName}" /></td>
						<td><c:out value="${item.roomPrice}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="fixed_img_col">
			<ul id="roomlist">
				<li><a href="./host/hostDetail.html"> <span class="thumb">
							<img alt="�־ƹ��͵��ȳ�����" src="./img/img_list1.png"> <em>Category</em>
					</span> <Strong>�̹��� ����</Strong>
				</a>
					<p>���� �����?���̷��� ���� �ɷ��� ��¥??</p></li>
			</ul>
			<ul id="roomlist">
				<li><a href="../host/hostDetail.html"> <span class="thumb">
							<img alt="�־ƹ��͵��ȳ�����" src="./img/img_list1.png"> <em>Category</em>
					</span> <Strong>�̹��� ����</Strong>
				</a>
					<p>���� �����?���̷��� ���� �ɷ��� ��¥??</p></li>
			</ul>
		</div>
	</div>
</body>
</html>