<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <%
            double saldoDevedor = 0;
            int periodo = 0;
            double juros = 0;
            double amortizacao = 0;
            double parcela = 0;
            try{
                saldoDevedor = Double.parseDouble(request.getParameter("saldoDevedor"));
                periodo = Integer.parseInt(request.getParameter("periodo"));
                juros = Double.parseDouble(request.getParameter("juros"));
            }catch(Exception e){}
        %>
        <h1>Tabela Price</h1>
        
        <form>
            Valor do empréstimo:
            <input type = "text" nome="saldoDevedor"/>
            Período:
            <input type = "text" nome="periodo"/>
            taxa de juros (%):
            <input type = "text" nome="juros"/>
            <input type = "submit" value="Calcular"/>
            <hr>
            <table>
                <tr>
                    <th>Período</th>
                    <th>Saldo Devedor</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                </tr>
                <%for(int i = 0; i<=periodo;i++){%>
                    <tr>
                        <td><%=i%></td>
                        <td><%=(saldoDevedor - amortizacao)%></td>
                        
                    </tr>
                <%}%>
            </table>
        </form>
    </body>
</html>
