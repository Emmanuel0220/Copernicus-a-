<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Conexion.BD"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puntuaciones</title>
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        <header>
            <h1>Puntuaciones</h1>
        </header>
            
            <table cellpadding="0" cellspacing="0" width="780" border='1'>

            <tr>

              <th>Nombre del alumno</td>

              <th>Ejercicio 1</th>

              <th>Ejercicio 2</th>
              
              <th>Ejercicio 3</th>
              
              <th>Ejercicio 4</th>

            </tr>
            
            <%
            BD basesita = new BD();
            basesita.conectar();
            Statement sql = null;    
            String qry= "select nom_usuario from Usuario";
            ResultSet data = sql.executeQuery (qry);
            while(data.next()){
            
            %>

            <tr>

              <td><% out.print(data.getString(1));%></td>
              <%} data.close(); sql.close(); %>
              
              <%
            Statement sql1 = null;
            String qry1= "select cal_ejer from Ejercicios";
            ResultSet data1 = sql1.executeQuery (qry1);
            while(data1.next()){
            
            %>

              <td><% out.print(data.getInt(2));%></td>
              
              <td><% out.print(data.getInt(3));%></td>
              
              <td><% out.print(data.getInt(4));%></td>
              
              <td><% out.print(data.getInt(5));%></td>
              <%} data1.close(); sql1.close(); %>
              
              <%
            Statement sql2 = null;
            String qry3= "select cal_exam from Examen";
            ResultSet data2 = sql2.executeQuery (qry3);
            while(data2.next()){
            
            %>
            <td><% out.print(data.getInt(6));%></td>
            <%} data2.close(); sql2.close();%>

            </tr>

          </table>
    </body>
</html>