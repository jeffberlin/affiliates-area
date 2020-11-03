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
        var form = document.productjoined;
        form.JOINVENDORID.value = vendor;
        // form.submit();
        submitToDiv (form, 'tableframe');
      }

      function selectPage (page) {
        var form = document.productjoined;
        form.PAGE.value = page;
        // form.submit();
        submitToDiv (form, 'tableframe');
      }

      function showLink (Orderlink,Demolink,Productlink) {
        var msgWindow = window.open("https://affiliates-new.bmtmicro.com/popup.jsp?oL="+escape(Orderlink)+"&dL="+escape(Demolink)+"&pL="+escape(Productlink), "detailsPopUp", "location=no,width=700,height=275,resizable=yes");
        msgWindow.focus();
      }

      function init(form) {
        if ("##FILTERBY##".indexOf ('#') == -1) {
          SetSelectorValue (form.FILTERBY,"##FILTERBY##");
          form.FILTERMASK.value = "##FILTERMASK##";
          submitToDiv (form, 'tableframe');
        }
      }

      function refreshReport(form) {

      }

      function filterKeyPress(event) {
        if (event.keyCode == 13) {
          refreshReport (document.productjoined);
          return (true);
        }
      }
    </script>
  </head>
  <body onload="init(document.productjoined);">
    <!-- Blue background -->
    <div class="blue-bg"></div>

    <!-- Start of body content -->
    <div class="main-raised">
      <div class="container-fluid body-content">
        <article class="section">
          <div class="row justify-content-start">
            <jsp:include page="includes/menuSidebar.jsp" />
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Affiliate Joined Product List</h4>
              <div class="content-box overflow-auto d-flex flex-column">
                <form name="productjoined" method="post" action="https://affiliates-new.bmtmicro.com/servlets/Affiliates.ProductList">
                  <input type="hidden" name="NEXT_PAGE" value="https://affiliates-new.bmtmicro.com/products-joined-product-list-table.jsp" />
                  <input type="hidden" name="ERROR_PAGE" value="https://affiliates-new.bmtmicro.com/error.jsp" />
                  <input type="hidden" name="PAGE" value="1" />
                  <input type="hidden" name="JOINEDONLY" value="-1" />
                  <input type="hidden" name="JOINVENDORID" value="0" />
                  <div class="table-header">
                    <span>
                      Filter Type:&nbsp;
                      <select name="FILTERBY">
                        <option value="1"<c:if test="${requestScope.FILTERBY=='1'}"> selected</c:if>>Vendor Name</option>
                        <option value="2"<c:if test="${requestScope.FILTERBY=='2'}"> selected</c:if>>Product Name</option>
                        <option value="3"<c:if test="${requestScope.FILTERBY=='3'}"> selected</c:if>>Products since (YYYY-MM-DD)</option>
                      </select>
                    </span>
                    <span>
                      Filter By:&nbsp;
                      <input type="text" name="FILTERMASK" placeholder="Search" onkeypress="filterKeyPress(event)" />
                    </span>
                    <span>
                      <button type="button" class="grey-btn" onclick="refreshReport (document.productjoined);">Get Products List</button>
                    </span>
                  </div> <!-- /.table-header -->
                </form>
                <div class="overflow-auto h-100" name="tableframe" id="tableframe"></div> <!-- /#tableframe -->
                <div name="resultframe" id="resultframe">
                  <p style="font-size: .9rem; margin-bottom: 0;"><b>Note:</b>&nbsp;Prices listed above are full product price. To affiliate amount may be less if Developer is offering a discount.</p>
                </div> <!-- end #resultframe -->
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
    $(document).ready(function(){ submitToDiv (document.productjoined, 'tableframe'); });
  </script>
</html>
