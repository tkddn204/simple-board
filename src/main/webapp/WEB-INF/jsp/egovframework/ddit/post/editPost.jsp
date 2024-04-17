<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시글 작성</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/style.css'/>" />
<script type="text/javascript" language="javascript" defer="defer">
<!--
/* 글 목록 화면 */
function fn_egov_selectList() {
   	document.detailForm.action = "<c:url value='/postList.do'/>";
   	document.detailForm.submit();
}

/* 글 삭제 */
function fn_egov_delete() {
   	document.detailForm.action = "<c:url value='/deletePost.do'/>";
   	document.detailForm.submit();
}

/* 글 등록 */
function fn_egov_save() {
	document.detailForm.action = "<c:url value='/addPost.do'/>";
    document.detailForm.submit();
}
-->
</script>
</head>
<body>
	<form:form modelAttribute="postVO" id="detailForm" name="detailForm">
		<div id="content_pop">
			<div id="header">
				<ul>
					<li><spring:message code="button.create"></spring:message></li>
				</ul>
			</div>

			<div id="table">
				<table width="100%" border="1" cellpadding="0" cellspacing="0"
					style="bordercolor: #D3E2EC; bordercolordark: #FFFFFF; BORDER-TOP: #C2D0DB 2px solid; BORDER-LEFT: #ffffff 1px solid; BORDER-RIGHT: #ffffff 1px solid; BORDER-BOTTOM: #C2D0DB 1px solid; border-collapse: collapse;">
					<colgroup>
						<col width="150" />
						<col width="?" />
					</colgroup>
					<c:if test="${registerFlag == 'modify'}">
						<tr>
							<td class="tbtd_caption"><label for="id"><spring:message
										code="title.post.id" /></label></td>
							<td class="tbtd_content"><form:input path="id"
									cssClass="essentiality" maxlength="10" readonly="true"
									disable="true" /></td>
						</tr>
					</c:if>
					<tr>
						<td class="tbtd_caption"><label for="name"><spring:message
									code="title.post.name" /></label></td>
						<td class="tbtd_content"><form:input path="name"
								maxlength="10" cssClass="txt" /> &nbsp;<form:errors path="name" />
						</td>
					</tr>
					<tr>
						<td class="tbtd_caption"><label for="title"><spring:message
									code="title.post.title" /></label></td>
						<td class="tbtd_content"><form:input path="title" maxlength="20" />&nbsp;<form:errors path="title" /></td>
					</tr>
					<tr>
						<td class="tbtd_caption"><label for="content"><spring:message
									code="title.post.content" /></label></td>
						<td class="tbtd_content"><form:textarea path="content"
								rows="5" style="width:500px;" />&nbsp;<form:errors path="content" /></td>
					</tr>
				</table>
				<div>
					<div id="sysbtn">
						<ul>
							<li><span class="btn_blue_l"> <a
									href="javascript:fn_egov_selectList();"><spring:message
											code="button.list" /></a>
							</span></li>
							<li><span class="btn_blue_l"> <a
									href="javascript:fn_egov_save();">
									<spring:message code="button.create" />
								</a>
							</span></li>
							<c:if test="${registerFlag == 'modify'}">
								<li><span class="btn_blue_l"> <a
										href="javascript:fn_egov_delete();"><spring:message
												code="button.delete" /></a>
								</span></li>
							</c:if>
							<li><span class="btn_blue_l"> <a
									href="javascript:document.detailForm.reset();"><spring:message
											code="button.reset" /></a>
							</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>