<%@page import="java.text.*"%>
<!-- DecimalFormat 메서드 사용을 위한 import -->
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mlist</title>
<link rel="stylesheet" href="style.css?after">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<h2> 회원정보조회 </h2>
<form>
<!-- 
	<form> : 백엔드 서버로 데이터를 보낼 수 있는 태그
	name : form의 이름
	action : 데이터가 전송되는 백엔드의 주소
	method : 전송 방식
 -->
	<table border="1">
		<tr><!-- table row의 약자, 가로줄(열) 생성 -->
			<td style="width:150px;"> 수강월 </td><!-- table date의 약자, 셀을 생성  -->
			<td style="width:150px;"> 회원번호 </td>
			<td style="width:150px;"> 회원명 </td>
			<td style="width:150px;"> 강의명 </td>
			<td style="width:150px;"> 강의장소 </td>
			<td style="width:150px;"> 수강료 </td>
			<td style="width:150px;"> 등급 </td>
		</tr><!-- 1개의 table row(가로줄)에 7개의 table data(셀) 존재 -->
<%
// 스크립틀릿 태그 : html 코드 안에서 JAVA 프로그래밍 언어를 사용할 수 있게 한다. 

	request.setCharacterEncoding("UTF-8");
	// request가 이루어지는 언어를 UTF-8로 인코딩 선언 

try{// 오류를 찾아내기 위한 try..catch문의 try 부분
	
	String sql=	"SELECT regist_month, cl.c_no, c_name, class_name, class_area, tuition, grade "+
				"FROM tbl_teacher_202201 te, tbl_member_202201 me, tbl_class_202201 cl "+
				"WHERE te.teacher_code=cl.teacher_code and me.c_no=cl.c_no";
	// sql문을 실행하여 String 타입의 sql 변수에 저장
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	// PreparedStatement 객체 생성 : sql문을 실행하는데 사용된다.
	// pstmt에 db.jsp페이지의 con.prepareStatement 메서드 호출하여 sql변수에 저장된 값을 인자로 사용하여 나온 결과를 변수 PreparedStatement pstmt에 저장한다.
	
	ResultSet rs = pstmt.executeQuery();
	// ReusultSet : pstmt의 sql문을 실행하여 나온 결과를 rs변수에 저장한다.
		
	while(rs.next()){
		// rs.next() : sql문을 통해 얻은 데이터에서 첫번째행에서 마지막 행까지를 추출할때나 행이 있는지 없는지 판단할때 사용한다.
		// 커서를 이동하여 마지막 결과에 도달할 때 까지 실행하는 것이라고 이해하면 된다.
		String resist_month = rs.getString(1); // 202203
		String month = resist_month.substring(0,4) + "년" + resist_month.substring(4,6) + "월"; // 2022년03월
        // subString(시작인덱스,끝+1인덱스) : 글자 추출
		int tuition = rs.getInt(6);
		DecimalFormat transformat = new DecimalFormat("￦ ###,###,### ");
		String price = transformat.format(tuition);
%>
		<tr>
			<td><%=month %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=price %></td>
			<td><%=rs.getString(7) %></td>
		</tr>	
<%
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
		
	</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>