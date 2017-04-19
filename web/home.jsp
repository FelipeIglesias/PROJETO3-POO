<%-- 
    Document   : home
    Created on : 17/04/2017, 20:16:23
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Importa Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <!-- Importa tema Bootstra.386 -->
        <link rel="stylesheet" href="css/bootstrap-theme.css"/>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <br>
            <br>
            <div class="hero-unit">
                <h1>Projeto 3 - AMORTIZAÇÃO </h1>
                <p>
                    Grupo de Programação Orientada ao Objeto do curso de Análise e Desenvolvimento de Sistemas da Faculdade de Técnologia de Praia Grande, visa apresentar este projeto academico, que tem como intuito mostrar 3 paginas além da home, que efetuem calculos de amortização e exibem tabelas prontas de acordo com a inserção de dados
                </p>
            </div>
            <br>    
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div border="1" style="min-height: 450px; text-align: justify;" class="hero-unit">
                        <h1>Amortização Americana</h1>
                        <p>O Sistema Americano de Amortização é um tipo de quitação de empréstimo que favorece aqueles que desejam pagar o valor principal através de uma única parcela, porém os juros devem ser pagos periodicamente ou, dependendo do contrato firmado entre as partes, os juros são capitalizados e pagos junto ao valor principal. Observe as planilhas demonstrativas desse modelo de amortização. </p>
                        <p>
                            <a href="amortizacao-americano.jsp" class="btn btn-large btn-primary" href="amortizacao-americano.jsp">AMERICANA</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div style="min-height: 450px; text-align: justify;" class="hero-unit" >
                        <h1>Amortização Constante</h1>

                        <p>Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculada dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas.</p>
                        <p>
                            <a href="amortizacao-constante.jsp" class="btn btn-large btn-primary" href="amortizacao-constante.jsp">CONSTANTE</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div style="min-height: 450px; text-align: justify;" class="hero-unit" >
                        <h1>Tabela Price</h1>     
                        <p>é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard Price em sua obra "Observações sobre Pagamentos Remissivos" (em inglês: Observations on Reversionary Payments). </p>
                        <p>   
                            <a href="tabela-price.jsp" class="btn btn-large btn-primary" href="amortizacao-americano.jsp">PRICE</a>
                        </p>
                    </div> 
                </div>
            </div>
        </div>



        <br>
        <br>
        <br>
        <hr color="white">



        <!-- Importa jQuery -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </div>
    <%@include file="WEB-INF/jspf/rodape.jspf" %>
</body>
</html>
