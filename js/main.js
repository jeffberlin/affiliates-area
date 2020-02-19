// Redirect to login page if this page is accessed and the vendor is not logged in
if (getCookieValue ("BMTMicro.Affiliates.AffiliateID") == null) {
  window.location = "https://affiliates-new.bmtmicro.com/index.html";
}
// Function for pulling name and company when available
// function getAffiliateName () {
  var n = getCookieValue ("BMTMicro.Affiliates.Name");
  var c = getCookieValue ("BMTMicro.Affiliates.Company");
//   return (((c == null) || (c == "")) ? n : (n + ", " + c));
// }
//
