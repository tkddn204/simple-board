<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><spring:message code="title.post" /></title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/style.css'/>" />
<script type="text/javaScript" language="javascript" defer="defer">
<!--
	/* 글 수정 화면 function */
	function fn_egov_select(id) {
		document.listForm.postId.value = id;
		document.listForm.action = "<c:url value='/updatePostView.do'/>";
		document.listForm.submit();
	}

	/* 글 등록 화면 function */
	function fn_egov_addView() {
		document.listForm.action = "<c:url value='/addPostView.do'/>";
		document.listForm.submit();
	}

	/* 글 목록 화면 function */
	function fn_egov_selectList() {
		document.listForm.action = "<c:url value='/postList.do'/>";
		document.listForm.submit();
	}

	/* pagination 페이지 링크 function */
	function fn_egov_link_page(pageNo) {
		document.listForm.pageIndex.value = pageNo;
		document.listForm.action = "<c:url value='/postList.do'/>";
		document.listForm.submit();
	}
//-->
</script>
</head>

<body
	style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">

	<div id="header">
		<ul>
			<li><spring:message code="list.post" /></li>
		</ul>
	</div>
	
	<form:form modelAttribute="postVO" id="listForm" name="listForm"
		method="post">
		<input type="hidden" name="postId" />
		<div id="content_pop">
			<!-- List -->
			<div id="table">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<caption style="visibility: hidden">게시판 테이블</caption>
					<colgroup>
						<col width="100" />
						<col width="100" />
						<col width="150" />
						<col width="80" />
						<col width="?" />
						<col width="60" />
					</colgroup>
					<tr>
						<th align="center"><spring:message code="title.post.id" /></th>
						<th align="center"><spring:message code="title.post.title" /></th>
						<th align="center"><spring:message code="title.post.name" /></th>
						<th align="center"><spring:message
								code="title.post.createdAt" /></th>
					</tr>
					<c:forEach var="post" items="${postList}" varStatus="status">
						<tr class="post_item"
							onclick="javascript:fn_egov_select('<c:out value="${post.id}"/>')">
							<td align="center" class="listtd"><c:out value="${post.id}" /></td>
							<td align="left" class="listtd"><c:out value="${post.title}" />&nbsp;</td>
							<td align="center" class="listtd"><c:out
									value="${post.name}" />&nbsp;</td>
							<td align="center" class="listtd"><c:out
									value="${post.createdAt}" />&nbsp;</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!-- /List -->
			<div id="sysbtn">
				<ul>
					<li><span class="btn_blue_l"> <a
							href="javascript:fn_egov_addView();"><spring:message
									code="button.create" /></a>
					</span></li>
				</ul>
			</div>
		</div>
	</form:form>
</body>
</html>