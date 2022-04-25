<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 13:33:03
    Author     : Fatec
--%>

<%@page import="demo.Database"%>
<%@page import="demo.Contato"%>
<%@page import="demo.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Data hoje = new Data();
        hoje.setAno(2022);
        hoje.setMes(4);
        hoje.setDia(25);
        System.out.println("Hoje é dia" + hoje.getDia());

        Data amanha = new Data();
        amanha.setData(26,4,2022);
        
        Data nascimento = new Data(1, 7, 1979);
        
        Data padrao = new Data();
        
        Data errada = new Data();
        errada.setData(32,4,1800);
     
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - POO</title>
    </head>
    <body>
        <h1>POO</h1>
        <h2>Index</h2>
        <h2>Testes com a classe DATA</h2>
        <h3>Hoje  é dia: <%= hoje.getDia()%></h3>
        <h3>Amanhã é dia: <%= amanha.getDia()%></h3>
        <h3>Nascimento: <%= nascimento.getData()%></h3>
        <h3>Aniversário: <%= nascimento.getAniversario()%></h3>
        
        <h3>Data Errada: <%= errada.getData() %></h3>
        <h3>Data Padrão: <%= padrao.getData() %></h3>
        
        <h2>Testes com a classe Contato</h2>
        <h3>Lista de contatos a partir do método Contato.getList</h3>
        <table border = "1">
            <tr><th>Nome</th><th>Telefone</th><th>Aniversario</th></tr>
            <% for (Contato c: Contato.getList()) {%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getAniversario() %></td>
                
            </tr>
            <%}%>
           
            
        </table>
            <h3>Lista de contatos a partir do método Database.getContatos</h3>
            <table border = "1">
            <tr><th>Nome</th><th>Telefone</th><th>Aniversario</th></tr>
            <% for (Contato c: Database.getContatos()) {%>
            <tr>
                <td><%= c.getNome() %></td>
                <td><%= c.getTelefone() %></td>
                <td><%= c.getNascimento().getAniversario() %></td>
                
            </tr>
            <%}%>
            
        </table>
        
        
    </body>
</html>
