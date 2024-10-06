<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Agregar reporte</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4 shadow">
            <h2 class="mb-4 text-center">Creación de reporte</h2>
            <form action="" method="POST" name="frmCreate" novalidate>
                <div class="mb-3">
                    <label for="reportSubject" class="form-label">Asunto:</label>
                    <input type="text" id="reportSubject" name="reportSubject" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="StudentID" class="form-label">Estudiante:</label>
                    <select id="StudentID" name="StudentID" class="form-select" required>
                        <option value="">Seleccione un estudiante</option>
                        <?php foreach ($students as $student): ?>
                            <option value="<?php echo $student['StudentID']; ?>"><?php echo $student['studentName']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="SubjectID" class="form-label">Materia:</label>
                    <select id="SubjectID" name="SubjectID" class="form-select" required>
                        <option value="">Seleccione una materia</option>
                        <?php foreach ($subjects as $subject): ?>
                            <option value="<?php echo $subject['SubjectID']; ?>"><?php echo $subject['subjectName']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="reportDetails" class="form-label">Detalles:</label>
                    <textarea id="reportDetails" name="reportDetails" class="form-control" rows="4" required></textarea>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="./reportIndex.php" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
</body>

</html>