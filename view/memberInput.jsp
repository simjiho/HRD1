<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDao"%>

<jsp:include page="master/header.jsp"/>
<head>
	<style type="text/css">
			*{
		padding: 0;
		margin: 0 auto;
		text-decoration: none;
	}
	header{
		width: 100%;
		height: 60px;
		line-height: 60px;
		font-size: 30px;
		background-color: #03A9F4;
		text-align: center;
		color: white;
		
	}
	nav{
		width: 100%;
		height: 40px;
		background: skyblue;
		line-height: 40px;
		color: white;
	}
	nav > a{
	padding-left: 10px;
	color: #333;
	}
	nav > ul{
		width: 90%;
	}
	nav > ul > li{
		width: 25%;
		float: left;
	}
	section{
		width: 100%;
	}
	section > .container{
		padding: 20px;
		margin: 0 auto;
	}
	section > .container .title{
		font-size: 30px;
		text-align: center;
		margin-bottom: 20px;
	}
	table, th, td{
		border: 1px solid black;
		text-align: center;
	}
	footer{
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		background: skyblue;
		color: white;
		position: absolute;
		bottom: 0;
	}
	</style>
</head>
<%
	MemberDao dao = new MemberDao();
	int custno = dao.getMaxCustNo();
%>

<section>
<div class="container">
		<p class="title">홈쇼핑 회원등록</p>
		<form action="memberInputProc.jsp" method="post" name="frm">
			<table width="600px">
				<tr>
						<td>회원번호(자동발생)</td>
						<td><input type="number" value="<%= custno %>" 
name="custno" id="custno" readonly="readonly"></td>
				</tr>
				
				<tr>
						<td>회원성명</td>
						<td><input type="text" id="custname" name="custname"></td>
				</tr>
				
				<tr>
						<td>회원전화</td>
						<td><input type="text" id="phone" name="phone"></td>
				</tr>
				
				<tr>
						<td>회원주소</td>
						<td><input type="text" id="address" name="address"></td>
				</tr>
				
				<tr>
						<td>가입일자</td>
						<td><input type="date" id="joindate" name="joindate"></td>
				</tr>
				
				<tr>
						<td>고객등급[A:VIP, B:일반, C:직원]</td>
						<td><select id="grade" name="grade">
								<option value="A">VIP</option>
								<option value="B">일반</option>
								<option value="C">직원</option>
							</select>
						</td>	
				</tr>
				
				<tr>
						<td>도시코드</td>
						<td><input type="text" id="city" name="city"></td>
				</tr>
				
				<tr>
						<td colspan="2" align="center">
						<input type="submit" value="가입하기" onclick="return checkForm()">
						</td>
				</tr>
			</table>
		</form>
</div>
</section>

<script>
	function checkForm() {
		if(document.frm.custname.value.trim() == "") {
				alert('회원성명을 입력하세요');
		document.frm.custnmae.focus();	
		return false;
		}
		if(document.frm.phone.value.trim() == "") {
			alert('회원전화를 입력하세요');
		document.frm.phone.focus();	
		return false;
		}
		if(document.frm.address.value.trim() == "") {
			alert('회원주소를 입력하세요');
		document.frm.address.focus();	
		return false;
		}
		if(document.frm.joindate.value.trim() == "") {
			alert('가입일자를 입력하세요');
		document.frm.joindate.focus();	
		return false;
		}
		if(document.frm.grade.value.trim() == "") {
			alert('고객등급을 입력하세요');
		document.frm.grade.focus();	
		return false;
		}
		if(document.frm.city.value.trim() == "") {
			alert('도시코드 입력하세요');
		document.frm.city.focus();	
		return false;
		}
		document.frm.submit();	
	}
	
</script>

<jsp:include page="master/footer.jsp"/>