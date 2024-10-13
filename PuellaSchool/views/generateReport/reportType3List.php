<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css" rel="stylesheet">
    <title>Generar Reporte</title>
</head>

<body>
    <div class="container">

        <form action="" method="POST" class="mb-4 mt-5">
            <div class="row g-3 align-items-center">
                <div class="col-md-5">
                    <label for="startDate" class="form-label">Fecha de Inicio:</label>
                    <input type="date" name="startDate" id="startDate" class="form-control" required>
                </div>

                <div class="col-md-2 text-center">
                    <span>hasta</span>
                </div>

                <div class="col-md-5">
                    <label for="endDate" class="form-label">Fecha Final:</label>
                    <input type="date" name="endDate" id="endDate" class="form-control" required>
                </div>
            </div>
            <div class="d-flex justify-content-end mt-3">
                <input type="submit" class="btn btn-primary" value="Buscar">
            </div>
        </form>

        <div class="card mt-5 p-4">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2 class="mb-0">Reporte</h2>
                <a href="../dist/pages/index.php" class="btn btn-secondary">Volver al inicio</a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="studentTable">
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
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.bootstrap5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.4.1/js/buttons.pdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>


    <script>
        $(document).ready(function() {
            $("#studentTable").DataTable({
                dom: '<"d-flex justify-content-between"fB>rtip',
                buttons: [{
                        extend: 'csv',
                        text: 'CSV',
                        className: 'btn btnsecondary',
                    },
                    {
                        extend: 'pdf',
                        text: 'PDF',
                        className: 'btn btn-secondary',
                    },
                    {
                        extend: 'excel',
                        text: 'Excel',
                        className: 'btn btn-secondary',
                    }
                ],
                language: {
                    url: '//cdn.datatables.net/plug-ins/1.13.7/i18n/es-ES.json'
                }
            });
        });
    </script>
</body>

</html>