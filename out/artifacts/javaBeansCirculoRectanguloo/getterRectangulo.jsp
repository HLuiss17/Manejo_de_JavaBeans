<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Obtener el JavaBean</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h1 class="text-center text-primary">Área del Rectángulo</h1>
    <div class="row justify-content-center mt-4">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Detalles del Rectángulo</h5>
                    <jsp:useBean id="rectangulo" class="models.Rectangulo" scope="session" />
                    <p class="card-text">Valor de la base: <strong><jsp:getProperty name="rectangulo" property="base" /></strong></p>
                    <p class="card-text">Valor de la altura: <strong><jsp:getProperty name="rectangulo" property="altura" /></strong></p>
                    <p class="card-text">El área del rectángulo: <strong><jsp:getProperty name="rectangulo" property="area" /></strong></p>
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
