<%-- 
    Document   : amortizacao-americano
    Created on : Apr 17, 2017, 1:32:01 AM
    Author     : jeffersoncn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Americano de Amortização</title>
        <!-- Importa Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <!-- Importa tema Bootstra.386 -->
        <link rel="stylesheet" href="css/bootstrap-theme.css"/>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>
        <br>
        <%
            float valor = 0, taxa = 0;
            int prazo = 0;
            try {
                valor = Float.parseFloat(request.getParameter("valor"));
                taxa = Float.parseFloat(request.getParameter("taxa"));
                prazo = Integer.parseInt(request.getParameter("prazo"));
            } catch (Exception e) {

            }
        %>
        <h1>Sistema Americano de Amortização</h1>
        <div class="form container" >
            <table style="spacing: 25px 25px 25px 25px">
            <form class="form-horizontal" action="" method="GET">
                <tr>
                    <td><label class="control-label">Valor: </label></td>
                    <td><input type="number" step="any" name="valor" value="<%=valor%>"></td>
                </tr>
                <tr>
                    <td><label for="taxa">Taxa:</label></td>
                    <td><input type="number" step="any" name="taxa" value="<%=taxa%>"></td>
                </tr>
                <tr>
                <td><label for="prazo">Prazo:</label></td>
                <td><input type="number" name="prazo" value="<%=prazo%>"></td>
                </tr>
                <tr>
                    <td><button type="submit" class="btn" value="Calcular">Calcular</td>
                </tr>   
            </form>
            </table>
        </div>

        <% if (valor > 0 && taxa > 0 && prazo > 0) { %>
        <div class="table container">
            <h2>Calendário de Amortização</h2>
            <table border="1">
                <thead>
                    <tr>
                        <th>Mês</th>
                        <th>Saldo devedor</th>
                        <th>Amortização</th>
                        <th>Juros</th>
                        <th>Parcela</th>
                    </tr>
                </thead>
                <%  float saldoDevedor = valor,
                            jurosMensal = valor * taxa,
                            jurosTotal = 0,
                            amortizacao = 0,
                            amortizacaoTotal = 0,
                            parcela;

                    for (int mes = 1; mes <= prazo; mes++) {
                        if (mes == prazo) {
                            amortizacao = saldoDevedor;
                        }
                        saldoDevedor -= amortizacao;
                        parcela = jurosMensal + amortizacao;

                        jurosTotal += jurosMensal;
                        amortizacaoTotal += amortizacao;
                %>
                <tr>
                    <td><%=mes%></td>
                    <td><%=String.format("R$ %.2f", saldoDevedor)%></td>
                    <td><%=String.format("R$ %.2f", amortizacao)%></td>
                    <td><%=String.format("R$ %.2f", jurosMensal)%></td>
                    <td><%=String.format("R$ %.2f", parcela)%></td>
                </tr>
                <%  }%>
                <tfoot>
                    <tr>
                        <td colspan="2" align="right">Total</td>
                        <td><%=String.format("R$ %.2f", amortizacaoTotal)%></td>
                        <td><%=String.format("R$ %.2f", jurosTotal * prazo)%></td>
                        <td><%=String.format("R$ %.2f", amortizacaoTotal + jurosTotal)%></td>
                    </tr>
                </tfoot>
            </table>
        </div>
        <%
            }
        %>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>