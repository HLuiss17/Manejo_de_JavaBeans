<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manejo de JavaBeans</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- Encabezado -->
<div class="container mt-5">
    <h1 class="text-center">Manejo de JavaBeans</h1>
    <p class="text-center">Selecciona una opción para realizar cálculos.</p>

    <!-- Sección de cálculos -->
    <div class="row justify-content-center mt-4">
        <!-- Calcular el radio del círculo -->
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white text-center">
                    <h3>Calcular el Radio del Círculo</h3>
                </div>
                <div class="card-body text-center">
                    <p>Usa la circunferencia para calcular el radio.</p>
                    <a href="setter.jsp" class="btn btn-primary mb-2">Ingresar el valor de la circunferencia</a>
                    <br>
                    <a href="getter.jsp" class="btn btn-success">Calcular Radio</a>
                </div>
            </div>
        </div>

        <!-- Calcular el área del rectángulo -->
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header bg-warning text-dark text-center">
                    <h3>Calcular el Área del Rectángulo</h3>
                </div>
                <div class="card-body text-center">
                    <p>Usa la base y altura para calcular el área.</p>
                    <a href="setterRectangulo.jsp" class="btn btn-warning mb-2">Ingresar base y altura</a>
                    <br>
                    <a href="getterRectangulo.jsp" class="btn btn-success">Calcular Área</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
