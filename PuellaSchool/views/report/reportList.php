<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Reportes</title>
</head>

<body>
    <div class="container">
        <div class="card mt-5 p-4">
            <h2 class="mb-4">Lista de reportes</h2>
            <div class="d-flex justify-content-between mb-3">
                <a href="./reportIndex.php?action=create" class="btn btn-success">Crear reporte</a>
                <a href="../dist/pages/index.php" class="btn btn-secondary">Volver al inicio</a>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Estudiante</th>
                            <th scope="col">Código Estudiante</th>
                            <th scope="col">Materia</th>
                            <th scope="col">Asunto</th>
                            <th scope="col">Detalles</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Hecho por</th>
                            <th scope="col" class="text-center">Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($reports as $report) : ?>
                            <tr>
                                <td><?= htmlspecialchars($report['ReportID']); ?></td>
                                <td><?= htmlspecialchars($report['studentName']); ?></td>
                                <td><?= htmlspecialchars($report['studentCode']); ?></td>
                                <td><?= htmlspecialchars($report['subjectName']); ?></td>
                                <td><?= htmlspecialchars($report['reportSubject']); ?></td>
                                <td style="max-width: 300px; word-wrap: break-word;">
                                    <?= htmlspecialchars($report['reportDetails']); ?>
                                </td>
                                <td><?= htmlspecialchars($report['reportDate']); ?></td>
                                <td><?= htmlspecialchars($report['userName']); ?></td>
                                <td class="text-center">
                                    <a href="reportIndex.php?action=edit&id=<?= $report['ReportID'] ?>" class="btn btn-warning btn-sm">Editar</a>
                                    <a href="reportIndex.php?action=delete&id=<?= $report['ReportID'] ?>" class="btn btn-danger btn-sm">Eliminar</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
</body>

</html>