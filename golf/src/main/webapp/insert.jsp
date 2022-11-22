<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script><%-- check.js 연동 --%>
<jsp:include page="header.jsp"></jsp:include><%-- header.jsp 연동 --%>


<section style="position:fixed; top:70px; left:0px; width:100%; height:100%; background-color:lightgray">
<h2 style="text-align:center;"> 수강신청 </h2>
<form method="post" action="i_action.jsp" name="frm" style="display:flex; align-items:center; justify-content:center;">
	<table border="1">
		<tr>
			<td style="text-align:center"> 수강월 </td>
			<td> <input type="text" name="resist_month" style="width:150px"> 예) 202203 </td>
		</tr>

		<tr>
			<td style="text-align:center"> 회원명 </td>
			<td>
				<select name="c_name" style="width:150px" onchange="getvalue(this.value)">
				<%-- 
				onchange : 셀렉트 박스 값 변경될 때, 지정한 함수"getvalue"를 실행하고
				getvalue의 인자를 select 안의 value값으로 전달하겠다는 의미의 (this.value) 입력
				--%>
					<option value=""> 회원명 </option>
					<option value="10001"> 홍길동 </option>
					<option value="10002"> 장발장 </option>
					<option value="10003"> 임꺽정 </option>
					<option value="20001"> 성춘향 </option>
					<option value="20002"> 이몽룡 </option>
				</select>
			</td>
		</tr>

		<tr>
			<td style="text-align:center"> 회원번호 </td>
			<td> <input id="c_no" name="c_no" readonly style="width:150px"> </td>
		</tr>
		
		<tr>
			<td style="text-align:center"> 강의장소 </td>
			<td> 
				<input type="radio" name="class_area" value="서울본원"> 서울본원
				<input type="radio" name="class_area" value="성남분원"> 성남분원
				<input type="radio" name="class_area" value="대전분원"> 대전분원
				<input type="radio" name="class_area" value="부산분원"> 부산분원
				<input type="radio" name="class_area" value="대구분원"> 대구분원
			</td>
		</tr>

		<tr>
			<td style="text-align:center"> 강의명 </td>
			<td>
				<select name="class_name" style="width:150px" onchange="getvalue2(this.value)">
				<%-- 
				onchange : 셀렉트 박스 값 변경될 때, 지정한 함수"getvalue2"를 실행하고
				getvalue의 인자를 select 안의 value값으로 전달하겠다는 의미의 (this.value) 입력
				--%>
					<option value=""> 강의신청 </option>
					<option value="100000"> 초급반 </option>
					<option value="200000"> 중급반 </option>
					<option value="300000"> 고급반 </option>
					<option value="400000"> 심화반 </option>
				</select>
			</td>
		</tr>

		<tr>
			<td style="text-align:center"> 수강료 </td>
			<td> <input id="tuition" name="tuition" readonly style="width:150px">  </td>
		</tr>

		<tr style="text-align:center">
			<td colspan="2">
				<input type="button" value="수강신청" onclick="add()"> &nbsp;
				<input type="button" value="다시쓰기" onclick="res()">
			</td>		
		</tr>

	</table>
</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>