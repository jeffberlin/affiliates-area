${pageContext.ELContext.importHandler.importClass('java.net.URLDecoder')}
<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="sessionid" value="${cookie['BMTMicro.Affiliates.SessionID'].value}" />
<c:set var="lastlogin" value="${URLDecoder.decode(cookie['BMTMicro.Affiliates.LastLogin'].value,'UTF-8')}" />
<c:set var="payDay" value="0" /><jsp:useBean id="nowDateT" class="java.util.GregorianCalendar"><c:if test="${((nowDateT.get(2)==11)&&(nowDateT.get(5)==28))||((nowDateT.get(2)!=11)&&(nowDateT.get(5)==1))}" ><c:set var="payDay" value="1" /></c:if></jsp:useBean>
<c:set var="fromOffset" value="${cookie['BMTMicro.Affiliates.FromDate'].value}" /><c:if test="${fromOffset == null}"><c:set var="fromOffset" value="6"/></c:if>
<jsp:useBean id="yearNow" class="java.util.Date"><fmt:formatDate var="yearNow" value="${yearNow}" pattern="yyyy" /></jsp:useBean>
<jsp:useBean id="toDate" class="java.util.Date"><fmt:formatDate var="toDate" value="${toDate}" pattern="yyyy-MM-dd" /></jsp:useBean>
<jsp:useBean id="fromDate" class="java.util.Date"><jsp:useBean id="fromDateT" class="java.util.GregorianCalendar">${fromDateT.add(5,-fromOffset)}<c:set target="${fromDate}" property="time" value="${fromDateT.getTime().getTime ()}" /></jsp:useBean><fmt:formatDate var="fromDate" value="${fromDate}" pattern="yyyy-MM-dd" /></jsp:useBean>
<jsp:useBean id="fromDate90" class="java.util.Date"><jsp:useBean id="fromDate90T" class="java.util.GregorianCalendar">${fromDate90T.add(5,-90)}<c:set target="${fromDate90}" property="time" value="${fromDate90T.getTime().getTime ()}" /></jsp:useBean><fmt:formatDate var="fromDate90" value="${fromDate90}" pattern="yyyy-MM-dd" /></jsp:useBean>
<jsp:useBean id="expDate" class="java.util.Date"><jsp:useBean id="expDateT" class="java.util.GregorianCalendar">${expDateT.add(5,31)}<c:set target="${expDate}" property="time" value="${expDateT.getTime().getTime ()}" /></jsp:useBean><fmt:formatDate var="expDate" value="${expDate}" pattern="yyyy-MM-dd" /></jsp:useBean>
<jsp:useBean id="bomDate" class="java.util.Date"><jsp:useBean id="bomDateT" class="java.util.GregorianCalendar">${bomDateT.set(5,1)}<c:set target="${bomDate}" property="time" value="${bomDateT.getTime().getTime ()}" /></jsp:useBean><fmt:formatDate var="bomDate" value="${bomDate}" pattern="yyyy-MM-dd" /></jsp:useBean>
