<%@ include file="/includes/core.jsp" %>
<h4>Affiliate Account Information</h4>
<p>Please use this form to update your Affiliate information. Please note: Affiliate payments are made to this address, so please double check! Required fields are marked *.</p>
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="account-tab" data-toggle="tab" href="#accountTab" role="tab" aria-controls="account information" aria-selected="true">
      Account Information
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contactTab" role="tab" aria-controls="contact information" aria-selected="true">
      Contact Information
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="notification-tab" data-toggle="tab" href="#notificationTab" role="tab" aria-controls="notification settings" aria-selected="true">
      Notification Settings
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="password-tab" data-toggle="tab" href="#passwordTab" role="tab" aria-controls="password information" aria-selected="true">
      Password Information
    </a>
  </li>
</ul>
<div class="tab-box">
  <form name="account" method="post" action="https://affiliates-new.bmtmicro.com/servlets/Affiliates.Account">
    <input type="hidden" name="NEXT_PAGE" value="https://affiliates-new.bmtmicro.com/main.jsp">
    <input type="hidden" name="ERROR_PAGE" value="https://affiliates-new.bmtmicro.com/new-affiliate-error.jsp">
    <input type="hidden" name="ACTION" value="11" />
    <div class="tab-content" id="myTabContent">
      <div class="tab-pane fade show active" id="accountTab" role="tabpanel" aria-labelledby="account-tab">
        <h5>Account&nbsp;Information</h5>
        <p>Please make sure to double check this information. It will be used for sending out payments.</p>
        <p style="font-size: .9rem;">Affiliate ID:&nbsp;&nbsp;<b><input name="AFFILIATEID" type="hidden" value="${requestScope.AFFILIATEID}">${requestScope.AFFILIATEID}</b></p>
        <div class="row" style="margin-bottom: 2rem;">
          <div class="col-4" style="padding-left: 0; padding-right: 0;">
            <span>
              <label>Company:&nbsp;</label>
              <input name="COMPANY" size="35" maxlength="50" value="${requestScope.COMPANY}" style="margin-bottom: 1rem;">
            </span>
            <br>
            <span>
              <label>Name:&nbsp;</label>
              <input name="NAME" size="35" maxlength="50" value="${requestScope.NAME}" style="margin-bottom: 1rem;">
            </span>
            <br>
            <span>
              <label>Address 1:&nbsp;</label>
              <input name="ADDRESS1" size="35" maxlength="50" value="${requestScope.ADDRESS1}" style="margin-bottom: 1rem;">
            </span>
            <br>
            <span>
              <label>Address 2:&nbsp;</label>
              <input name="ADDRESS2" size="35" maxlength="50" value="${requestScope.ADDRESS2}">
            </span>
          </div> <!-- /.col-4 -->
          <div class="col-4" style="padding: 0;">
            <span>
              <label>City:&nbsp;</label>
              <input name="CITY" size="35" maxlength="50" value="${requestScope.CITY}" style="margin-bottom: 1rem;">
            </span>
            <br>
            <span>
              <label>State/Province:&nbsp;</label>
              <select name="STATE" style="margin-bottom: 1rem;">
                <c:import url="https://secure.bmtmicro.com/Templates/Import.StateOptions"/>
              </select>
            </span>
            <br>
            <span>
              <label>Country:&nbsp;</label>
              <select name="COUNTRY" style="margin-bottom: 1rem;">
                <c:import url="https://secure.bmtmicro.com/Templates/Import.CountryOptions"/>
              </select>
            </span>
            <br>
            <span>
              <label>ZIP/Postal Code:&nbsp;</label>
              <input name="ZIP" size="10" maxlength="50" value="${requestScope.ZIP}">
            </span>
          </div> <!-- /.col-4 -->
        </div> <!-- /.row -->
        <div class="row">
          <div class="col-8" style="padding-left: 0;">
            <div class="controlbuttons">
              <button type="button" class="save-btn" onclick="process(form)" style="margin-right: .5rem;">Save</button>
              <button type="reset" class="save-btn">Reset</button>
            </div> <!-- /.controlbuttons -->
          </div> <!-- /.col-4 -->
        </div> <!-- /.row -->
      </div> <!-- /.tab-pane #accountTab -->
      <div class="tab-pane fade" id="contactTab" role="tabpanel" aria-labelledby="contact-tab">
        <h5>Contact Information</h5>
        <p>Affiliate contact information is not given out to customers.</p>
        <span>
          <label>Phone:&nbsp;</label>
          <input name="PHONE" size="35" maxlength="50" value="${requestScope.PHONE}" style="margin-bottom: 1rem;">
        </span>
        <br>
        <span>
          <label>Fax:&nbsp;</label>
          <input name="FAX" size="35" maxlength="50" value="${requestScope.FAX}" style="margin-bottom: 1rem;">
        </span>
        <br>
        <span>
          <label>Email Address:&nbsp;</label>
          <input name="EMAIL" size="35" maxlength="50" value="${requestScope.EMAIL}" style="margin-bottom: 1rem;">
        </span>
        <br>
        <span>
          <label>Website Address:&nbsp;</label>
          <input name="WEBADDRESS" size="35" maxlength="200" value="${requestScope.WEBADDRESS}" style="margin-bottom: 2rem;">
        </span>
        <div class="controlbuttons">
          <button type="button" class="save-btn" onclick="process(form)" style="margin-right: .5rem;">Save</button>
          <button type="reset" class="save-btn">Reset</button>
        </div> <!-- /.controlbuttons -->
      </div> <!-- /.tab-pane #contactTab -->
      <div class="tab-pane fade" id="notificationTab" role="tabpanel" aria-labelledby="notification-tab">
        <h5>Notification Settings</h5>
        <p>By default notifications will be sent upon a order being placed. Please uncheck if this is not desired.</p>
        <span>
          <input type="hidden" name="ORDERNOTIFICATIONS" value="">
          <input type="checkbox" style="margin-bottom: 1rem;"<c:if test="${ORDERNOTIFICATIONS_CHK==''}">checked</c:if>/>
          Receive Order Notifications
        </span>
        <br>
        <span>
          <input type="hidden" name="VENDOREMAIL" value="">
          <input type="checkbox" style="margin-bottom: 2rem;"<c:if test="${requestScope.VENDOREMAIL_CHK==''}">checked</c:if>/>
          Receive Vendor Emails
        </span>
        <div class="controlbuttons">
          <button type="button" class="save-btn" onclick="process(form)" style="margin-right: .5rem;">Save</button>
          <button type="reset" class="save-btn">Reset</button>
        </div> <!-- /.controlbuttons -->
      </div> <!-- /.tab-pane #notificationTab -->
      <div class="tab-pane fade" id="passwordTab">
        <h5>Password Information</h5>
        <span>
          <label>Login Name:&nbsp;</label>
          <input name="LOGINNAME" type="hidden" value="${requestScope.LOGINNAME}" style="margin-bottom: 1rem;">${requestScope.LOGINNAME}</input>
        </span>
        <br>
        <span>
          <label>New Password:&nbsp;</label>
          <input name="PASSWORD" type="password" size="35" maxlength="16" value="${requestScope.PASSWORD}" autocomplete="off" style="margin-bottom: 1rem;">
        </span>
        <br>
        <span>
          <label>Re-type New Password:&nbsp;</label>
          <input name="PASSWORD2" type="password" size="35" maxlength="16" value="${requestScope.PASSWORD}" autocomplete="off" style="margin-bottom: 2rem;">
        </span>
        <div class="controlbuttons">
          <button type="button" class="save-btn" onclick="process(form)" style="margin-right: .5rem;">Save</button>
          <button type="reset" class="save-btn">Reset</button>
        </div> <!-- /.controlbuttons -->
      </div> <!-- /.tab-pane #passwordTab -->
    </div> <!-- /.tab-content #myTabContent -->
  </form>
</div> <!-- /.tab-box -->
