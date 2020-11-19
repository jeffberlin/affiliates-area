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
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://affiliates.bmtmicro.com/js/main.js"></script>
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
        var form = document.productlistform;
        form.JOINVENDORID.value = vendor;
        refreshReport (form);
      }
      function selectPage (page) {
        var form = document.productlistform;
        form.PAGE.value = page;
        refreshReport (form);
      }
      function selectCategory () {
        var form = document.productlistform;
        form.CATEGORY.value = form.CATEGORY_SELECTOR.options[form.CATEGORY_SELECTOR.selectedIndex].value;
        form.PAGE.value = 1;
        refreshReport (form);
      }
      function showLink (Orderlink,Demolink,Productlink) {
        var msgWindow = window.open("https://affiliates.bmtmicro.com/popup.jsp?oL="+escape(Orderlink)+"&dL="+escape(Demolink)+"&pL="+escape(Productlink), "detailsPopUp", "location=no,width=700,height=275,resizable=yes");
        msgWindow.focus();
      }

      function refreshReport(form) {
        submitToDiv (form, 'tableframe');
      }

      function filterKeyPress(event) {
        if (event.keyCode == 13) {
          refreshReport (document.productlistform);
          event.preventDefault();
          return (true);
        }
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
            <jsp:include page="includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Affiliate Product List</h4>
              <div class="content-box overflow-auto d-flex flex-column">
                <div class="overflow-auto h-100" name="tableframe" id="tableframe">
                  <form name="productlistform" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.ProductList">
                    <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/products-product-list-table.jsp" />
                    <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/error.jsp" />
                    <input type="hidden" name="JOINEDONLY" value="0" />
                  </form>
                </div> <!-- /#tableframe -->
                <div name="resultframe" id="resultframe">
                  <p style="font-size: .9rem; margin-bottom: 0;"><b>Note:</b>&nbsp;Prices listed above are full product price. To affiliate amount may be less if Developer is offering a discount.</p>
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
    $(document).ready(function(){ submitToDiv (document.productlistform, 'tableframe'); });
  </script>
</html>
