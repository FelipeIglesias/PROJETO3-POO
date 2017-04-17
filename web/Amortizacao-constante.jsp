<%-- 
    Document   : Amortizacao-constante
    Created on : 16/04/2017, 22:19:01
    Author     : Pousada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amortização Constante</title>
    </head>
    <body>
        <h1>Calculo de Amortização Constante</h1>
        
        <%
            double emprestimo = 0;
            int periodo = 0;
            double juros = 0;
            double amortizacao = 0;
            double parcela = 0;
            try{
                emprestimo = Double.parseDouble(request.getParameter("emprestimo"));
                periodo = Integer.parseInt(request.getParameter("periodo"));
                juros = Double.parseDouble(request.getParameter("juros"));
            }catch(Exception e){}
        %>
        
        <form>
            Valor do empréstimo:
            <input type = "text" nome="emprestimo"/>
            Período:
            <input type = "text" nome="periodo"/>
            taxa de juros (%):
            <input type = "text" nome="juros"/>
            <input type = "submit" value="Calcular"/>
        </form>
        
            <hr>
            
            <table border="1">
                <tr>
                    <th>Período</th>
                    <th>Empréstimo</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                </tr>
               
                    <tr>
                        
            </table>
    </body>
</html>
