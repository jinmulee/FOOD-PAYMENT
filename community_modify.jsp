<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="community.dao.CommunityDAO" %>
<%@ page import="community.bean.CommunityDTO" %>
<%@ page import="org.json.JSONObject" %>
<%
request.setCharacterEncoding("UTF-8");

int seq = Integer.parseInt(request.getParameter("seq"));
String user_name = request.getParameter("user_name");
String user_pwd = request.getParameter("user_pwd");
String email = request.getParameter("email");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

CommunityDTO communityDTO = new CommunityDTO();
communityDTO.setSeq(seq);
communityDTO.setUser_name(user_name);
communityDTO.setUser_pwd(user_pwd);
communityDTO.setEmail(email);
communityDTO.setSubject(subject);
communityDTO.setContent(content);

CommunityDAO communityDAO = new CommunityDAO();
int su = communityDAO.communityModify(communityDTO);

String rt = null;

if(su > 0){
	rt = "OK";
}else{
	rt="FAIL";
}

JSONObject json = new JSONObject();
json.put("rt", rt);
System.out.println(json);
out.println(json);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>