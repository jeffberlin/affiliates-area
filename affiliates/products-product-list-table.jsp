<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<form name="productlistform" method="post" action="https://affiliates.bmtmicro.com/servlets/Affiliates.ProductList">
  <input type="hidden" name="NEXT_PAGE" value="https://affiliates.bmtmicro.com/products-product-list-table.jsp" />
  <input type="hidden" name="ERROR_PAGE" value="https://affiliates.bmtmicro.com/errorpage.jsp" />
  <input type="hidden" name="PAGE" value="1" />
  <input type="hidden" name="JOINEDONLY" value="${requestScope.JOINEDONLY}" />
  <input type="hidden" name="JOINVENDORID" value="0" />
  <input type="hidden" name="CATEGORY" value="${requestScope.CATEGORY}" />
  <div class="table-header">
    <c:if test="${!empty requestScope.CATEGORYSELECTOR}">
      <span>Category:&nbsp;${requestScope.CATEGORYSELECTOR}</span>
    </c:if>
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
      <input class="input-search" type="text" name="FILTERMASK" value="${requestScope.FILTERMASK}" placeholder="Search" onkeypress="filterKeyPress(event)" />
    </span>
    <span>
      <button type="button" class="grey-btn" onclick="refreshReport (document.productlistform);">Get Products List</button>
    </span>
  </div> <!-- /.table-header -->
  <div class="row table-responsive" style="margin-left: auto; margin-right: auto;">
    <table class="table">
      <thead>
        <tr class="table-category">
          <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" text>
            <a href="#" class="fdTableSortTrigger">Product Name</a>
          </th>
          <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" money>
            <a href="#" class="fdTableSortTrigger">List Price</a>
          </th>
          <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" number>
            <a href="#" class="fdTableSortTrigger">Percentage</a>
          </th>
          <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" money>
            <a href="#" class="fdTableSortTrigger">To Affiliate</a>
          </th>
          <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" text>
            <a href="#" class="fdTableSortTrigger">Link</a>
          </th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="row" items="${requestScope.TABLEDATA}">
          <c:if test="${row.ADDHEADER==-1}">
            <tr class="hdrrowb">
              <c:if test="${row.HASJOINED==-1}">
                <td colspan="5">
                  <c:if test="${!empty row.VENDORURL}"><a href="${row.VENDORURL}" target="_blank"></c:if>
                  <font size="+1"><b>${row.VENDORNAME}</b></font>
                  <c:if test="${!empty row.VENDORURL}"></a></c:if>
                </td>
              </c:if>
              <c:if test="${row.HASJOINED!=-1}">
                <td colspan="4">
                  <c:if test="${!empty row.VENDORURL}"><a href="${row.VENDORURL}"></c:if>
                  <font size="+1"><b>${row.VENDORNAME}</b></font>
                  <c:if test="${!empty row.VENDORURL}"></a></c:if>
                </td>
                <td align="right"><input type="button" value="Join" onclick="joinVendor(${row.VENDORID})" style="width: 80px;"/></td>
              </c:if>
            </tr>
          </c:if>
          <tr bordercolor="WHITE">
            <td width="55%">
              <c:if test="${!empty row.PRODUCTURL}"><a href="${row.PRODUCTURL}" target="_blank"></c:if>
                ${row.PRODUCTNAME}
              <c:if test="${!empty row.PRODUCTURL}"></a></c:if>
            </td>
            <td width="15%" align="center">${row.LISTPRICE}</td>
            <c:if test="${row.HASPERCENTAGE==-1}">
              <td width="15%" align="center">${row.PERCENTAGE}%</td>
              <td width="15%" align="center">${row.TOAFFILIATE}</td>
            </c:if>
            <c:if test="${row.HASPERCENTAGE!=-1}">
              <td align="center"
              colspan="2"><a href="mailto:${row.INQUIRYEMAIL}?subject=Affiliate ${row.AFFILIATEID} Inquiry">Inquiry</a></td>
            </c:if>
            <td align="right">
              <c:if test="${row.HASJOINED==-1 && row.HASPERCENTAGE==-1}">
                <a href="javascript:showLink('${row.AFFILIATEURL}','${row.DEMOURL}','${row.PRODURL}')">Show&nbsp;Links</a>
              </c:if>
            </td>
          </tr>
        </c:forEach>
      </tbody>
      <tfoot class="table-total">
        <th scope="col" colspan="5">
          <div id="pageselector">
            <c:if test = "${requestScope.PAGECOUNT > 1}">
              Pages:
              <c:forEach var = "page" begin = "1" end = "${requestScope.PAGECOUNT}">
                &nbsp;<a href="javascript:selectPage(${page});">${page}</a>&nbsp;
              </c:forEach>
            </c:if>
          </div>
        </th>
      </tfoot>
    </table>
  </div> <!-- /.row table-responsive -->
</form>
