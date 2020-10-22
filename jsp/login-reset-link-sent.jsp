<%@ include file="/includes/core.jsp" %>
<!DOCTYPE html>
<html>
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
    <%@ include file="includes/bootstrap_top_script.html" %>
    <link rel="stylesheet" href="https://affiliates-new.bmtmicro.com/css/style.css"/>
    <link rel="stylesheet" href="https://affiliates-new.bmtmicro.com/css/login.css"/>
    <link rel="stylesheet" href="https://affiliates-new.bmtmicro.com/css/responsive.css"/>
  </head>
  <body>
    <div class="container-fluid" style="height: calc(100vh - 350px);">
      <div class="main"></div>
      <div class="content-area">
        <div class="row text-center justify-content-center" style="margin-bottom: 20px;">
          <div class="col-lg-10">
            <img src='<c:url value="https://affiliates-new.bmtmicro.com/images/bmt-micro-logo-new-min.png"></c:url>' alt="BMT Micro, Inc. logo" height="70" style="margin-bottom: 20px;">
            <h5 style="color: #ffffff; letter-spacing: .5px; text-shadow: 1px 1px 3px rgba(0,0,0,0.7);">Affiliate's Control Panel</h5>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="box-style">
            <div class="affiliate-login-box" style="background-color: rgba(255, 255, 255, 0.3);">
              <h4 class="text-center">Reset Password Request Successful</h4>
              <p>A password reset link has been emailed to the email address we have on file.</p>
              <p>If you do not receive the email or if your email address has changed, please contact <a href="mailto:webassist@bmtmicro.com">webassist@bmtmicro.com</a> for assistance.</p>
            </div> <!-- /.affiliate-login-box -->
          </div> <!-- /.box-style -->
        </div> <!-- /.row justify-content-center -->
      </div> <!-- /.content-area -->
      <footer class="footer container-fluid">
        <div class="bottom-footer-content row text-center align-items-center">
          <div class="copyright col">
            <p>BMT Micro, Inc. Copyright &copy; 1992 - ${yearNow}</p>
          </div>
        </div>
      </footer>
    </div>
    <%@ include file="includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
