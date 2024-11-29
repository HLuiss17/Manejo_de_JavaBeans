<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar el JavaBean</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h1 class="text-center text-primary">Circunferencia</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Formulario -->
            <form method="post" action="setter.jsp" class="p-4 border rounded shadow-sm bg-white">
                <div class="mb-3">
                    <label for="circunferencia" class="form-label">Ingrese la circunferencia:</label>
                    <input type="number" step="0.01" id="circunferencia" name="circunferencia" class="form-control" placeholder="Ejemplo: 31.42" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Actualizar</button>
            </form>
        </div>
    </div>

    <!-- Mensajes de estado -->
    <div class="mt-3">
        <jsp:useBean id="circulo" class="models.Circulo" scope="session" />
        <%
            String circunferenciaParam = request.getParameter("circunferencia");
            if (circunferenciaParam != null && !circunferenciaParam.isEmpty()) {
                try {
                    double circunferencia = Double.parseDouble(circunferenciaParam);
                    circulo.setCircunferencia(circunferencia);
        %>
        <div class="alert alert-success text-center" role="alert">
            La circunferencia ha sido actualizada exitosamente.
        </div>
        <%
        } catch (NumberFormatException e) {
        %>
        <div class="alert alert-danger text-center" role="alert">
            Por favor, ingrese un valor numérico válido.
        </div>
        <%
                }
            }
        %>
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
