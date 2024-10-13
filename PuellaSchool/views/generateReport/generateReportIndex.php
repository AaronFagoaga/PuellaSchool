<?php
session_start();
if ($_SESSION['user'] == "") {
    header("Location: ../../index.php");
    exit();
}
?>

<?php

require_once '../../controllers/generateReportController.php';

$userID = $_SESSION["userID"];
$userName = $_SESSION["user"];
$rol = $_SESSION["role"];
$action = isset($_GET['action']) ? $_GET['action'] : '';
$id = isset($_GET['id']) ? $_GET['id'] : '';

$controller = new GenerateReportController();

switch ($action) {
    case 'reportType1':
        $controller->reportType1($userID);
        break;

    case 'reportType2':
        $controller->reportType2();
        break;

    case 'reportType3':
        $controller->reportType3();
        break;

    case 'reportType4':
        $controller->reportType4();
        break;

    default:
        echo "¡Oh no!, ha ocurrido un error.";
        break;
}
?>