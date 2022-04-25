<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Índice - SessionApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
   
        
<h1>
   
    Pagina Inicial
</h1>
         <%if(session.getAttribute("username")==null){%>
           <div>Você não está logado!</div>
    <form>
        <input type="text" name="username"/>
        <input type="submit" name="logon" value="Entrar"/>
            
                
    </form>
                    
        <%}else{%>
      
       <h4><a href="loteria.jsp">Sorteio Loteria</a></h4>
       
         
<%}%>
 
    </body>
</html>