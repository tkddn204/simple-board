<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form"%> <%@ taglib
prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.post" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/post.css'/>"/>
    <script type="text/javaScript" language="javascript" defer="defer">
        <!--
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updatepostView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addpost.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/egovpostList.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/egovpostList.do'/>";
           	document.listForm.submit();
        }
        
        //-->
    </script>
</head>

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <!-- List -->
   	<div id="table">
   		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
   			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
   			<colgroup>
   				<col width="40"/>
   				<col width="100"/>
   				<col width="150"/>
   				<col width="80"/>
   				<col width="?"/>
   				<col width="60"/>
   			</colgroup>
   			<tr>
   				<th align="center">No</th>
   				<th align="center"><spring:message code="title.post.id" /></th>
   				<th align="center"><spring:message code="title.post.title" /></th>
   				<th align="center"><spring:message code="title.post.content" /></th>
   				<th align="center"><spring:message code="title.post.name" /></th>
   				<th align="center"><spring:message code="title.post.createdAt" /></th>
   			</tr>
   			<c:forEach var="post" items="${postList}" varStatus="status">
       			<tr>
       				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${post.id}"/>')"><c:out value="${post.id}"/></a></td>
       				<td align="left" class="listtd"><c:out value="${post.title}"/>&nbsp;</td>
       				<td align="center" class="listtd"><c:out value="${post.content}"/>&nbsp;</td>
       				<td align="center" class="listtd"><c:out value="${post.name}"/>&nbsp;</td>
       				<td align="center" class="listtd"><c:out value="${post.createdAt}"/>&nbsp;</td>
       			</tr>
   			</c:forEach>
   		</table>
   	</div>
   	<!-- /List -->
</body>
</html>