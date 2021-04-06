<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="m1.model.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 1. 요청 분석
		// ex) http://localhost/m2test/model1/gugu1.jsp?dan=9
		int dan = Integer.parseInt(request.getParameter("dan"));
	%>
	
	<%
		// 2. 요청 처리(Model Layer 이용)
		GuGuService service = new GuGuService(); // 스태틱이 아니어서 
		ArrayList<String> list = service.getGuGuDan(dan); // 요청처리하고 응답을 받은 것 // 처리결과-> 모델
		// 처리에 대한 결과물을 모델이라 한다
		// 모델을 획득하기 위한 것을 모델단이라 한다.
	%>
	
	<%
		// 3. 출력
		for(String s : list){
	%>
			<div><%=s %></div>
	<%
		}
	%>
</body>
</html>