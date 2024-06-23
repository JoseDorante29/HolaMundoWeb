<%-- 
    Document   : index
    Created on : 22 jun. 2024, 6:29:55 p. m.
    Author     : Simon
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Figuras Geométricas</title>
</head>
<body>
    <h1>Introduzca los valores de los lados de la figura:</h1>
    <form action="procesarFigura.jsp" method="post">
        <!--Campos de entrada para los valores-->
        <label for="valor1">Valor 1:</label>
        <input type="text" id="valor1" name="valor1"><br><br>
        
        <label for="valor2">Valor 2:</label>
        <input type="text" id="valor2" name="valor2"><br><br>
        
        <label for="valor3">Valor 3:</label>
        <input type="text" id="valor3" name="valor3"><br><br>
        
        <label for="valor4">Valor 4:</label>
        <input type="text" id="valor4" name="valor4"><br><br>
        
        <!--Botón para enviar los datos del formulario y botón de limpiar -->
        <input type="submit" value="Procesar"> <input type="reset" value="Limpiar">
    </form>
</body>
</html>
