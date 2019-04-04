<%@ page contentType="text/html;charset=utf-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cm" uri="http://www.coremedia.com/2004/objectserver-1.0-2.0" %>
<%--@elvariable id="self" type="it.siegert.corem.dtmview.model.ContentTypeModel"--%>
<html>
<head>
    <title>Doctypes</title>
    <style type="text/css">
        html {
            font-family: monospace
        }

        a {
            text-decoration: none
        }

        a:hover {
            text-decoration: underline
        }

        table, td, th {
            border-collapse: collapse;
            border: silver solid thin;
            padding: .12em
        }
    </style>
</head>
<body>

<h2>Content-Server (IOR)</h2>
<p><a href="<c:out value="${self.iorUrl}"/>" target="_blank"><c:out value="${self.iorUrl}"/></a></p>

<h2><c:out value="${self.currentType.name}"/></h2>
<table><cm:include self="${self.currentType}" view="renderContentType"/></table>

<h2>Document-Tree</h2>
<c:set var="space" value="+- " scope="request"/>
<pre><cm:include self="${self.rootType}" view="renderPreformatedContentType"/></pre>
</body>
</html>
