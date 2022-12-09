<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<link rel="stylesheet" href="style.css?after">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<!-- 해당 위치에 include(포함하여 배치할) jsp 페이지 선택 -->

<section>
<!-- <section> 태그는 HTML 문서에 포함된 독립적인 섹션(section)을 정의할 때 사용하며 보통 제목 요소(h1~h6)를 자식 요소로 포함하고 있는 경우가 많음 -->
<!-- position:fixed로 section을 고정시킨 뒤, top:70px로 header.jsp page공간 확보 후 width,height:100%로 공간 활용 -->


	<h2> 과정평가형 자격 CBQ </h2>
	<!-- h2태그의 글자 정렬을 center로 정의 -->
	
	<p style="padding-left:20px;">
	국가직무능력표준(NCS : National Competency Standards)으로 설계된 교육ㆍ훈련 과정을 체계적으로 이수하고 내ㆍ외부 평가를 거쳐 취득하는 국가기술자격입니다.<br><br>
	<b>
	산업현장 중심의 교육 평가로 더 커지는 능력!<br><br>
	알고 있는 것에 할 수 있는 것을 더하는<br><br>
	과정평가형 자격은<br><br>
	현장 중심형 인재육성을 지원합니다.<br><br>
	</b></p>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
<!-- 
	index(메인화면) 페이지
-->