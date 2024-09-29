<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/buttons/2.4.1/css/buttons.bootstrap5.min.css" rel="stylesheet">
    <title>Estudiantes</title>
</head>

<body>
    <div class="container">
        <div class="card mt-5 p-4">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2 class="mb-0">Lista de estudiantes</h2>
                <a href="./studentIndex.php?action=import" class="btn btn-info" style="white-space: nowrap;">Importar estudiantes</a>
            </div>

            <div class="d-flex justify-content-between mb-3">
                <a href="./studentIndex.php?action=create" class="btn btn-success">Crear estudiante</a>
                <a href="../dist/pages/index.php" class="btn btn-secondary">Volver al inicio</a>
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-bordered" id="studentTable">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Género</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Modalidad</th>
                            <th scope="col">Vocación</th>
                            <th scope="col" class="text-center">Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($students as $student) : ?>
                            <tr>
                                <td><?= htmlspecialchars($student['studentCode']); ?></td>
                                <td><?= htmlspecialchars($student['studentName']); ?> <?= htmlspecialchars($student['studentLastName']); ?></td>
                                <td><?= htmlspecialchars($student['studentGender']); ?></td>
                                <td><?= htmlspecialchars($student['studentPhone']); ?></td>
                                <td><?= htmlspecialchars($student['studentEmail']); ?></td>
                                <td><?= htmlspecialchars($student['studentAddress']); ?></td>
                                <td><?= htmlspecialchars($student['studentModality']); ?></td>
                                <td><?= htmlspecialchars($student['vocationName']); ?></td>
                                <td class="text-center">
                                    <a href="studentIndex.php?action=edit&id=<?= $student['StudentID'] ?>" class="btn btn-warning btn-sm">Editar</a>
                                    <a href="studentIndex.php?action=delete&id=<?= $student['StudentID'] ?>" class="btn btn-danger btn-sm">Eliminar</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
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
                        exportOptions: {
                            columns: ':not(:last-child)'
                        }
                    },
                    {
                        extend: 'pdf',
                        text: 'PDF',
                        className: 'btn btn-secondary',
                        exportOptions: {
                            columns: ':not(:last-child)'
                        }
                    },
                    {
                        extend: 'excel',
                        text: 'Excel',
                        className: 'btn btn-secondary',
                        exportOptions: {
                            columns: ':not(:last-child)'
                        }
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