<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="validator"
	uri="http://www.springmodules.org/tags/commons-validator"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:set var="updateFlag" value="${empty postVO.id ? 'create' : 'modify'}" />
<title><spring:message code="title.post" /> <c:if
		test="${updateFlag == 'create'}">
		<spring:message code="button.create" />
	</c:if> <c:if test="${updateFlag == 'modify'}">
		<spring:message code="button.modify" />
	</c:if></title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/style.css'/>" />

<!--For Commons Validator Client Side-->
<script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
<validator:javascript formName="postVO" staticJavascript="false"
	xhtml="true" cdata="false" />

<script type="text/javaScript" language="javascript" defer="defer">
        <!--
        /* 글 삭제 function */
        function fn_egov_delete() {
        	if (confirm("삭제하시겠습니까?")) {
	           	document.detailForm.action = "<c:url value='/deletePost.do'/>";
	           	document.detailForm.submit();
        	}
        }
        
        /* 글 등록 function */
        function fn_egov_save() {
        	frm = document.detailForm;
        	if(!validatePostVO(frm)){
                return;
            }else{
            	frm.action = "<c:url value="${updateFlag == 'modify' ? '/updatePost.do' : '/addPost.do'}"/>";
                frm.submit();
            }
        }
        
        -->
    </script>

</head>
<body>
	<div id="header">
		<ul>
			<li><spring:message code="title.post" /> <c:if
					test="${updateFlag == 'create'}">
					<spring:message code="button.create" />
				</c:if> <c:if test="${updateFlag == 'modify'}">
					<spring:message code="button.modify" />
				</c:if></li>
		</ul>
	</div>
	<form:form modelAttribute="postVO" id="detailForm" name="detailForm">
		<div id="content_pop">
			<div id="table">
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<colgroup>
						<col width="150" />
						<col width="?" />
					</colgroup>
					<c:if test="${updateFlag == 'modify'}">
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
								maxlength="20" cssClass="txt" /> &nbsp;<form:errors path="name" />
						</td>
					</tr>
					<tr>
						<td class="tbtd_caption"><label for="title"><spring:message
									code="title.post.title" /></label></td>
						<td class="tbtd_content"><form:input path="title"
								maxlength="30" />&nbsp;<form:errors path="title" /></td>
					</tr>
					<tr>
						<td class="tbtd_caption"><label for="content"><spring:message
									code="title.post.content" /></label></td>
						<td class="tbtd_content"><form:textarea path="content"
								rows="5" style="width: 500px" />&nbsp;<form:errors
								path="content" /></td>
					</tr>
				</table>
				<div>
					<a href="<c:url value='/postList.do'/>">목록으로 돌아가기</a>
					<div id="sysbtn">
						<ul>
							<li><span class="btn_blue_l"> <a
									href="javascript:fn_egov_save()"> <c:if
											test="${updateFlag == 'create'}">
											<spring:message code="button.create" />
										</c:if> <c:if test="${updateFlag == 'modify'}">
											<spring:message code="button.modify" />
										</c:if>
								</a>
							</span></li>
							<c:if test="${updateFlag == 'modify'}">
								<li><span class="btn_blue_l"> <a
										href="javascript:fn_egov_delete();"><spring:message
												code="button.delete" /></a>
								</span></li>
							</c:if>
							<li><c:if test="${updateFlag == 'create'}">
									<span class="btn_blue_l"> <a
										href="javascript:document.detailForm.reset();"><spring:message
												code="button.reset" /></a>
									</span>
								</c:if></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>
