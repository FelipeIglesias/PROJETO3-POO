<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        <!-- Importa Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <!-- Importa tema Bootstra.386 -->
        <link rel="stylesheet" href="css/bootstrap-theme.css"/>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <br>
        <%
            double saldoDevedor = 0;
            int periodo = 0;
            double juros = 0;
            double valorJuros = 0;
            double amortizacao = 0;
            double parcela = 0;
            DecimalFormat decimal = new DecimalFormat("#.##");
            try {
                saldoDevedor = Double.parseDouble(request.getParameter("saldoDevedor"));
                periodo = Integer.parseInt(request.getParameter("periodo"));
                juros = Double.parseDouble(request.getParameter("juros"));
            } catch (Exception e) {
            }
        %>

        <script>
            function SomenteNumero(e) {
                var tecla;
                tecla = (window.event) ? event.keyCode : e.which;
                if ((tecla > 47 && tecla < 58)) {
                    return true;
                } else if (tecla == 44 || tecla == 46) {
                    return true;
                } else {
                    alert(" Insira apenas caracteres numericos");
                    return false;
                }
            }
        </script>
        <div class="container">
            <div class="page-header">
                <h1>Tabela Price</h1>
            </div>
            <div class="form container" >
                <table style="spacing: 25px 25px 25px 25px;">
                    <form class="form-horizontal" action="" method="GET">
                        <tr>
                            <td><label class="control-label">Valor do empréstimo: </label></td>
                            <td><input type = "text" name="saldoDevedor" value="<%=saldoDevedor%>" onkeypress="SomenteNumero()"/></td>
                        </tr>
                        <tr>
                            <td><label for="taxa">taxa de juros (%):</label></td>
                            <td><input type = "text" name="juros" value="<%=juros%>" onkeypress="SomenteNumero()"/></td>
                        </tr>
                        <tr>
                            <td><label for="prazo">Período:</label></td>
                            <td><input type = "text" name="periodo" value="<%=periodo%>" onkeypress="SomenteNumero()"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" class="btn btn-primary pull-right" value="Calcular"></td>
                        </tr>   
                    </form>
                    
                </table>
            </div>
            <hr/>

            <table class="table">
                <tr>
                    <th>Período</th>
                    <th>Saldo Devedor</th>
                    <th>Parcela</th>
                    <th>Juros</th>
                    <th>Amortização</th>
                </tr>
                <%
                    juros = juros / 100;
                    parcela = (saldoDevedor * juros) / (1 - (1 / Math.pow(1 + juros, periodo)));
                    for (int i = 0; i <= periodo; i++) {%>
                <tr>
                    <td><%=i%></td>
                    <td>
                        <%saldoDevedor = saldoDevedor - amortizacao;%>
                        <%if (saldoDevedor < 1) {
                                saldoDevedor = 0;
                            }%>
                        R$<%=decimal.format(saldoDevedor)%>
                    </td>
                    <td>
                        <%if (i == 0) {%>
                        R$0,00
                        <%} else {%>
                        R$<%=decimal.format(parcela)%>
                        <%}%>
                    </td>
                    <td>
                        <%if (i == 0) {%>
                        R$0,00
                        <%valorJuros = saldoDevedor * juros;%>
                        <%} else {%>
                        R$<%=decimal.format(valorJuros)%>
                        <%valorJuros = saldoDevedor * juros;%>
                        <%}%>
                    </td>
                    <td>
                        <%if (i == 0) {%>
                        R$0,00
                        <%amortizacao = parcela - (saldoDevedor * juros);%>
                        <%} else {%>
                        R$<%=decimal.format(amortizacao)%>
                        <%amortizacao = parcela - (saldoDevedor * juros);%>
                        <%}%>
                    </td>
                </tr>
                <%}%>
            </table>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <!-- Importa jQuery -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
