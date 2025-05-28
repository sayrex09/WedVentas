<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.sayrex.dto.ProyectosDTO" %>
<%
    List<ProyectosDTO> proyectos = (List<ProyectosDTO>) request.getAttribute("proyectos");

    Map<String, Integer> conteoLenguaje = new HashMap<>();
    int gratuitos = 0;
    int pagados = 0;

    for (ProyectosDTO p : proyectos) {
        String lenguaje = p.getLenguajeProgramacion();
        conteoLenguaje.put(lenguaje, conteoLenguaje.getOrDefault(lenguaje, 0) + 1);
        if (p.isGratuito()) gratuitos++;
        else pagados++;
    }

    StringBuilder labelsJson = new StringBuilder("[");
    StringBuilder dataJson = new StringBuilder("[");
    int i = 0;
    for (Map.Entry<String, Integer> entry : conteoLenguaje.entrySet()) {
        if (i > 0) {
            labelsJson.append(", ");
            dataJson.append(", ");
        }
        labelsJson.append("\"").append(entry.getKey().replace("\"", "\\\"")).append("\"");
        dataJson.append(entry.getValue());
        i++;
    }
    labelsJson.append("]");
    dataJson.append("]");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Estadísticas de Proyectos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body class="bg-dark text-white">
<div class="container mt-5">
    <h2 class="text-center mb-4">📊 Estadísticas de Proyectos</h2>

    <div class="row">
        <!-- Gráfico de Barras -->
        <div class="col-md-6">
            <div class="card bg-secondary p-3">
                <h5 class="text-center">Por Lenguaje</h5>
                <canvas id="barChart"></canvas>
            </div>
        </div>

        <!-- Gráfico de Torta -->
        <div class="col-md-6">
            <div class="card bg-secondary p-3">
                <h5 class="text-center">Gratuitos vs De Pago</h5>
                <canvas id="pieChart"></canvas>
            </div>
        </div>
    </div>
</div>

<script>
    // Datos generados por el backend
    console.log("Labels:", labels);
    console.log("Data:", data);
    console.log("Gratuitos:", gratuitos);
    console.log("Pagados:", pagados);
    // Datos generados por el backend
    
    // Gráfico de barras
    const barCtx = document.getElementById("barChart").getContext("2d");
    new Chart(barCtx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Proyectos por Lenguaje',
                data: data,
                backgroundColor: 'rgba(13, 110, 253, 0.7)',
                borderRadius: 6
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        color: '#fff'
                    }
                },
                x: {
                    ticks: {
                        color: '#fff'
                    }
                }
            },
            plugins: {
                legend: {
                    labels: { color: '#fff' }
                }
            }
        }
    });

    // Gráfico circular
    const pieCtx = document.getElementById("pieChart").getContext("2d");
    new Chart(pieCtx, {
        type: 'pie',
        data: {
            labels: ['Gratuitos', 'De Pago'],
            datasets: [{
                data: [gratuitos, pagados],
                backgroundColor: ['#198754', '#dc3545']
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    labels: { color: '#fff' }
                }
            }
        }
    });
</script>

</body>
</html>
