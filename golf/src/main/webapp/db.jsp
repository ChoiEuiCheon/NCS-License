<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Class.forName("oracle.jdbc.OracleDriver");
// JDBC 드라이버 로딩
Connection con = DriverManager.getConnection
("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
// Connection 객체 생성 
%>

<!-- 
	Oralce sql에 connect하기 위한 페이지
	db.jsp 페이지는 db연결이 필요한 부분에 import되어 사용된다.
-->