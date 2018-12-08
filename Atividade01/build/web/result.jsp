<%-- 
    Document   : result
    Created on : 04/12/2018, 20:31:25
    Author     : Ig0r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Nota 1</th>
                    <th>Nota 2</th>
                    <th>Nota 2</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=request.getParameter("nome")%></td>
                    <td><%=request.getParameter("n1")%></td>
                    <td><%=request.getParameter("n2")%></td>
                    <td><%=request.getParameter("n3")%></td>
                </tr>
            </tbody>
        </table>
                <p><%
                    float n1 = Float.parseFloat(request.getParameter("n1"));
                    float n2 = Float.parseFloat(request.getParameter("n2"));
                    float n3 = Float.parseFloat(request.getParameter("n3"));
                    float result = (n1 + n2 + n3) / 3;
                    if(result >= 7){
                        out.print("aprovado");
                    }
                    else{
                        out.print("reprovado");
                    }
                    %>
                </p>
    </body>
</html>
