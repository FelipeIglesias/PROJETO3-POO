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
        <style>
            body {
                font-family: sans-serif;
            }
            form {
                margin: 20px 0;
            }
            input {
                font-size: 18px;
            }
            label {
                font-size: 22px;
                line-height: 35px;
            }
            input {
                margin-right: 30px;
            }
            input[type="number"] {
                padding: 5px 10px;
                
                text-align: right;
                max-width: 100px;
            }
            input[type="number"]::-webkit-outer-spin-button,
            input[type="number"]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            input[type="number"] {
                -moz-appearance: textfield;
            }
            .btn-enviar {
                display: inline-block;
                padding: 7px 20px;
                background-color: #111;
                color: #fff;
                border: 1px solid #fff;
                border-radius: 5px;
            }
            table {
                border-collapse: collapse;
            }

            td,th {
                padding: 5px 20px;
                text-align: right;
            }

            tfoot {
                font-weight: bold;
            }
        </style>
    </head>
    <body>
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
        <div class="form container">
            <form action="" method="GET">
                <label for="valor">Valor:</label>
                <input type="number" step="any" name="valor" value="<%=valor%>">

                <label for="taxa">Taxa:</label>
                <input type="number" step="any" name="taxa" value="<%=taxa%>">

                <label for="prazo">Prazo:</label>
                <input type="number" name="prazo" value="<%=prazo%>">

                <input type="submit" class="btn-enviar" value="Calcular">
            </form>
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
    </body>
</html>