<?php
session_start();
if ($_SESSION['user'] == "") {
    header("Location: ../../index.php");
    exit();
}
?>

<?php

require_once '../../controllers/reportController.php';

$userID = $_SESSION["userID"];
$rol = $_SESSION["role"];
$action = isset($_GET['action']) ? $_GET['action'] : '';
$id = isset($_GET['id']) ? $_GET['id'] : '';

$controller = new ReportController();

function redirectByRole($rol, $userID, $controller) {
    if ($rol != 1) {
        $controller->index($userID);
    } else {
        $controller->indexAdmin();
    }
}

switch ($action) {
    case 'create':
        $controller->create();
        break;

    case 'edit':
        if ($id) {
            $controller->edit($id);
        } else {
            redirectByRole($rol, $userID, $controller);
            break;
        }
        break;

    case 'delete':
        if ($id) {
            $controller->delete($id);
        } else {
            redirectByRole($rol, $userID, $controller);
            break;
        }
        break;

    default:
        redirectByRole($rol, $userID, $controller);
        break;
}
?>