<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Conexion.BD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button class="btn btn-primary" id="btnGenerate">Generar Clase</button>
        <%=generarClase()%>
        <%!
        public static String generarClase(){

		final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

		
                Random random = new Random();
                
		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < 8; i++)
		{
			int randomIndex = random.nextInt(chars.length());
			sb.append(chars.charAt(randomIndex));
		}

		return sb.toString();
	}

	public static void main(String[] args)
	{
		int len = 10;
		System.out.println(generarClase());
	}
        %>
        <h1>Hello World!</h1>
    </body>
</html>
