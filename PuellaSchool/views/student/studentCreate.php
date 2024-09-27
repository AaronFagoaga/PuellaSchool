<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Agregar estudiante</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4 shadow">
            <h2 class="mb-4 text-center">Creación de estudiante</h2>
            <form action="" method="POST" name="frmCreate" novalidate>
                <div class="mb-3">
                    <label for="studentName" class="form-label">Nombre:</label>
                    <input type="text" id="studentName" name="studentName" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="studentLastName" class="form-label">Apellidos:</label>
                    <input type="text" id="studentLastName" name="studentLastName" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="studentGender" class="form-label">Género:</label>
                    <select id="studentGender" name="studentGender" class="form-select" required>
                        <option value="">Seleccione género</option>
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                        <option value="Otro">Otro</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="studentPhone" class="form-label">Teléfono:</label>
                    <input type="text" id="studentPhone" name="studentPhone" class="form-control" required pattern="^\d{4}-\d{4}$" title="Formato: ####-####">
                </div>
                <div class="mb-3">
                    <label for="studentEmail" class="form-label">Correo:</label>
                    <input type="email" id="studentEmail" name="studentEmail" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="studentAddress" class="form-label">Dirección:</label>
                    <input type="text" id="studentAddress" name="studentAddress" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="studentModality" class="form-label">Modalidad:</label>
                    <select id="studentModality" name="studentModality" class="form-select" required>
                        <option value="">Seleccione la modalidad</option>
                        <option value="Virtual">Virtual</option>
                        <option value="Presencial">Presencial</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="VocationID" class="form-label">Vocación:</label>
                    <select id="VocationID" name="VocationID" class="form-select" required>
                        <option value="">Seleccione una vocación</option>
                        <?php foreach ($vocations as $vocation): ?>
                            <option value="<?php echo $vocation['VocationID']; ?>"><?php echo $vocation['vocationName']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="./vocationIndex.php" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
</body>
</html>