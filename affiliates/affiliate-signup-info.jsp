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
    <title>Signup free - Thousands of products to join as affiliate</title>
    <%@ include file="/includes/bootstrap_top_script.html" %>
    <%@ include file="/includes/style_menu_footer.html" %>
    <link rel="stylesheet" href="https://affiliates.bmtmicro.com/css/addPages.css"/>
    <script src="https://secure.bmtmicro.com/Templates/util.js"></script>
    <script src="https://secure.bmtmicro.com/servlets/System.Util"></script>
    <script src="https://secure.bmtmicro.com/servlets/CustomForms.CustomForm"></script>
    <script src="https://affiliates.bmtmicro.com/js/main.js"></script>
    <script>
      function init (form) {
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

        form.submit()
        return true
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
              <p>Please fill in your contact information below. This information is used for payment purposes and not given out to customers.&nbsp;<a href="http://www.bmtmicro.com/" target="_blank">More about our services</a>.</p>
              <div class="content-box overflow-auto">
                <form name="form1" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.Account">
                  <input type="hidden" name="ACTION" value="11" />
                  <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/main.jsp" />
                  <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/affiliate-signup-error.jsp" />
                  <span>
                    <label>Login Name:&nbsp;</label>
                    <input name="LOGINNAME" type="hidden" value="${requestScope.LOGINNAME}" style="margin-bottom: 1rem;" /> ${requestScope.LOGINNAME}
                  </span>
                  <br>
                  <span>
                    <label>Affiliate ID:&nbsp;</label>
                    <input name="AFFILIATEID" type="hidden" value="${requestScope.AFFILIATEID}" style="margin-bottom: 1rem;" /> ${requestScope.AFFILIATEID}
                  </span>
                  <br>
                  <span>
                    <label>Company Name:&nbsp;</label>
                    <input name="COMPANY" class="textfield3" size="35" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Name of the company who develops the product." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>Contact Name:&nbsp;</label>
                    <input name="NAME" class="textfield3" size="30" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Name of the Developer or Contact person." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>Company Address:&nbsp;</label>
                    <input name="ADDRESS1" class="textfield3" size="30" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title=" complete company (or individual) mailing address." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>Address 2:&nbsp;</label>
                    <input name="ADDRESS2" class="textfield3" size="30" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Second line of mailing address, if necessary." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>City:&nbsp;</label>
                    <input name="CITY" class="textfield3" size="30" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Your city" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" style="margin-right: 1.5rem;" />
                  </span>
                  <span>
                    <label>State/Province:&nbsp;</label>
                    <select name="STATE" style="margin-bottom: 1rem;">
                      <c:import url="https://secure.bmtmicro.com/Templates/Import.StateOptions"/>
                    </select>&nbsp;
                    <img class="popup" title="Select State or Province" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>ZIP/Postal Code:&nbsp;</label>
                    <input name="ZIP" class="textfield3" size="15" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="ZIP/Postal Code" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" style="margin-right: 1.5rem;" />
                  </span>
                  <span>
                    <label>Country:&nbsp;</label>
                    <select name="COUNTRY" style="margin-bottom: 1rem;">
                      <option value="">Select your Country</option>
                      ${requestScope.COUNTRYLIST}
                    </select>&nbsp;
                    <img class="popup" title="Please select your Country" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <p style="font-size: .9rem;">
                    If using "free" email address, such as Yahoo!, HotMail, etc., please supply us with an alternate email address. This address will not be given to customers.
                  </p>
                  <span>
                    <label>Account Email:&nbsp;</label>
                    <input name="EMAIL" class="textfield3" value="${requestScope.EMAIL}" style="margin-bottom: 1rem;" size="30" />&nbsp;
                    <img class="popup" title="Email address where we can contact you." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>Phone:&nbsp;</label>
                    <input name="PHONE" class="textfield3" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Your information is not given out to the customer." src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" style="margin-right: 1.5rem;" />
                  </span>
                  <span>
                    <label>Fax:&nbsp;</label>
                    <input name="FAX" class="textfield3" style="margin-bottom: 1rem;" />&nbsp;
                    <img class="popup" title="Fax number, if available" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <span>
                    <label>Website Address:&nbsp;</label>
                    <input name="WEBADDRESS" class="textfield3" size="35" style="margin-bottom: 2rem;" />&nbsp;
                    <img class="popup" title="Web address representing your company or products" src='<c:url value="https://affiliates.bmtmicro.com/images/questionMark.gif"></c:url>' alt="Question mark" />
                  </span>
                  <br>
                  <button name="reset" type="reset" class="save-btn" style="margin-right: .5rem;">Clear</button>
                  <button name="button" type="button" class="save-btn" onclick="process(form)">Submit</button>
                </form>
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
