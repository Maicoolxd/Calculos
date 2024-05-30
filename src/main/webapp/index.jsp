<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Calcular </title>
  <link rel="stylesheet" type="text/css" href="styles.css">
    <script>
    //esta funcion permite verificar que si se selecciona una opcion esta quede
    //deshailitada para continuar con los calculos
    function actualizarFormulario() {
      //aqui seleccionamos un elemento de nuestra opciones que en este caso son 5
      var opcion = document.getElementById("opcion").value;
      //estos solo elementos que se seleccionaran
      var campos = ["velocidadInicial", "velocidadFinal", "aceleracion", "tiempo", "distancia"];

      //utilizamos un bucle for `para seleecionar los elementos
      for (var i = 0; i < campos.length; i++) {
        document.getElementById(campos[i]).disabled = false;
      }

      document.getElementById(opcion).disabled = true;
    }
  </script>

</head>
<body>
<h1>Calculos</h1>
<form action="ejercicios.jsp" method="post">
  <label for="opcion">¿Que desea calcular?:</label><br>
  <select id="opcion" name="opcion" onchange="actualizarFormulario()">
    <option value="distancia">Distancia</option>
    <option value="velocidadInicial">Velocidad Inicial</option>
    <option value="velocidadFinal">Velocidad Final</option>
    <option value="aceleracion">Aceleracion</option>
    <option value="tiempo">Tiempo</option>
  </select><br><br>

  <label for="velocidadInicial">Velocidad Inicial (m/s):</label><br>
  <input type="number" id="velocidadInicial" name="vi" min="0"><br><br>

  <label for="velocidadFinal">Velocidad Final (m/s):</label><br>
  <input type="number" id="velocidadFinal" name="vf" min="0"><br><br>

  <label for="aceleracion">Aceleración (m/s²):</label><br>
  <input type="number" id="aceleracion" name="a"><br><br>

  <label for="tiempo">Tiempo (s):</label><br>
  <input type="number" id="tiempo" name="t" min="0"><br><br>

  <label for="distancia">Distancia (m):</label><br>
  <input type="number" id="distancia" name="d"><br><br>

  <input type="submit" value="Calcular">
</form>
</body>
</html>
