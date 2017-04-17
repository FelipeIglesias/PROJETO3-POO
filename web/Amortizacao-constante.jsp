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
            double empConst = 0;
            int perConst = 0;
            double jurConst = 0;
            double amorConst = 0;
            double parConst = 0;
            try{
                empConst= Double.parseDouble(request.getParameter("emprestimoConst"));
                perConst = Integer.parseInt(request.getParameter("periodoConst"));
                jurConst = Double.parseDouble(request.getParameter("jurosConst"));
            }catch(Exception e){}
        %>
        
<script>
            function SomenteNumero(e){
                var tecla;
                     tecla = (window.event)?event.keyCode:e.which;   
                        if((tecla>47 && tecla<58 )) {
                            return true;
                        }
                        else if ( tecla==44 || tecla==46 ){ 
                            return true;
                        }
                        else{
                alert(" Insira apenas caracteres numericos");
            return false;
            }
        }
</script>
        <form>
            Valor do empréstimo:
            <input type = "text" name="emprestimoConst" value="<%=empConst%>" id="e" onkeypress="SomenteNumero()"/>
            Período:
            <input type = "text" name="periodoConst" value="<%=perConst%>"  onkeypress="SomenteNumero()" />
            taxa de juros (%):
            <input type = "text" name="jurosConst" value="<%=jurConst%>"  onkeypress="SomenteNumero()"/>
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
