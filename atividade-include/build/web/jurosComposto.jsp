<%--
    Document   : JurosComposto
    Created on : 28 de mar. de 2022, 15:56:50
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Styles.css" media="screen" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>"
    <body>"
        <%@include file="WEB-INF/jspf/navbar.jspf" %>

        
            <%           
            out.println("<div class=\"w3-container cont\">");
            out.println("<h2>Juros Composto</h2>");
            out.println("<form>");
            out.println("Digite o número de períodos: <input type='text' name='periodo' placeholder='Número em meses'/>");
            out.println("<br>");
            out.println("<br>");

            out.println("Digite o capital: <input type='text' name='capital' placeholder='0.00'/>");
            out.println("<br>");
            out.println("<br>");

            out.println("Digite a taxa de juros: <input type='text' name='taxa' placeholder='0.0'/>");
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

                    out.println("<table style='border-collapse: collapse; width: 100%;'>"
                            + "        <thead>"
                            + "            <td> Mês </td>"
                            + "            <td> Capital (R$) </td>"
                            + "            <td> Juros (%) </td>"
                            + "            <td> Montante (R$) </td>"
                            + "        </thead>"
                            + "        <tbody>");

                    for (int i = 1; i <= periodo; i++) {
                        juros = taxa * capital;
                        montante = capital + juros;

                        capital = Math.round(capital * 100.0) / 100.0;
                        juros = Math.round(juros * 100.0) / 100.0;
                        montante = Math.round(montante * 100.0) / 100.0;

                        out.println("<tr>");
                        out.println("<td>" + i + "</td>");
                        out.println("<td>" + capital + "</td>");
                        out.println("<td>" + juros + "</td>");
                        out.println("<td>" + montante + "</td>");
                        out.println("</tr>");

                        capital += juros;

                    }

                    out.println("        </tbody>"
                            + "    </table>");

                } catch (NumberFormatException e) {
                    if (e.getMessage().equals("empty String")) {
                        out.println("<h4 style='color: red'>Campos vazios</h4>");
                    } else {
                        out.println("<h4 style='color: red'>Campos inválidos</h4>");
                    }
                } catch (Exception e) {
                    out.println("<h4 style='color: red'>Erro ao calcular os juros</h4>");
                }
            }
            %>
    </body>
</html>
