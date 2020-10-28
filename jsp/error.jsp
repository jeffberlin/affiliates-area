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
    <script>
      function MM_reloadPage(init) {  //reloads the window if Nav4 resized
        if (init==true) with (navigator) {
          if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
          document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage;
          }
        } else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
      }
      MM_reloadPage(true);
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
                <img src='<c:url value="https://affiliates-new.bmtmicro.com/images/bmt-micro-logo-new-min.png"></c:url>' alt="BMT Micro, Inc. logo">
              </aside>
            </div> <!-- /.col-lg-2 -->
            <div class="col-lg-10 col-md-12 page-title">
              <h4>An error occurred</h4>
              <p>We are unable to complete your request at this time. The system may be down.</p>
              <p>Please wait 60 minutes and try your report again. If you continue to have difficulties, please contact <a href="mailto:affiliates@bmtmicro.com">affiliates@bmtmicro.com</a> for assistance.</p>
              <p>If further information regarding this error is available, it will be displayed below.</p>
              <p style="padding: 0 15px;">${requestScope.MESSAGE}</p>
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
