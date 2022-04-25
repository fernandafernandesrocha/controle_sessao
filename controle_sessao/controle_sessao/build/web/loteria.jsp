<%-- 
    Document   : datahora
    Created on : 21 de mar. de 2022, 19:37:02
    Author     : rlarg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loteria</title>
    </head>
    <body>
         <%@include file ="WEB-INF/jspf/header.jspf"%>
        
        
        <%if(session.getAttribute("username")==null){%>
    <div>Identifique-se para ter acesso ao site</div>
    <form>
        <input type="text" name="username"/>
        <input type="submit" name="logon" value="Entrar"/>
    </form>
    <%}else{%>
        
        <br>
        <h2>Loteria</h2>
         <div>
          
             <table> 
                <thead>
                  <tr>
                    <th>Índice</th>
                    <th>Número</th>
                
                  </tr>
                </thead>
                <tbody>
                  <tr>
                      <% for (int i = 1; i <= 6; i++) { %>
                    <td><%=i%></td>
                    <td><%=sessionNumbers.get(i)%></td>
                  </tr>
                  <%}%>
                </tbody>
              </table>
                </div>
        <% }%>
        
         <h6><a href="index.jsp">VOLTAR</a></h6>
         
    </body>
</html>