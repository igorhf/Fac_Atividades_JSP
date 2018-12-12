<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Atividade 2</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>        
        <div>        
            <form action="index.jsp" method="get">
                <label>NOME: </label><input type="text" name="nome" required><br><br>
                <label>SALARIO: </label><input type="number" name="salario" required><br><br>
                <label>NOVO SALARIO: </label><input type="number" name="salario_n" required><br><br>
                <input type="submit" name="btn" value="Enviar" />
            </form>        
        </div>               
        <%        
        String nome = request.getParameter("nome");
        float salario = Float.parseFloat(request.getParameter("salario"));
        float salario_n = Float.parseFloat(request.getParameter("salario_n"));
        float result = Math.abs(((salario-salario_n)/salario)*100);        
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>NOME</th>
                    <th>SALARIO ATUAL</th>
                    <th>NOVO SALARIO</th>
                    <th>SALARIO REAJUSTADO EM %</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=nome%></td>
                    <td><%=salario%></td>
                    <td><%=salario_n%></td>
                    <td>%<%=result%></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
