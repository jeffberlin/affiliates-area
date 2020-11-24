<%@ page pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ include file="/includes/core.jsp" %>
<div class="row table-responsive" style="margin-left: auto; margin-right: auto;">
  <table class="table" id="selection">
    <thead>
      <tr class="table-category">
        <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Product'" date>
          <a href="#" class="fdTableSortTrigger">Date</a>
        </th>
        <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Units Sold'" text>
          <a href="#" class="fdTableSortTrigger">Description</a>
        </th>
        <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Units Sold'" money>
          <a href="#" class="fdTableSortTrigger">Amount</a>
        </th>
        <th scope="col" class="sort-column text-center sortable sort" title="Sort on 'Units Sold'" text>
          <a href="#" class="fdTableSortTrigger">Notes</a>
        </th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="row" items="${requestScope.TABLEDATA}">
        <tr onclick="highlightLinks(this);" ${row.CLASS}>
          <td date>${row.TIME}</td>
          <td text>${row.DESCRIPTION}</td>
          <td money>${row.AMOUNT}</td>
          <td info>${row.NOTES}</td>
        </tr>
      </c:forEach>
    </tbody>
    <tfoot>
      <tr class="table-total">
        <th colspan="2">Total</th>
        <th scope="row" class="text-right">${requestScope.TOTALAMOUNT}</th>
        <th scope="row">&nbsp;</th>
      </tr>
    </tfoot>
  </table>
</div> <!-- /.row table-responsive -->
