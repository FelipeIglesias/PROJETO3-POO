<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <%
            double valor = 0;
            int periodo = 0;
            double juros = 0;
            
            try{
                valor = Double.parseDouble(request.getParameter("valor"));
                periodo = Integer.parseInt(request.getParameter("periodo"));
                juros = Double.parseDouble(request.getParameter("juros"));
            }catch(Exception e){}
        %>
        <h1>Tabela Price</h1>
        <form>
            Valor do empréstimo:
            <input type = "text" nome="valor"/>
            Período:
            <input type = "text" nome="periodo"/>
            taxa de juros (%):
            <input type = "text" nome="juros"/>
            <input type = "submit" value="Calcular"/>
            <hr>
            <table>
                
            </table>
        </form>
    </body>
</html>
