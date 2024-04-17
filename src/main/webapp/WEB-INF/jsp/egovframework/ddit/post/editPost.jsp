<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form"%> <%@ taglib
prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>게시글 작성</title>
    <link
      type="text/css"
      rel="stylesheet"
      href="<c:url value='/css/egovframework/style.css'/>"
    />
  </head>
  <body>
    <div id="header">
      <ul>
        <li><spring:message code="button.create"></spring:message></li>
      </ul>
	  <a href="<c:url value='/postList.do'/>">목록으로 돌아가기</a>
    </div>
    <c:url value='/addPost.do' var='formActionUrl' />
    <form:form
      modelAttribute="postVO"
      id="detailForm"
      name="detailForm"
      action="${formActionUrl}"
    >
      <div id="content_pop">
        <div id="table">
          <table width="100%" border="1" cellpadding="0" cellspacing="0">
            <colgroup>
              <col width="150" />
              <col width="?" />
            </colgroup>
            <c:if test="${registerFlag == 'modify'}">
              <tr>
                <td class="tbtd_caption">
                  <label for="id"
                    ><spring:message code="title.post.id"
                  /></label>
                </td>
                <td class="tbtd_content">
                  <form:input
                    path="id"
                    cssClass="essentiality"
                    maxlength="10"
                    readonly="true"
                    disable="true"
                  />
                </td>
              </tr>
            </c:if>
            <tr>
              <td class="tbtd_caption">
                <label for="name"
                  ><spring:message code="title.post.name"
                /></label>
              </td>
              <td class="tbtd_content">
                <form:input path="name" maxlength="10" cssClass="txt" />
                &nbsp;<form:errors path="name" />
              </td>
            </tr>
            <tr>
              <td class="tbtd_caption">
                <label for="title"
                  ><spring:message code="title.post.title"
                /></label>
              </td>
              <td class="tbtd_content">
                <form:input path="title" maxlength="20" />&nbsp;<form:errors
                  path="title"
                />
              </td>
            </tr>
            <tr>
              <td class="tbtd_caption">
                <label for="content"
                  ><spring:message code="title.post.content"
                /></label>
              </td>
              <td class="tbtd_content">
                <form:textarea
                  path="content"
                  rows="5"
                  style="width: 500px"
                />&nbsp;<form:errors path="content" />
              </td>
            </tr>
          </table>
          <div>
            <div id="sysbtn">
              <ul>
                <li>
                  <span class="btn_blue_l">
                  	<button type="submit">
                      <spring:message code="button.create" />
                    </button>
                  </span>
                </li>
                <li>
                  <span class="btn_blue_l">
                    <a href="javascript:document.detailForm.reset();"
                      ><spring:message code="button.reset"
                    /></a>
                  </span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </form:form>
  </body>
</html>
