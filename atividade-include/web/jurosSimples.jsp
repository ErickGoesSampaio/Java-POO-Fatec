<%-- 
    Document   : juros-Simples
    Created on : 28 de mar. de 2022, 16:12:58
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Styles.css" media="screen" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Juros Simples</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        <%out.println("<div class=\"w3-container cont\">");
            out.println("<h2>Juros Simples</h2>");

            out.println("<form>");
            out.println("Digite o capital: <input type='text' name='capital' placeholder='0.00'/>");
            out.println("<br>");
            out.println("<br>");

            out.println("Digite a taxa de juros: <input type='text' name='taxa' placeholder='0.0'/>");
            out.println("<br>");
            out.println("<br>");

            out.println("Digite o número de períodos: <input type='text' name='periodo' placeholder='Número em meses'/>");
            out.println("<br>");
            out.println("<br>");
            out.println("<input type='submit' name='juros' value='Calcular Juros'/>");
            out.println("</form>");

            out.println("<hr/>");

            if (request.getParameter("juros") != null) {
                try {
                    double montante, juros;

                    double capital = Double.parseDouble(request.getParameter("capital"));
                    double taxa = Double.parseDouble(request.getParameter("taxa"));
                    int periodo = Integer.parseInt(request.getParameter("periodo"));

                    taxa /= 100;

                    juros = capital * taxa * periodo;
                    montante = capital + juros;

                    out.println("<h4>Montante: " + String.valueOf(montante) + "</h4>");
                } catch (Exception e) {
                    out.println("<h4 style='color: red'>Erro ao converter</h4>");
                }

            }%>
    </body>
</html>
