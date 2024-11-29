<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lectura de JavaBean</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h1 class="text-center text-primary">Detalles del Círculo</h1>
    <div class="row justify-content-center mt-4">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Información del Círculo</h5>
                    <jsp:useBean id="circulo" class="models.Circulo" scope="session" />
                    <p class="card-text">Valor de la circunferencia: <strong><jsp:getProperty name="circulo" property="circunferencia" /></strong></p>
                    <p class="card-text">El radio del círculo: <strong><jsp:getProperty name="circulo" property="radio" /></strong></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Botón de inicio -->
    <div class="text-center mt-4">
        <a href="index.jsp" class="btn btn-secondary">Inicio</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
