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
    <h1 class="text-center text-primary">Triángulo</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <!-- Formulario -->
            <form method="post" action="setterRectangulo.jsp" class="p-4 border rounded shadow-sm bg-white">
                <div class="mb-3">
                    <label for="base" class="form-label">Ingrese la base:</label>
                    <input type="number" step="0.01" id="base" name="base" class="form-control" placeholder="Ejemplo: 31.42" required>
                </div>
                <div class="mb-3">
                    <label for="altura" class="form-label">Ingrese la altura:</label>
                    <input type="number" step="0.01" id="altura" name="altura" class="form-control" placeholder="Ejemplo: 31.42" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Actualizar</button>
            </form>
        </div>
    </div>

    <!-- Mensajes de estado -->
    <div class="mt-3">
        <jsp:useBean id="rectangulo" class="models.Rectangulo" scope="session" />
        <%
            String baseForm = request.getParameter("base");
            String alturaForm = request.getParameter("altura");
            if (baseForm != null && !baseForm.isEmpty() && alturaForm != null && !alturaForm.isEmpty()) {
                try {
                    double base = Double.parseDouble(baseForm);
                    double altura = Double.parseDouble(alturaForm);
                    rectangulo.setBase(base);
                    rectangulo.setAltura(altura);
        %>
        <div class="alert alert-success text-center" role="alert">
            Los valores de base y altura se han actualizado exitosamente.
        </div>
        <%
        } catch (NumberFormatException e) {
        %>
        <div class="alert alert-danger text-center" role="alert">
            Por favor, ingrese valores numéricos válidos.
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
