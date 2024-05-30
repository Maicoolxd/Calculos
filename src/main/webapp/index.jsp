<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Calcular MRUA</title>
  <script>
    function actualizarFormulario() {
      var opcion = document.getElementById("opcion").value;
      var campos = ["vi", "vf", "a", "t", "d"];
      for (var i = 0; i < campos.length; i++) {
        document.getElementById(campos[i]).disabled = false;
      }
      document.getElementById(opcion).disabled = true;
    }
  </script>
</head>
<body>
<h1>Calculadora de Movimiento Rectilíneo Uniformemente Acelerado</h1>
<form action="resultado.jsp" method="post">
  <label for="opcion">Seleccione qué desea calcular:</label><br>
  <select id="opcion" name="opcion" onchange="actualizarFormulario()">
    <option value="d">Distancia</option>
    <option value="vi">Velocidad Inicial</option>
    <option value="vf">Velocidad Final</option>
    <option value="a">Aceleración</option>
    <option value="t">Tiempo</option>
  </select><br><br>

  <label for="vi">Velocidad Inicial (m/s):</label><br>
  <input type="text" id="vi" name="vi"><br><br>

  <label for="vf">Velocidad Final (m/s):</label><br>
  <input type="text" id="vf" name="vf"><br><br>

  <label for="a">Aceleración (m/s²):</label><br>
  <input type="text" id="a" name="a"><br><br>

  <label for="t">Tiempo (s):</label><br>
  <input type="text" id="t" name="t"><br><br>

  <label for="d">Distancia (m):</label><br>
  <input type="text" id="d" name="d"><br><br>

  <input type="submit" value="Calcular">
</form>
</body>
</html>
