<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp방식 구구단</h1>
	<%
		int dan = Integer.parseInt(request.getParameter("dan")); 
		// getParameter: 일반 메소드. 문자열 스트링을 매개변수로 받고 문자열로 리턴한다.
		// parseInt: 스태틱 메서드 (클래스 이름으로 바로 호출할 수 있는 메서드)
		System.out.println(dan+"<--dan"); // 디버깅: 지금까지 코드가 정상적으로 출력되는지 확인
		for(int i=1; i<10; i++){
	%>
			<!-- 9개의 출력문이 필요 -->
			<div><%=dan%>*<%=i%>=<%=dan*i%></div> <!-- 입력값 있음 -->
	<%
		}
	%>
</body>
</html>