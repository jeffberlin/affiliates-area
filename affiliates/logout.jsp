<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html>
  <body>
    <form name="logout" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.Logout">
      <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/login.jsp" />
    </form>
  <body>
  <script src="https://affiliates.bmtmicro.com/js/vendors.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script>$(document).ready(function(){ document.logout.submit (); });</script>
</html>
