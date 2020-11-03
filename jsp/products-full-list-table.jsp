<%@ include file="/includes/core.jsp" %>
<form name="productlistform" method="post" action="https://affiliates-new.bmtmicro.com/servlets/Affiliates.ProductList">
  <input type="hidden" name="NEXT_PAGE" value="https://affiliates-new.bmtmicro.com/products-full-list-table.jsp" />
  <input type="hidden" name="ERROR_PAGE" value="https://affiliates-new.bmtmicro.com/error.jsp" />
  <input type="hidden" name="PAGE" value="1" />
  <input type="hidden" name="JOINEDONLY" value="0" />
  <input type="hidden" name="CATEGORY" value="${requestScope.CATEGORY}" />
  <div class="table-header">
    <span>Category:&nbsp;${requestScope.CATEGORYSELECTOR}</span>
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
      <button type="button" class="grey-btn" onclick="refreshReport(document.productlistform)">Get Products List</button>
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
        ${requestScope.PRODUCTLIST}
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
