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
    <title>BMT Micro Affiliate Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/addPages.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://secure.bmtmicro.com/servlets/System.Util"></script>
    <script src="https://secure.bmtmicro.com/servlets/CustomForms.CustomForm"></script>
    <script>
      function process(form){
        if (isBlank (form.LOGINNAME.value)) {
          alert ("You must input a Login Name");
          form.LOGINNAME.focus ();
          return (false);
        }
        if (form.LOGINNAME.value.length < 4) {
          alert ("The login name must be at least 4 characters.");
          form.LOGINNAME.focus ();
          return (false);
        }
        if (isBlank (form.EMAIL.value)) {
          alert("You must input an Email Address");
          form.EMAIL.focus();
          return false;
        }
        if (!isValidEmail (form.EMAIL.value)) {
          alert("You must input a valid Email Address");
          form.EMAIL.focus();
          return false;
        }
        if (form.TERMS.checked != true) {
          alert ("Please take the time to read the Terms and Conditions for BMT Micro Affiliates!");
          form.TERMS.focus ();
          return (false);
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
        form.submit();
        return (true);
      }
    </script>
  </head>
  <body>
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <div class="col-lg-2">
              <aside class="sidebar" role="complementary">
                <img src='<c:url value="https://affiliates.bmtmicro.com/images/bmt-micro-logo-new-min.png"></c:url>' alt="BMT Micro, Inc. logo">
                <div>
                  <a class="sidebar-group" href="https://www.bmtmicro.com/">More about our services</a>
                </div>
              </aside>
            </div> <!-- /.col-lg-2 -->
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Affiliate Signup</h4>
              <p>This form is for new affiliates only. If you have previously signed up to be a BMT Micro Affiliate, please login <a href="https://affiliates.bmtmicro.com">here</a>. If you do not know how to log in, please contact our webmaster.</p>
              <p>Please read our <a href="https://affiliates.bmtmicro.com/affiliate-terms.jsp" target="_blank">Affiliate Terms</a>, then choose your Login Name and Password.</p>
              <form name="form1" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.Signup">
                <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/affiliate-signup-info.jsp" />
                <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/affiliate-signup-error.jsp" />
                <span>
                  <label>Login Name:&nbsp;</label>
                  <input type="text" name="LOGINNAME" size="35" style="margin-bottom: 1rem;" />
                </span>
                <br>
                <span>
                  <label>Email Address:&nbsp;</label>
                  <input type="text" name="EMAIL" size="35"  style="margin-bottom: 1rem;"/>
                </span>
                <br>
                <span>
                  <label>Password:&nbsp;</label>
                  <input type="password" name="PASSWORD" autocomplete="off" size="35" style="margin-bottom: 1rem;" />
                </span>
                <br>
                <span>
                  <label>Confirm Password:&nbsp;</label>
                  <input type="password" name="PASSWORD2" autocomplete="off" size="35" style="margin-bottom: 1rem;" />
                </span>
                <br>
                <span>
                  <input type="checkbox" name="TERMS" value="" style="margin-bottom: 2rem;"/>&nbsp;
                  I have read and agree to the <a href="https://affiliates.bmtmicro.com/affiliate-terms.jsp" target="_blank">Affiliate Terms</a>.
                </span>
                <br>
                <button type="button" name="button" class="save-btn" onclick="process(form)">Continue</button>
              </form>
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
