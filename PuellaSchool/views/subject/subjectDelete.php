<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Eliminar materia</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Eliminar materia</h2>
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="subjectName" class="form-label">Nombre:</label>
                    <input type="text" id="subjectName" name="subjectName" value="<?= htmlspecialchars($subj->subjectName) ?>" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label for="subjectInfo" class="form-label">Descripción:</label>
                    <input type="text" id="subjectInfo" name="subjectInfo" value="<?= htmlspecialchars($subj->subjectInfo) ?>" class="form-control" disabled>
                </div>
                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox" id="confirmDelete" name="confirmDelete" required>
                    <label class="form-check-label" for="confirmDelete">
                        He leído que esta acción es no reversible.
                    </label>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-danger" id="deleteButton" disabled>Eliminar</button>
                    <a href="./subjectIndex.php" class="btn btn-secondary">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script>
        document.getElementById('confirmDelete').addEventListener('change', function () {
            document.getElementById('deleteButton').disabled = !this.checked;
        });
    </script>
</body>

</html>
