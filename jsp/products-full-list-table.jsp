<%@ include file="/includes/core.jsp" %>
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
