<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/series-label.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../resources/generateReport/reportType4.css">
    <title>Generar Reporte</title>
</head>

<body>
    <div class="container">
        <div class="d-flex justify-content-between align-items-center mb-3 mt-5">
            <h2 class="mb-0">Reporte</h2>
            <a href="../dist/pages/index.php" class="btn btn-secondary">Volver al inicio</a>
        </div>
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

            <div class="row g-3 align-items-center mt-3">
                <div class="col-md-5">
                    <label for="subjectName" class="form-label">Materia:</label>
                    <select id="subjectName" name="subjectName" class="form-select">
                        <option value="">Seleccione una materia</option>
                        <?php foreach ($subjects as $subject): ?>
                            <option value="<?php echo $subject['subjectName']; ?>"><?php echo $subject['subjectName']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="col-md-2 text-center">
                    <span>o</span>
                </div>

                <div class="col-md-5">
                    <label for="vocationName" class="form-label">Vocación:</label>
                    <select id="vocationName" name="vocationName" class="form-select">
                        <option value="">Seleccione una vocación</option>
                        <?php foreach ($vocations as $vocation): ?>
                            <option value="<?php echo $vocation['vocationName']; ?>"><?php echo $vocation['vocationName']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>

            <div class="d-flex justify-content-end mt-3">
                <input type="submit" class="btn btn-primary" value="Buscar">
            </div>
        </form>

        <figure class="highcharts-figure">
            <div id="container"></div>
            <p class="highcharts-description">
                Cantidad de reportes por fecha, puede digitar las fechas para obtener registro y poder filtrar por materia o vocación.
            </p>
        </figure>
    </div>
</body>

<?php

include(dirname(__FILE__) . '/../../resources/generateReport/reportType4.php');

?>

</html>