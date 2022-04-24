<%-- 
    Document   : index
    Created on : 11 de abr. de 2022, 16:26:57
    Author     : Fatec
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ErickApp</title>
    </head>
    <body>
        <%@ include file="WEB-INF/jspf/header.jspf" %>
        <div>
            <center>
                <form method="post">
                    <% if (error == null) { %>
                    <% if (authUserName == null) { %>
                    <div class="ui placeholder segment">
                        <div class="ui two column very relaxed stackable grid">
                            <div class="column">
                                <div class="ui form">
                                    <div class="field">
                                        <label>Username</label>
                                        <div class="ui left icon input">
                                            <input type="text" name="username" placeholder="Usuário"/><br>
                                            <i class="user icon"></i>
                                        </div>
                                    </div>
                                    <div class="field">
                                        <label>Password</label>
                                        <div class="ui left icon input">
                                            <input type="password" name="password" placeholder="Senha"/> <br>
                                            <i class="lock icon"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <input class="ui blue submit button" type="submit" name="login" value="LOGIN">
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    </div>
                    <% } %>
                    <% } else {%>
                    <%= error%>
                    <a href=".">Tentar novamente</a>
                    <% } %>
                </form>
            </center>




            <%  if (authUserName != null) {
                    if (session.getAttribute("lista") == null) {
                        ArrayList lista = (ArrayList) session.getAttribute("lista");
                        if (lista == null) {
                            lista = new ArrayList();
                            session.setAttribute("lista", lista);
                            for (int i = 0; i <= 5; i++) {
                                lista.add(((int) (100 * Math.random())));
                            }
                        }
                    } else {
                        ArrayList lista = (ArrayList) session.getAttribute("lista");
            %>


            <div class="ui top attached tabular menu">
                    <div class="content">
                        <div class="header">Dica para seu jogo na loteria:</div>
                        <div class="meta">
                            <span class="category">Faça sua sorte!</span>
                        </div>
                        <div class="item">
                            <table >
                                <tr>
                                    <% for (int i = 0; i <= 5; i++) {%>
                                    <td> <%= i + 1%>º número: </td>
                                    <% } %>
                                </tr>
                                <tr>
                                    <% for (int i = 0; i <= 5; i++) {%>
                                    <td> <%= lista.get(i)%> </td>
                                    <% } %>
                                </tr>
                            </table>
                        </div>
                        <% } %>
                        <% }%>
                    </div>
                </div>

                <%@ include file="WEB-INF/jspf/footer.jspf" %>
                </body>
                </html>
