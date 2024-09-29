<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Importar Estudiantes</title>
</head>

<body>
    <div class="container">
        <div class="card mt-5 p-4">
            <h2 class="mb-4">Importar Estudiantes</h2>
            <form action="" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="file" class="form-label">Selecciona un archivo Excel</label>
                    <input type="file" name="file" class="form-control" accept=".xlsx" required>
                </div>
                <button type="submit" name="import" class="btn btn-primary">Importar</button>
                <a href="./studentIndex.php" class="btn btn-secondary">Cancelar</a>
            </form>
        </div>
    </div>
</body>

</html>