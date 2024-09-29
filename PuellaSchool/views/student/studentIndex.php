<?php
session_start();
if ($_SESSION['user'] == "") {
    header("Location: ../../index.php");
    exit();
}
?>

<?php

require_once '../../controllers/studentController.php';

$action = isset($_GET['action']) ? $_GET['action'] : '';
$id = isset($_GET['id']) ? $_GET['id'] : '';

$controller = new StudentController();


switch ($action) {
    case 'create':
        $controller->create();
        break;
    case 'edit':
        if ($id) {
            $controller->edit($id);
        } else {
            $controller->index();
        }
        break;
    case 'delete':
        if ($id) {
            $controller->delete($id);
        } else {
            $controller->index();
        }
        break;
        case 'import':
            $controller->import();
            break;

    default:
        $controller->index();
        break;
}
?>