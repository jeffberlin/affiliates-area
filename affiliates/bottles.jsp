<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@page contentType="text/html;charset=UTF-8"%>
<html>
<body>
<%
for (int i=100; i>0; i--)
{
%>
<%= i %> vendor bottles of beer on the wałł.<br>
<%
}
%>
Param:${requestScope.FOO}
</body>
</html>
