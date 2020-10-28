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
    <link rel="stylesheet" href="https://affiliates-new.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://affiliates-new.bmtmicro.com/js/main.js"></script>
    <style media="screen" type="text/css">
      .hdrrowb input {
        border-radius: 8px;
        border: 1px solid #000000;
        padding: .2rem .4rem;
        background-color: #dddddd;
        transition: all .2s ease;
        font-size: .8rem;
        letter-spacing: .5px;
      }
      .hdrrowb input:hover {
        background-color: #a9a9a9;
      }
    </style>
    <script>
      function joinVendor (vendor) {
        document.productlistform.JOINVENDORID.value = vendor;
        document.productlistform.submit();
      }
      function selectPage (page) {
        document.productlistform.PAGE.value = page;
        document.productlistform.submit();
      }
      function selectCategory () {
        document.productlistform.CATEGORY.value = document.productlistform.CATEGORY_SELECTOR.options[document.productlistform.CATEGORY_SELECTOR.selectedIndex].value;
        document.productlistform.PAGE.value = 1;
        document.productlistform.submit();
      }
      function showLink (Orderlink,Demolink,Productlink) {
        var msgWindow = window.open("https://affiliates-new.bmtmicro.com/popup.jsp?oL="+escape(Orderlink)+"&dL="+escape(Demolink)+"&pL="+escape(Productlink), "detailsPopUp", "location=no,width=700,height=275,resizable=yes");
        msgWindow.focus();
      }
      function init (form) {
        if ("${requestScope.FILTERBY}".indexOf ('#') == -1) {
          SetSelectorValue (form.FILTERBY,"${requestScope.FILTERBY}");
          form.FILTERMASK.value = "${requestScope.FILTERMASK}";
        }
      }

      function filterKeyPress(event) {
        if (event.keyCode == 13) {
          refreshReport ();
          return (true);
        }
      }
    </script>
  </head>
  <body onLoad="init(document.productlistform);">
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <jsp:include page="includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Affiliate Product List</h4>
              <div class="content-box overflow-auto">
                <div class="h-100" name="tableframe" id="tableframe">
                  <jsp:include page="products-joined-product-list-table.jsp" />
                </div>
              </div> <!-- /.content-box -->
            </div> <!-- /.col-lg-10 col-md-12 page-title -->
          </div> <!-- /.row justify-content-start -->
        </article>
      </div> <!-- /.container-fluid body-content -->
      <jsp:include page="includes/footer.jsp" />
    </div> <!-- /.main-raised -->
    <%@ include file="/includes/bootstrap_bottom_scripts.html" %>
  </body>
  <script>
    // $(document).ready(function(){ submitToDiv (document.productlistform, 'tableframe'); });
  </script>
</html>
