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
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <style media="screen" type="text/css">
      .marginBottom {
        margin-bottom: .1rem;
      }
    </style>
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
              <h4>Affiliate Help</h4>
              <p>Here you will find helpful information regarding features in the Developer's Center. More information will be added regularly. If you do not find the answer your looking for here, please check out our <a href="https://affiliates.bmtmicro.com/faqsstart.html" TARGET="_main">FAQS</a> page. If you still need additional help, please contact <a href="mailto:webmaster@bmtmicro.com">webmaster@bmtmicro.com</a> for assistance.</p>
              <div class="content-box overflow-auto">
                <h5>Product List</h5>
                <p>Click on the Full Product List to browse our affiliate product selections. To get your affiliate links, just click the join button next to the Vendor whose products you wish to sell. This will add you to the vendors affiliate list. Each product for that vendor will then have a "show link" option. This link will open a separate window showing the links available for you to add to your website. Depending on the links set up by the developer, you should have the option of using a direct order link, demo download link and full product information page link. Any link presented here will allow you to receive an affiliate commission upon completed sale. Copy and paste the desired link into your website and you're ready to go!</p>
                <hr>
                <h5>Sales Summary</h5>
                <p>The sales summary report is provided to help you keep track of how your affiliate sales are going, as well as what products are working for you. Enter the daterange desired and this report will list the product name, total number of sales for that product and amount due to affiliate for those sales.</p>
                <hr>
                <!-- <h5>Payment Report - (Coming soon!)</h5>
                <p>We are working on a payment report that will sum the total amount of your sales, list the payment amount and dates&nbsp;as they are paid as well as list the amount of subsequent sales.</p>
                <hr> -->
                <h5>Manage Account</h5>
                <p style="margin-bottom: 0;">To update your payment information, please select Update Account Info. Please remember that this is the information we use to pay you! Double check for accuracy. Vendors will receive your email information from this area to advise you of new products or specials.</p>
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
