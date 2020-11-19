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
      function getControlValue (control) {
        switch (control.type) {
          case 'select-one':
            return (control.options[control.selectedIndex].value);
          default:
            return (control.value);
        }
      }

      function process(form) {
        var isUSA = (getControlValue (form.COUNTRY) == "US");
        var isCanada = (getControlValue (form.COUNTRY) == "CA");
        if (isBlank (form.NAME.value)) {
          alert('You must input a Contact Name');
          form.NAME.focus();
          return (false);
        }
        if (isBlank (form.ADDRESS1.value)) {
          alert('You must input an address for payment purposes');
          form.ADDRESS1.focus();
          return (false);
        }
        if (isBlank (form.CITY.value)) {
          alert('You must input a City');
          form.CITY.focus();
          return (false);
        }
        if (isBlank (form.ZIP.value)) {
          alert('You must input a Postal Code');
          form.ZIP.focus();
          return (false);
        }
        if (isBlank (form.COUNTRY.value)) {
          alert('You must input a Country');
          form.COUNTRY.focus();
          return (false);
        }
        if ((isUSA || isCanada) && isBlank (getControlValue (form.STATE))) {
          alert ("You must provide your state!");
          form.STATE.focus ();
          return (false);
        }
        if ((form.STATE.type == 'select-one') && !isBlank (getControlValue (form.STATE))) {
          var USStateList = "AL,AK,AR,AZ,CA,CO,CT,DE,DC,FL,GA,HI,ID,IL,IN,IA,KS,KY,LA,ME,MD,MA,MI,MN,MS,MO,MT,NE,NV,NH,NJ,NM,NY,NC,ND,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VA,VT,WA,WV,WI,WY,AE,AA,AE,AE,AE,AP";
          if (USStateList.indexOf (getControlValue (form.STATE)) != -1) {
            if (!isUSA) {
              if (!confirm ("You have selected a US state but the country is not set to USA. Press Ok to change country to USA or Cancel to correct the error.")) {
                form.COUNTRY.focus ();
                return (false);
              }
              setControlValue (form.COUNTRY, "US");
              return (verifyAddressInfo (form));
            }
          }
          var CanadaProvinceList = "AB,BC,MB,NB,NF,NT,NS,NU,ON,PE,QC,SK,YT";
          if (CanadaProvinceList.indexOf (getControlValue (form.STATE)) != -1) {
            if (!isCanada) {
              if (!confirm ("You have selected a Canadian province but the country is not set to Canada. Press Ok to change country to Canada or Cancel to correct the error.")) {
                form.COUNTRY.focus ();
                return (false);
              }
              setControlValue (form.COUNTRY, "CA");
              return (verifyAddressInfo (form));
            }
          }
        }
        if (!isValidURL (form.WEB.value)) {
          alert('Please enter a full URL starting with "http://" or "https://"');
          form.WEB.focus();
          return (false);
        }
        form.submit();
        return (true);
      }

      function MM_openBrWindow(theURL,winName,features) { //v2.0
        window.open(theURL,winName,features);
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
              </aside>
            </div> <!-- /.col-lg-2 -->
            <div class="col-lg-10 col-md-12 page-title">
              <h4>Affiliate Terms</h4>
              <p><a href="http://www.bmtmicro.com/" target="_blank">More about our services</a></p>
              <div class="content-box">
                <p>There are no charges or set up fees in order to use our affiliate program.</p>
                <p>You may become an affiliate of any product with an affiliate program, although a developer may decline an affiliate at his/her discretion.</p>
                <p>Affiliate sales are subject to a 60 day withholding period.</p>
                <p>Affiliate payments are made 4 times a year, on or about March 1st, July 1st, October 1st, and December 28th.</p>
                <p>Affiliates are paid on our scheduled payment dates when the amount is equal to $20.00 USD or more. If affiliate sales are less than $20.00 in a given payment period, the amount is rolled into the next period.</p>
                <p>After the initial 60 day withholding period and the first scheduled affiliate payout, an affiliate may request that a payment be issued on a monthly basis or to receive an unscheduled payment during our monthly payment cycle. There is a $5.00 per month administrative fee for unscheduled monthly payments.</p>
                <p>Program payout amounts are set by the developers of a product and may change at any time. All questions regarding payout amounts should be directed to the developer of the product.</p>
                <p>We reserve the right to freeze payments due, if there is evidence to indicate fraudulent or deceptive means are being used to generate sales.</p>
                <p style="margin-bottom: 0;">It is an affiliate's duty to report income to the proper tax authorities. BMT Micro, Inc. is not paying affiliate commissions, the developer of program(s) in question is paying affiliate commissions on the sale of their program(s). We will provide a year-end summary of total sales in US dollars for a $5.00 administrative charge.</p>
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
