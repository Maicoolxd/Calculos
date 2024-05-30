<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado de MRUA</title>
    <link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>
<h1>Resultado de Movimiento Rectilíneo Uniformemente Acelerado</h1>
<%
    // Obtener los parámetros del formulario y convertirlos a double
    String opcion = request.getParameter("opcion");
    double vi = Double.parseDouble(request.getParameter("vi"));
    double vf = Double.parseDouble(request.getParameter("vf"));
    double a = Double.parseDouble(request.getParameter("a"));
    double t = Double.parseDouble(request.getParameter("t"));
    double d = 0.0; // Valor por defecto si "d" es nulo

    String dParam = request.getParameter("d");
    if (dParam != null && !dParam.isEmpty()) {
        d = Double.parseDouble(dParam);
    }

    // Calcular el valor faltante según la opción seleccionada
    switch (opcion) {
        case "d":
            d = ((vi + vf) / 2) * t;
            break;
        case "vi":
            vi = vf - a * t;
            break;
        case "vf":
            vf = vi + a * t;
            break;
        case "a":
            a = (vf - vi) / t;
            break;
        case "t":
            t = (vf - vi) / a;
            break;
    }

%>
<table>
    <tr>
        <th>Variable</th>
        <th>Valor</th>
    </tr>
    <tr>
        <td>Velocidad Inicial (vi)</td>
        <td><%= vi %> m/s</td>
    </tr>
    <tr>
        <td>Velocidad Final (vf)</td>
        <td><%= vf %> m/s</td>
    </tr>
    <tr>
        <td>Aceleración (a)</td>
        <td><%= a %> m/s²</td>
    </tr>
    <tr>
        <td>Tiempo (t)</td>
        <td><%= t %> s</td>
    </tr>
    <tr>
        <td>Distancia (d)</td>
        <td><%= d %> m</td>
    </tr>
</table>
<a href="index.jsp">Volver</a>
</body>
</html>
