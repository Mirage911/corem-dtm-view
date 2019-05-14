<%@ page contentType="text/html;charset=utf-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cm" uri="http://www.coremedia.com/2004/objectserver-1.0-2.0" %>
<%--@elvariable id="self" type="com.coremedia.cap.content.ContentType"--%>
<c:if test="${self.parent != null}"><cm:include self="${self.parent}" view="renderContentType" /></c:if>
<tr>
    <td colspan="2"><br /><a href="?doctype=${self.name}"><b><c:out value="${self.name}" /></b></a></td>
</tr>
<c:forEach var="descriptor" items="${self.directDescriptors}">
    <tr>
        <td width="20%"><c:out value="${descriptor.name}"/></td>
        <td><c:out value="${descriptor.type}"/></td>
    </tr>
</c:forEach>

<tr>
    <td colspan="2">
        <c:forEach var="child" items="${self.directChildren}">
            <a href="?doctype=${child.name}"><c:out value="${child.name}" /></a>
        </c:forEach>
    </td>
</tr>

