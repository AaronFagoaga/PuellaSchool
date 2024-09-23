<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Agregar rol</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Creación de rol</h2>
            <form action="" method="POST" name="frmCreate">
                <div class="mb-3">
                    <label for="name" class="form-label">Nombre:</label>
                    <input type="text" id="rolName" name="rolName" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="categorie" class="form-label">Descripción:</label>
                    <input type="text" id="rolInfo" name="rolInfo" class="form-control" required>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="./roleIndex.php" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
</body>

</html>