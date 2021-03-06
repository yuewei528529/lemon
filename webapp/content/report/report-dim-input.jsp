<%@page contentType="text/html;charset=UTF-8"%>
<%@include file="/taglibs.jsp"%>
<%pageContext.setAttribute("currentHeader", "report");%>
<%pageContext.setAttribute("currentMenu", "report");%>
<!doctype html>
<html lang="en">

  <head>
    <%@include file="/common/meta.jsp"%>
    <title>编辑</title>
    <%@include file="/common/s3.jsp"%>
    <script type="text/javascript">
$(function() {
    $("#reportRemindForm").validate({
        submitHandler: function(form) {
			bootbox.animate(false);
			var box = bootbox.dialog('<div class="progress progress-striped active" style="margin:0px;"><div class="bar" style="width: 100%;"></div></div>');
            form.submit();
        },
        errorClass: 'validate-error'
    });
})
    </script>
  </head>

  <body>
    <%@include file="/header/report.jsp"%>

    <div class="row-fluid">
	  <%@include file="/menu/report-admin.jsp"%>

	  <!-- start of main -->
      <section id="m-main" class="col-md-10" style="margin-top:65px;">

      <div class="panel panel-default">
        <div class="panel-heading">
		  <i class="glyphicon glyphicon-list"></i>
		  编辑
		</div>

		<div class="panel-body">

<form id="reportRemindForm" method="post" action="report-dim-save.do" class="form-horizontal">
  <c:if test="${not empty model}">
  <input id="reportInfo_id" type="hidden" name="id" value="${model.id}">
  </c:if>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportInfo_code">编码</label>
	<div class="col-sm-5">
	  <input id="reportInfo_code" type="text" name="code" value="${model.code}" class="form-control required" minlength="2" maxlength="50">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportInfo_name">名称</label>
	<div class="col-sm-5">
	  <input id="reportInfo_name" type="text" name="name" value="${model.name}" class="form-control required" minlength="2" maxlength="50">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportInfo_type">类型</label>
	<div class="col-sm-5">
	  <input id="reportInfo_type" type="text" name="type" value="${model.type}" class="form-control required" minlength="2" maxlength="50">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportInfo_org">排序</label>
	<div class="col-sm-5">
	  <input id="reportInfo_org" type="text" name="proirity" value="${model.priority}" class="form-control required" minlength="2" maxlength="50">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportInfo_department">备注</label>
	<div class="col-sm-5">
	  <textarea id="reportInfo_department" name="description" class="form-control required" minlength="2" maxlength="200">${model.description}</textarea>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-1" for="reportQuery_subject">查询</label>
	<div class="col-sm-5">
	  <select id="reportQuery_subject" name="queryId" class="form-control required">
	  <c:forEach items="${reportQueries}" var="item">
	    <option value='${item.id}'>${item.name}</option>
	  </c:forEach>
	  </select>
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-offset-1 col-md-11">
      <button type="submit" class="btn btn-default a-submit"><spring:message code='core.input.save' text='保存'/></button>
	  &nbsp;
      <button type="button" class="btn btn-link a-cancel" onclick="history.back();"><spring:message code='core.input.back' text='返回'/></button>
    </div>
  </div>
</form>
        </div>
      </div>

      </section>
	  <!-- end of main -->
	</div>

  </body>

</html>
