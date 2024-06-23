<%-- 
    Document   : procesarFigura
    Created on : 22 jun. 2024, 7:01:01 p. m.
    Author     : Simon
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultados de Figuras Geométricas</title>
</head>
<body>
    <h1>Resultados de la Figura</h1>
    <%
        //Recibir los valores del formulario
        String valor1 = request.getParameter("valor1");
        String valor2 = request.getParameter("valor2");
        String valor3 = request.getParameter("valor3");
        String valor4 = request.getParameter("valor4");

        //Array para almacenar los valores convertidos a double
        double[] valores = new double[4];
        int count = 0;

        //Convertir los valores a números y contarlos
        if (valor1 != null && !valor1.isEmpty()) valores[count++] = Double.parseDouble(valor1);
        if (valor2 != null && !valor2.isEmpty()) valores[count++] = Double.parseDouble(valor2);
        if (valor3 != null && !valor3.isEmpty()) valores[count++] = Double.parseDouble(valor3);
        if (valor4 != null && !valor4.isEmpty()) valores[count++] = Double.parseDouble(valor4);

        //Determinar la figura y realizar los cálculos
        if (count == 1) {
            //Cálculos para el círculo
            double radio = valores[0];
            double diametro = 2 * radio;
            double circunferencia = 2 * Math.PI * radio;
            double area = Math.PI * radio * radio;
            //Mostrar resultados de círculo
            out.println("<p>Figura: Círculo</p>");
            out.println("<p>Radio: " + radio + "</p>");
            out.println("<p>Diámetro: " + diametro + "</p>");
            out.println("<p>Circunferencia: " + circunferencia + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 2) {
            //Cálculos para el rectángulo
            double lado1 = valores[0];
            double lado2 = valores[1];
            double perimetro = 2 * (lado1 + lado2);
            double area = lado1 * lado2;
            //Mostrar resultados de rectángulo
            out.println("<p>Figura: Rectángulo</p>");
            out.println("<p>Lado 1: " + lado1 + "</p>");
            out.println("<p>Lado 2: " + lado2 + "</p>");
            out.println("<p>Perímetro: " + perimetro + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 3) {
            //Cálculos para el triángulo
            double lado1 = valores[0];
            double lado2 = valores[1];
            double lado3 = valores[2];
            //Determinar tipo de triángulo
            String tipoTriangulo;
            if (lado1 == lado2 && lado2 == lado3) {
                tipoTriangulo = "Equilátero";
            } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
                tipoTriangulo = "Isósceles";
            } else {
                tipoTriangulo = "Escaleno";
            }
            //Cálculo del área de triángulo
            double s = (lado1 + lado2 + lado3) / 2;
            double area = Math.sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
            //Mostrar resultados de triángulo
            out.println("<p>Figura: Triángulo " + tipoTriangulo + "</p>");
            out.println("<p>Lado 1: " + lado1 + "</p>");
            out.println("<p>Lado 2: " + lado2 + "</p>");
            out.println("<p>Lado 3: " + lado3 + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 4) {
            //Cálculos para el cuadrado
            double lado1 = valores[0];
            double lado2 = valores[1];
            double lado3 = valores[2];
            double lado4 = valores[3];
            //Verificar si los cuatro lados son iguales para determinar si es cuadrado o no
            if (lado1 == lado2 && lado2 == lado3 && lado3 == lado4) {
                double perimetro = 4 * lado1;
                double area = lado1 * lado1;
                //Mostrar resultados de cuadrado
                out.println("<p>Figura: Cuadrado</p>");
                out.println("<p>Lado: " + lado1 + "</p>");
                out.println("<p>Perímetro: " + perimetro + "</p>");
                out.println("<p>Área: " + area + "</p>");
            } else {
                //Mostrar mensaje de error en caso de que los cuatro lados no sean iguales
                out.println("<p>Error: Los cuatro valores no corresponden a un cuadrado.</p>");
            }
        } else {
            //Mostrar mensaje de error en caso de que se introduzcan menos de 1 o mas de 4 valores
            out.println("<p>Error: Debe introducir entre 1 y 4 valores.</p>");
        }
    %>
</body>
</html>

