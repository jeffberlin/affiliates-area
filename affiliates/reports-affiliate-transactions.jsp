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
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/table.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://affiliates.bmtmicro.com/js/calendar.js"></script>
    <script src="https://affiliates.bmtmicro.com/js/main.js"></script>
    <style media="screen" type="text/css">
      td[text], td[date], td[money] {
        border-right: 1px solid #a9a9a9;
      }
      td[money] {
        text-align: right;
      }
      td[date] {
        text-align: center;
      }
    </style>
    <script>
      function refreshReport (form) {
        if (CheckDateRange (form)) {
          submitToDiv (form, 'tableframe');
        }
      }
      function filterKeyPress(event) {
        if (event.keyCode == 13) {
          refreshReport (document.transactions);
          return (true);
        }
      }
      function showDetails(i) {
        window.open("", "detailsPopUp", "location=no,scrollbars=yes,width=680,height=480,resizable=yes").focus();
        document.bmtconfig.submit();
      }
      function checkFormat(form) {
        switch (parseInt (form.FORMAT.value)) {
          case 0:
            form.target = "_blank";
          break;
          case 1:
          case 2:
          case 3:
          default:
          form.target = "";
          break;
        }
        form.submit();
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
              <h4>Affiliate Transactions Report</h4>
              <div class="content-box d-flex flex-column overflow-auto">
                <form name="transactions" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.Transactions">
                  <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/reports-affiliate-transactions-table.jsp"/>
                  <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/error-page.jsp"/>
                  <div class="table-header">
                    <span>
                      From:&nbsp;
                      <input id="DATEFROM" name="DATEFROM" value="${bomDate}" onkeypress="filterKeyPress(event)"/>&nbsp;
											<img class="calendar" alt="Click Here to Pick the date" title="Click Here to Pick the date" onclick="show_calendar (this)" />
                    </span>
                    <span>
                      To:&nbsp;
                      <input id="DATETO" name="DATETO" value="${toDate}" onkeypress="filterKeyPress(event)"/>&nbsp;
											<img class="calendar" alt="Click Here to Pick the date" title="Click Here to Pick the date" onclick="show_calendar (this)" />
                    </span>
                    <span>
                      <button type="button" class="grey-btn" onclick="refreshReport (document.transactions);">Get Account Transactions</button>
                    </span>
                  </div> <!-- /.table-header -->
                </form>
                <div name="tableframe" class="h-100" id="tableframe">
                  <c:catch var="errormsg">
                    <c:import url="https://affiliates.bmtmicro.com/servlets/Affiliates.Transactions">
                      <c:param name="SESSIONID" value="${sessionid}" />
                      <c:param name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/reports-affiliate-transactions-table.jsp" />
                      <c:param name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/error-page.jsp" />
                      <c:param name="DATEFROM" value="${bomDate}" />
                      <c:param name="DATETO" value="${toDate}" />
                    </c:import>
                  </c:catch>
                  <%@ include file="/includes/catch.jsp" %>
                </div>
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
