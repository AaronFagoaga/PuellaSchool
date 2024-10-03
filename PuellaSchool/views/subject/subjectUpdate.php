<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Actualizar subj</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Actualizar materia</h2>
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="subjectName" class="form-label">Nombre:</label>
                    <input type="text" id="subjectName" name="subjectName" value="<?= htmlspecialchars($subj->subjectName) ?>" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="subjectInfo" class="form-label">Descripción:</label>
                    <input type="text" id="subjectInfo" name="subjectInfo" value="<?= htmlspecialchars($subj->subjectInfo) ?>" class="form-control" required>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="./subjectIndex.php" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
</body>

</html>