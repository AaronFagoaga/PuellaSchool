<?php

$rol = $_SESSION["role"];

if ($rol != 1) {
    require_once(dirname(__FILE__) . "/../../conf/database.php");

    $database = new Database();
    $pdo = $database->getConnection();

    $currentUserID = $_SESSION['userID'];

    $reportID = $_GET['id'];

    $result = $pdo->prepare("SELECT UserID FROM tbl_Report WHERE ReportID = :reportID AND UserID = :UserID");
    $result->execute(['reportID' => $reportID, 'UserID' => $currentUserID]);
    $access = $result->fetch();

    if (!$access) {
        header("Location: reportIndex.php");
        exit;
    }
}

?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Eliminar reporte</title>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4">
            <h2 class="mb-4">Eliminar reporte</h2>
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="reportSubject" class="form-label">Asunto:</label>
                    <input type="text" id="reportSubject" name="reportSubject" value="<?= htmlspecialchars($report->reportSubject) ?>" class="form-control" disabled>
                </div>
                <div class="mb-3">
                    <label for="StudentID" class="form-label">Estudiante:</label>
                    <select id="StudentID" name="StudentID" class="form-select" disabled>
                        <?php foreach ($students as $student): ?>
                            <option value="<?= $student['StudentID'] ?>" <?= ($student['StudentID'] == $reports->StudentID) ? 'selected' : '' ?>>
                                <?= htmlspecialchars($student['studentName']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="SubjectID" class="form-label">Materia:</label>
                    <select id="SubjectID" name="SubjectID" class="form-select" disabled>
                        <?php foreach ($subjects as $subject): ?>
                            <option value="<?= $subject['SubjectID'] ?>" <?= ($subject['SubjectID'] == $reports->SubjectID) ? 'selected' : '' ?>>
                                <?= htmlspecialchars($subject['subjectName']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="reportDetails" class="form-label">Detalles:</label>
                    <textarea id="reportDetails" name="reportDetails" class="form-control" rows="4" disabled><?= htmlspecialchars($report->reportDetails) ?></textarea>
                </div>
                <div class="mb-3">
                    <label for="SubjectID" class="form-label">Hecho por:</label>
                    <select id="SubjectID" name="SubjectID" class="form-select" disabled>
                        <?php foreach ($users as $user): ?>
                            <option value="<?= $user['UserID'] ?>" <?= ($user['UserID'] == $reports->UserID) ? 'selected' : '' ?>>
                                <?= htmlspecialchars($user['userName']) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox" id="confirmDelete" name="confirmDelete" required>
                    <label class="form-check-label" for="confirmDelete">
                        He leído que esta acción no es reversible.
                    </label>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-danger" id="deleteButton" disabled>Eliminar</button>
                    <a href="reportIndex.php" class="btn btn-secondary">Cancelar</a>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script>
        document.getElementById('confirmDelete').addEventListener('change', function() {
            document.getElementById('deleteButton').disabled = !this.checked;
        });
    </script>
</body>

</html>