<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set scope="request" value="${pageContext.request.contextPath }"
	var="Path" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>管理员页面</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- App css -->
<link href="${Path }/static/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<link href="${Path }/static/css/app.min.css" rel="stylesheet"
	type="text/css" />

</head>

<body>

	<!-- Begin page -->
	<div class="wrapper">

		<!-- ========== Left Sidebar Start ========== -->
		<%@include file="/WEB-INF/jsp/leftSidebar/leftSidebar.jsp"%>
		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Hyper</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Pages</a></li>
										<li class="breadcrumb-item active">FAQ</li>
									</ol>
								</div>
								<h4 class="page-title">管理员</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="billing-first-name">开始日期</label> <input
									class="form-control" type="date" id="startTime" />
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="billing-first-name">截至日期</label> <input
									class="form-control" type="date" id="endTime" />
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label for="billing-first-name">班级</label> <select id="classId"
									class="form-control">
									<option value="">请选择班级</option>
									<c:forEach items="${classList }" var="cc">
										<option value="${cc.classId }">${cc.className }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="row mb-2">
									<div class="col-sm-4">
										<button type="button" class="btn btn-success btn-sm mt-2"
											onclick="print()">打印订单</button>
										<button type="button" class="btn btn-info btn-sm mt-2 ml-1"
											onclick="exportExsal()">导出exsal</button>
									</div>
									<div class="col-sm-8">
										<div class="text-sm-right">
											<button type="button" class="btn btn-success btn-sm mt-2"
												onclick="queryStudentHour()">查询</button>
										</div>
									</div>
									<!-- end col-->
								</div>
								<!-- Question/Answer -->
								<div class="table-responsive">
									<!--startprint-->
									<h3 style="text-align: center;" id="tables">学员课时总报表</h3>
									<table
										class="table table-centered table-striped dt-responsive nowrap w-100"
										id="products-datatable" border="1px solid" width="100%">
										<tbody>
											<tr>
												<td>序</td>
												<td>校区</td>
												<td>学员名称</td>
												<td>新增课时</td>
												<td>赠送课时</td>
												<td>总课时</td>
												<td>已上课时</td>
												<td>剩余课时</td>
												<td>缴费记录</td>
											</tr>
										</tbody>
										<tbody>
											<c:forEach items="${stuReistrationList}" var="stu"
												varStatus="status">
												<tr>
													<td class="table-user">${status.index }</td>
													<td class="table-user">${schoolName}</td>
													<td class="table-user">${stu.studentName}</td>
													<td class="table-user">${stu.order.addhour }</td>
													<td class="table-user">${stu.order.givehour }</td>
													<td class="table-user">${stu.order.givehour+stu.order.addhour }</td>
													<td class="table-user">${stu.sumHour }</td>
													<td class="table-user">${(stu.order.addhour+stu.order.givehour )-stu.sumHour }</td>
													<td><a href="javascript:void(0);"
														class="action-icon jiaofei" name="${stu.childStuId }">
															<i class="mdi mdi-eye"></i>
													</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<!--endprint-->
								</div>

								<!-- ============================================================== -->
								<!-- End Page content -->
								<!-- ============================================================== -->

							</div>
							<!-- END wrapper -->
							<iframe id="iframe1" style="display: none"></iframe>
							<!-- END wrapper -->

							<!-- App js -->
							<%@include file="/WEB-INF/jsp/importJsFoot/foot.jsp"%>
							<script src="${Path }/static/js/root/classStudent/classInfo.js"></script>
							<script src="${Path }/static/js/admin/leftSidebar.js"></script>
</body>
</html>
