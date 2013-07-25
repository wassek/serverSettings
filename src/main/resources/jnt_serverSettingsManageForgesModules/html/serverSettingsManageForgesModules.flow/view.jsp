<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="user" uri="http://www.jahia.org/tags/user" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<%--@elvariable id="module" type="org.jahia.modules.serversettings.forge.Module"--%>
<h3><fmt:message key="serverSettings.manageForgesModules.availableModules"/></h3>

<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <th><fmt:message key="serverSettings.manageForgesModules.title"/></th>
        <th>
            <fmt:message key="serverSettings.manageForgesModules.name"/>
        </th>
        <th>
            <fmt:message key="serverSettings.manageForgesModules.version"/>
        </th>
        <th>
            <fmt:message key="serverSettings.manageForgesModules.detail"/>
        </th>
        <th>
            <fmt:message key="serverSettings.manageForgesModules.download"/>
        </th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${requestScope.modules}" var="module">
        <tr>
            <td> ${module.title}</td>
            <td> ${module.name}</td>
            <td> ${module.version}</td>
            <c:url value="${module.remoteUrl}" context="/" var="remoteUrl"/>
            <td> <a href="${remoteUrl}" target="_self">view details</a></td>
            <td>${module.downloadUrl}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>