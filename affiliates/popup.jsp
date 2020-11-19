<html>
<head>
<title>Affiliate Links</title>
<style type="text/css">
<!--
#Links {color:#003366;padding:5px 0px 5px 0px;font-weight:bold}
//-->
</style>
</head>
<body>
<!-- Wrapper to avoid printing "null" when no parameter is passed to page //-->
<%!
String blanknull(String s) {
return (s == null) ? "" : s;
}
%>
<div><strong>Order Link</strong></div>
<div id="Links"><%= blanknull(request.getParameter("oL")) %></div>
<br />
<%
if (request.getParameter("dL") != "") {
%>
<div><strong>Demo Download Link</strong></div>
<div id="Links">https://secure.bmtmicro.com/demo?<%= blanknull(request.getParameter("dL")) %></div>
<%
}
else {
%>
<span style="color:red">Demo Download Link not available, please contact developer.</span>
<%
}
%>
<br />
<%
if (request.getParameter("pL") != "") {
%>
<div><strong>Product Information Link</strong></div>
<div id="Links">https://secure.bmtmicro.com/demo?<%= blanknull(request.getParameter("pL")) %></div>
<%
}
else {
%>
<span style="color:red">Product Link not available, please contact developer.</span>
<%
}
%>
</body>
</html>
