<%@page import="java.text.*"%>
<%@include file = "db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>
<h2> 강사매출현황 </h2>


<form>
<table border="1">
    <tr>
        <td style="width:150px;"> 강사코드 </td>
        <td style="width:150px;"> 강의명 </td>
        <td style="width:150px;"> 강사명 </td>
        <td style="width:150px;"> 총매출 </td>
    </tr>

<%
request.setCharacterEncoding("UTF-8");

try{
    String sql = "SELECT cl.teacher_code, class_name, teacher_name, SUM(tuition) salary "+
																	/* 
														    		합계 : SUM
																	평균 : AVG
																	개수 : COUNT
																	최소값 : MIN
																	최대값 : MAX
																	*/
            "FROM tbl_teacher_202201 te, tbl_class_202201 cl "+ 
            "WHERE te.teacher_code=cl.teacher_code "+
            "GROUP BY cl.teacher_code, class_name, teacher_name "+
            "ORDER BY cl.teacher_code";
    PreparedStatement pstmt = con.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    while(rs.next()){
    	int salary = rs.getInt(4);
    	DecimalFormat transformat = new DecimalFormat("￦ ###,###,###");
/*    	
		DecimalFormat transformat = new DecimalFormat("￦ ###,###,###.00");
		소수점 자리까지 표기하는 방법	
*/	
    	String salary2 = transformat.format(salary);
        %>
        <tr>
            <td> <%=rs.getString(1) %> </td>
            <td> <%=rs.getString(2) %> </td>
            <td style="text-align:right;"> <%=rs.getString(3) %> </td>
            <td style="text-align:right;"> <%=salary2%> </td>
        </tr>
        <%
    }
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<!-- 
	강사 총 매출액 조회 페이지
-->