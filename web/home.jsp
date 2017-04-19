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
        <br><br>
        </div>
        <br>
        <br>
        <div border="1" style="border-style: double ;border-color: white; text-align: justify" class="col-md-12">
            <h2>Amortização Americana</h2><br>
            <br>
            <h4>O Sistema Americano de Amortização é um tipo de quitação de empréstimo que favorece aqueles que desejam pagar o valor principal através de uma única parcela, porém os juros devem ser pagos periodicamente ou, dependendo do contrato firmado entre as partes, os juros são capitalizados e pagos junto ao valor principal. Observe as planilhas demonstrativas desse modelo de amortização. </h4>
            <br>
            <button class="btn-link" href="amortizacao-americano.jsp">AMERICANA</button>
            <br>
        </div>
        <div style="border-style: double ;border-color: white; text-align: justify" class="col-md-12" >
            <h2>Amortização Constante</h2><br>
            <br>    
            <h4>Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculada dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas.</h4>
            <br>
            <button class="btn-link" href="amortizacao-constante.jsp">CONSTANTE</button>
            <br>
        </div>
        <div style="border-style: double ;border-color: white; text-align: justify" class="col-md-12" >
            <h2>Tabela Price</h2><br>
            <br>     
            <p>é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard Price em sua obra "Observações sobre Pagamentos Remissivos" (em inglês: Observations on Reversionary Payments). </h4>
            <br>
            <button class="btn-link" href="amortizacao-americano.jsp">PRICE</button>
            <br>
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
