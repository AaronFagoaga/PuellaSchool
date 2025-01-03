<?php
session_start();

if (!isset($_SESSION['user']) || $_SESSION['user'] == "" || $_SESSION["role"] != 1) {
    header("Location: ../../index.php");
    exit();
}
?>

<?php

require_once '../../controllers/vocationController.php';

$action = isset($_GET['action']) ? $_GET['action'] : '';
$id = isset($_GET['id']) ? $_GET['id'] : '';

$controller = new VocationController();


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

    default:
        $controller->index();
        break;
}
?>