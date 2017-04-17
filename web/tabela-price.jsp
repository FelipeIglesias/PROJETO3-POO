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
            <input type = "text" name="saldoDevedor" value="<%=saldoDevedor%>"/>
            Período:
            <input type = "text" name="periodo" value="<%=periodo%>"/>
            taxa de juros (%):
            <input type = "text" name="juros" value="<%=juros%>"/>
            <input type = "submit" value="Calcular"/>
        </form>
        
            <hr/>
            
            <table border="1">
                <tr>
                    <th>Período</th>
                    <th>Saldo Devedor</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                </tr>
                <%
                    juros = juros / 100;
                    parcela = (saldoDevedor * juros)/(1-(1/Math.pow(1+juros, periodo)));
                    for(int i = 0; i <= periodo; i++){%>
                <tr>
                    <td><%=i%></td>
                    <td>
                        <%saldoDevedor = saldoDevedor - amortizacao;%>
                        <%=saldoDevedor%>
                    </td>
                    <td>
                        <%if(i==0){%>
                        0
                        <%}else{%>
                        <%=parcela%>
                        <%}%>
                    </td>
                    <td>
                        <%if(i==0){%>
                        0
                        <%}else{%>
                        <%=(saldoDevedor * juros)%>
                        <%}%>
                    </td>
                    <td>
                        <%if(i==0){%>
                            0
                        <%}else{%>
                            <%amortizacao = parcela - (saldoDevedor * juros);%>
                            <%=amortizacao%>
                        <%}%>
                    </td>
                </tr>
                <%}%>
            </table>
    </body>
</html>
