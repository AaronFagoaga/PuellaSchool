<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Eliminar usuario</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Eliminar usuario</h2>
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="userCode" class="form-label">Código:</label>
                    <input type="text" id="userCode" name="userCode" value="<?= htmlspecialchars($user->userCode) ?>" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label for="userName" class="form-label">Nombre de usuario:</label>
                    <input type="text" id="userName" name="userName" value="<?= htmlspecialchars($user->userName) ?>" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label for="userEmail" class="form-label">Correo electrónico:</label>
                    <input type="text" id="userEmail" name="userEmail" value="<?= htmlspecialchars($user->userEmail) ?>" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label for="userPhone" class="form-label">Teléfono:</label>
                    <input type="text" id="userPhone" name="userPhone" value="<?= htmlspecialchars($user->userPhone) ?>" class="form-control" disabled>
                </div>
                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox" id="confirmDelete" name="confirmDelete" required>
                    <label class="form-check-label" for="confirmDelete">
                        He leído que esta acción no es reversible.
                    </label>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-danger" id="deleteButton" disabled>Eliminar</button>
                    <a href="userIndex.php" class="btn btn-secondary">Cancelar</a>
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
