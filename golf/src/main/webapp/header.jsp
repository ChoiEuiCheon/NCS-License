<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
<header style="position:fixed; top:0px; left:0px; width:100%; height:40px; 
line-height:40px; text-align:center; background-color:orange; font-size:20px;">
<b>골프연습장 회원 관리 프로그램 ver 1.0</b>
</header>
<!-- header(가장 윗 부분)의 스타일 지정 및 <b>태그(bold의 약자, 글씨 굵게하기) 지정-->

<nav style = "position:fixed; top:40px; left:0px; width:100%; height:30px; 
line-height:30px; background-color:pink; padding-left:20px;">
<a href="tlist.jsp">강사조회</a> &nbsp; &nbsp;
<a href="insert.jsp">수강신청</a> &nbsp; &nbsp;
<a href="mlist.jsp">회원정보조회</a> &nbsp; &nbsp;
<a href="salary.jsp">강사매출현황</a> &nbsp; &nbsp;
<a href="index.jsp">홈으로</a>&nbsp; &nbsp;
<!-- <a>태그에 클릭시 전환할 페이지를 href로 링크, &nbsp;로 띄워쓰기(공백) 삽입 -->
</nav>
</body>
</html>