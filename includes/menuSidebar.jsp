<%@ include file="/includes/core.jsp" %>
<c:if test="${empty cookie['BMTMicro.Affiliates.VendorID'].value}">
  <script>
    window.location = "https://affiliates-new.bmtmicro.com/"; // Redirect to login page if this page is accessed and the vendor is not logged in
  </script>
</c:if>
<div class="col-lg-2">
  <aside class="sidebar" role="complementary">
    <img src="https://affiliates-new.bmtmicro.com/images-2/bmt-micro-logo.png" alt="BMT Micro, Inc. logo">
    <div class="dropright" style="padding-bottom: 0px;">
      <a class="dropdown-toggle affiliate-name" role="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">
        ${URLDecoder.decode(cookie['BMTMicro.Affiliates.Name'].value)}
      </a>
      <div class="dropdown-menu dropdown-menu-right text-center sidebar-options" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/chooseloginstart.html">My Account</a>
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/logout.html">Log Out</a>
      </div> <!-- /.dropdown-menu dropdown-menu-right sidebar-options -->
    </div> <!-- /.dropright -->
    <div class="affiliate-company">
      <span>${URLDecoder.decode(cookie['BMTMicro.Affiliates.Company'].value)}</span>
    </div> <!-- /.affiliate-company -->
    <div class="home-nav">
      <a class="sidebar-group" href="https://affiliates-new.bmtmicro.com/main.jsp">Home</a>
    </div> <!-- /.home-nav -->
    <div class="dropright">
      <a class="dropdown-toggle sidebar-group" role="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Info</a>
      <div class="dropdown-menu dropdown-menu-right text-center sidebar-options" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/faqsstart.html">FAQs</a>
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/helpstart.html">Help</a>
      </div> <!-- /.dropdown-menu dropdown-menu-right sidebar-options -->
    </div> <!-- /.dropright -->
    <div class="dropright">
      <a class="dropdown-toggle sidebar-group" role="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Products</a>
      <div class="dropdown-menu dropdown-menu-right text-center sidebar-options" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/joinedonlystart.html">Joined Product List</a>
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/productliststart.html">Full Product List</a>
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/logouploadstart.html">Logo Uploader</a>
      </div> <!-- /.dropdown-menu dropdown-menu-right sidebar-options -->
    </div> <!-- /.dropright -->
    <div class="dropright">
      <a class="dropdown-toggle sidebar-group" role="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Reports</a>
      <div class="dropdown-menu dropdown-menu-right text-center sidebar-options" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/affiliatesalesstart.html">Sales Summary</a>
        <a class="dropdown-item" href="https://affiliates-new.bmtmicro.com/transstart.html">Affiliate Transactions</a>
      </div> <!-- /.dropdown-menu dropdown-menu-right sidebar-options -->
    </div> <!-- /.dropright -->
  </aside>
</div> <!-- /.col-lg-2 -->
