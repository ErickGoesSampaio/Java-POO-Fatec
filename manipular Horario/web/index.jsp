<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 16:43:26
    Author     : Fatec
--%>

<%@page import="Manipula.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Horario horario = new Horario();
        horario.setHora(2022);
        horario.setMinuto(4);
        horario.setSegundo(25);
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Horario</title>
    </head>
    <body>
        <h1>Manipulação de Horario!</h1>
        
    </body>
</html>
