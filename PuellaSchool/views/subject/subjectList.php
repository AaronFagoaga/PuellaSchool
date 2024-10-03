<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Materias</title>
</head>

<body>
    <div class="container">
        <div class="card mt-5 p-4">
            <h2 class="mb-4">Lista de materias</h2>
            <div class="d-flex justify-content-between mb-3">
                <a href="./subjectIndex.php?action=create" class="btn btn-success">Crear materia</a>
                <a href="../dist/pages/index.php" class="btn btn-secondary">Volver al inicio</a>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripción</th>
                            <th scope="col" class="text-center">Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($subjects as $subject) : ?>
                            <tr>
                                <td><?= htmlspecialchars($subject['SubjectID']); ?></td>
                                <td><?= htmlspecialchars($subject['subjectName']); ?></td>
                                <td><?= htmlspecialchars($subject['subjectInfo']); ?></td>
                                <td class="text-center">
                                    <a href="subjectIndex.php?action=edit&id=<?= $subject['SubjectID'] ?>" class="btn btn-warning btn-sm">Editar</a>
                                    <a href="subjectIndex.php?action=delete&id=<?= $subject['SubjectID'] ?>" class="btn btn-danger btn-sm">Eliminar</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
</body>

</html>