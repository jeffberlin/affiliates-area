<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>BMT Micro Affiliates Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/addPages.css"/>
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/tabOptions.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://affiliates.bmtmicro.com/js/main.js"></script>
    <script>
      function init (form){
        form.ORDERNOTIFICATIONS_CHK.checked = (${requestScope.ORDERNOTIFICATIONS} != 0);
        form.VENDOREMAIL_CHK.checked = (${requestScope.VENDOREMAIL} != 0);

        for (i = 0; i < form.COUNTRY.options.length; i++) {
          if (form.COUNTRY.options[i].value == "${requestScope.COUNTRY}") {
            form.COUNTRY.options[i].selected = true;
            break;
          }
        }
        for (i = 0; i < form.STATE.options.length; i++) {
          if (form.STATE.options[i].value == "${requestScope.STATE}") {
            form.STATE.options[i].selected = true;
            break;
          }
        }
      }

      function process(form) {
        form.ORDERNOTIFICATIONS.value = form.ORDERNOTIFICATIONS_CHK.checked ? -1 : 0;
        form.VENDOREMAIL.value = form.VENDOREMAIL_CHK.checked ? -1 : 0;

        if (isBlank (form.ADDRESS1.value)) {
          alert("You must input an Address");
          form.ADDRESS1.focus();
          return false;
        }

        if (isBlank (form.CITY.value)) {
          alert("You must input a City");
          form.CITY.focus();
          return false;
        }

        if (isBlank (form.ZIP.value)) {
          alert("You must input a Postal Code");
          form.ZIP.focus();
          return false;
        }

        if (isBlank (form.COUNTRY.value)) {
          alert("You must input a Country");
          form.COUNTRY.focus();
          return false;
        }

        if (isBlank (form.PASSWORD.value)) {
          alert ("You must input a Password used to access the BMT Micro Affiliate Pages");
          form.PASSWORD.focus();
          return (false);
        }

        if (form.PASSWORD.value.length < 4) {
          alert ("The password must be at least 4 characters.");
          form.PASSWORD.focus();
          return (false);
        }

        if (form.PASSWORD2.value != form.PASSWORD.value) {
          alert ("Your Password does not match the second Password field. Please retype your password and try again.");
          form.PASSWORD.focus();
          return (false);
        }

        if (isBlank (form.EMAIL.value)) {
          alert("You must input an Email Address");
          form.EMAIL.focus();
          return false;
        }
        form.submit()
        return true
      }
    </script>
  </head>
  <body onload="init (document.account)">
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <jsp:include page="/includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title" id="account-page">
              <c:import url="https://affiliates.bmtmicro.com/servlets/Affiliates.Account">
                <c:param name="SESSIONID" value="${sessionid}" />
                <c:param name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/account-page.jsp" />
                <c:param name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/errorpage.jsp" />
                <c:param name="ACTION" value="1" />
              </c:import>
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="/includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
  <script>
    $('input[type=checkbox]').change(function(){
      $(this).prev('input[type=hidden]').val (this.checked ? -1 : 0);
    });
  </script>
</html>
