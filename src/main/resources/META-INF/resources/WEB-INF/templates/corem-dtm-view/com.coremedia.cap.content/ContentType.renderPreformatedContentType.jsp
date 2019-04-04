<%@ page contentType="text/html;charset=utf-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cm" uri="http://www.coremedia.com/2004/objectserver-1.0-2.0" %>
<%--@elvariable id="self" type="com.coremedia.cap.content.ContentType"--%>
<c:out value="${space}"/><a href="?doctype=${self.name}"><c:out value="${self.name}" /></a>

<c:set var="spaceOrig" value="${space}" scope="page"/>
<c:set var="space" value="| ${space}" scope="request"/>
<c:forEach var="child" items="${self.directChildren}">
    <cm:include self="${child}" view="renderPreformatedContentType"/>
</c:forEach>
<c:set var="space" value="${spaceOrig}" scope="request"/>
<c:set var="spaceOrig" value="" scope="page" />
