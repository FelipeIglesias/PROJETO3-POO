<%-- 		
     Document   : Amortizacao-constante		
     Created on : 16/04/2017, 22:19:01		
     Author     : Pousada		
 --%>		
 		
 <%@page contentType="text/html" pageEncoding="UTF-8"%>		
 <%@page contentType="text/html" import="java.text.DecimalFormat"%>		
 <!DOCTYPE html>		
 <html>		
     <head>		
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		
         <title>Amortização Constante</title>		
     </head>		
     <body>
         <!-- Importa Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <!-- Importa tema Bootstra.386 -->
        <link rel="stylesheet" href="css/bootstrap-theme.css"/>
         <%@include file="WEB-INF/jspf/menu.jspf" %>		
         <br>		
         <h1>Calculo de Amortização Constante</h1>		
         <%		
             double empConst = 0;		
             int perConst = 0;		
             double jurConst = 0;		
             double amorConst = 0;		
             double parConst = 0;		
             double jurosParcela = 0;		
             double jurosTotal = 0;		
             double parcelaMes = 0;		
             double totalAmorConst = 0;   		
             		
             DecimalFormat decimal = new DecimalFormat("#.##");		
 		
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
                     <th> Período </th>		
                     <th> Empréstimo </th>		
                     <th> Amortização </th>		
                     <th> Juros </th>		
                     <th> Amortização + Juros </th>		
                 </tr>		
             		
                 <% 		
             amorConst = empConst / perConst;		
             jurConst = jurConst / 100;		
             int aux = 0;		
             for(int i = 0; i<= perConst; i++){%>		
   <tr>		
                     <td><%=i%></td>		
                     <td>R$ <%=empConst%></td>		
                     <% 		
                    if (i == 0){%>		
                         <td>--</td>		
                         <td>--</td>		
                         <td>--</td>		
                         <%}		
                    else {%>		
                         <td>R$ <%=decimal.format(amorConst)%></td>		
                         <td>R$ <%=decimal.format(jurosParcela)%></td>		
                         <td>R$ <%=decimal.format(parcelaMes)%></td>		
                         <%}%>		
             <% if(i > 0 &&  i == perConst){%>		
            <% amorConst = amorConst * i; %>		
          		
            <td><b>TOTAL<b></td>		
          <td>--</td>		
          <td>R$ <%=decimal.format(amorConst)%>      </td>		
          <td>R$ <%=decimal.format(jurosTotal)%>     </td>		
          <td>R$ <%=decimal.format(totalAmorConst)%> </td>		
          <%}%>        		
            		
          <%   jurosParcela = empConst * jurConst;		
             empConst = empConst - amorConst;		
             jurosTotal = jurosTotal + jurosParcela;		
             parcelaMes = jurosParcela + amorConst;		
             totalAmorConst = totalAmorConst + parcelaMes;		
   		
              aux = i; %>		
            		
          <%} %>		
            		
             </tr>		
                         		
             </table>		
             		
             <%@include file="WEB-INF/jspf/rodape.jspf" %>
             <!-- Importa jQuery -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
     </body>		
 </html>