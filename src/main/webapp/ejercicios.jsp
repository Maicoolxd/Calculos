<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculos Realizados</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1>Resultados</h1>
<%
    // Declaramos op como el metodo de opcion para elegir los casos que usaremos
    String opcion = request.getParameter("opcion");
    //declaramos nuestras variables inicializadas en 0.0 ya que son doubles
    double velocidadInicial = 0.0;
    double velocidadFinal = 0.0;
    double aceleracion = 0.0;
    double tiempo = 0.0;
    double distancia = 0.0;

    //el try permite verificar errores en cuanto al proceso
    try {
        // Obtener y convertir los parámetros a double
        // En cada if convierte el parametro a double siempre y cuando no sea null ni tampoco este vacio
        if (request.getParameter("vi") != null && !request.getParameter("vi").isEmpty()) {
            velocidadInicial = Double.parseDouble(request.getParameter("vi"));
        }
        if (request.getParameter("vf") != null && !request.getParameter("vf").isEmpty()) {
            velocidadFinal = Double.parseDouble(request.getParameter("vf"));
        }
        if (request.getParameter("a") != null && !request.getParameter("a").isEmpty()) {
            aceleracion = Double.parseDouble(request.getParameter("a"));
        }
        if (request.getParameter("t") != null && !request.getParameter("t").isEmpty()) {
            tiempo = Double.parseDouble(request.getParameter("t"));
        }
        if (request.getParameter("d") != null && !request.getParameter("d").isEmpty()) {
            distancia = Double.parseDouble(request.getParameter("d"));
        }

        // Aqui se realiza los calculos dependiendo de la opcion que se escoja, utilizando formulas del MRUV
        switch (opcion) {
            case "distancia":
                distancia = ((velocidadInicial + velocidadFinal) / 2) * tiempo;
                break;
            case "velocidadInicial":
                velocidadInicial = velocidadFinal - aceleracion * tiempo;
                break;
            case "velocidadFianl":
                velocidadFinal = velocidadInicial + aceleracion * tiempo;
                break;
            case "aceleracion":
                aceleracion = (velocidadFinal - velocidadInicial) / tiempo;
                break;
            case "tiempo":
                tiempo = (velocidadFinal - velocidadInicial) / aceleracion;
                break;
        }
    //el catch contiene la informacion del error y en este caso nos despliega una mensaje de error si los campos son vacios o con errores
    } catch (NumberFormatException e) {
        // Manejar el error de conversión de String a double
        out.println("<p>Ingrese un valor correcto</p>");
    }
%>
<!--Muestra los resulatdos de acuerdo a los valores ingresados y a las formulas en formato de una tabla-->
<table>
    <tr>
        <th>Descripcion</th>
        <th>Resultado</th>
    </tr>
    <tr>
        <td>Velocidad Inicial</td>
        <td><%= velocidadInicial %> m/s</td>
    </tr>
    <tr>
        <td>Velocidad Final </td>
        <td><%= velocidadFinal %> m/s</td>
    </tr>
    <tr>
        <td>Aceleración </td>
        <td><%= aceleracion %> m/s²</td>
    </tr>
    <tr>
        <td>Tiempo </td>
        <td><%= tiempo %> s</td>
    </tr>
    <tr>
        <td>Distancia </td>
        <td><%= distancia %> m</td>
    </tr>
</table>
<a href="index.jsp">Volver</a>
</body>
</html>
