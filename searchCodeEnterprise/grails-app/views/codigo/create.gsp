
<%@ page import="br.com.searchCodeEnterprise.model.Codigo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'codigo.label', default: 'Codigo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${codigoInstance}">
            <div class="errors">
                <g:renderErrors bean="${codigoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao"><g:message code="codigo.descricao.label" default="Descricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: codigoInstance, field: 'descricao', 'errors')}">
                                    <g:textField name="descricao" value="${codigoInstance?.descricao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="autor"><g:message code="codigo.autor.label" default="Autor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: codigoInstance, field: 'autor', 'errors')}">
                                    <g:textField name="autor" value="${codigoInstance?.autor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fonte"><g:message code="codigo.fonte.label" default="Fonte" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: codigoInstance, field: 'fonte', 'errors')}">
                                    
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
