
<%@ page import="br.com.searchCodeEnterprise.model.Codigo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'codigo.label', default: 'Codigo')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
        	<g:form url='[controller: "searchable", action: "index"]' id="searchableForm" name="searchableForm" method="get">

      			<g:textField name="q" value="${params.q}" size="15"/> <input type="submit" value="Search" />

			</g:form>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'codigo.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="descricao" title="${message(code: 'codigo.descricao.label', default: 'Descricao')}" />
                        
                            <g:sortableColumn property="autor" title="${message(code: 'codigo.autor.label', default: 'Autor')}" />
                        
                            <g:sortableColumn property="fonte" title="${message(code: 'codigo.fonte.label', default: 'Fonte')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${codigoInstanceList}" status="i" var="codigoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${codigoInstance.id}">${fieldValue(bean: codigoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: codigoInstance, field: "descricao")}</td>
                        
                            <td>${fieldValue(bean: codigoInstance, field: "autor")}</td>
                        
                            <td>${fieldValue(bean: codigoInstance, field: "fonte")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${codigoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
