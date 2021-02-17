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
    <%@ include file="/includes/favicon-meta.html" %>
    <title>BMT Micro Affiliate Center</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/addPages.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://affiliates.bmtmicro.com/js/main.js"></script>
    <script>
      function uploadLogo (form) {
        if (isBlank (form.FILENAME.value)) {
          alert ("Please specify file to upload");
          form.FILENAME.focus ();
          return (false);
        }
        form.submit ();
        return (true);
      }

      function removeLogo (form) {
        form.FILENAME.value = "";
        form.submit ();
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
            <jsp:include page="/includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Upload Logo</h4>
              <div class="content-box">
                <div class="text-center" style="margin-bottom: 1rem;">
                  <img src="https://affiliates.bmtmicro.com/servlets/Affiliates.LogoImage?DEFAULT=https://secure.bmtmicro.com/Templates/TestLogo.png&AID=${requestScope.AID}" style="margin-bottom: 1rem;" />
                  <form name="LogoForm" enctype="multipart/form-data" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.LogoImage">
                    <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/products-logo-uploader.jsp" />
                    <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/error-page.jsp" />
                    <span>
                      <label>Filename:&nbsp;</label>
                      <input type="file" name="FILENAME" size="50" style="margin-right: .5rem;" />
                    </span>
                    <input type="button" name="button" onclick="uploadLogo (LogoForm);" value="Upload Logo" class="grey-btn" />
                    <input type="button" name="button" onclick="removeLogo (LogoForm);" value="Remove Logo" class="grey-btn" />
                  </form>
                </div> <!-- /.text-center -->
                <p style="font-size: .9rem;">You might have to refresh the page to see the uploaded logo. Only one logo can be used per affiiate account. Logo size should be a maximum of 700X200. Larger images will be sized to fit. Logo images will only work when using shopping cart 10 (parameter: CID=10). If you have any questions regarding custom logo use, please email <a href="mailto:webmaster@bmtmicro.com">webmaster@bmtmicro.com</a> for assistance.</p>
              </div> <!-- /.content-box -->
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="/includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
</html>
