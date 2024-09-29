<?php
require_once(dirname(__FILE__) . "/../conf/database.php");
require_once(dirname(__FILE__) . "/../models/studentModel.php");
require_once(dirname(__FILE__) . '/../vendor/autoload.php');

use PhpOffice\PhpSpreadsheet\IOFactory;

class StudentController
{
    private $db;
    private $student;

    public function __construct()
    {
        $database = new Database();
        $this->db = $database->getConnection();

        $this->student = new StudentModel($this->db);
    }

    public function index()
    {
        $result = $this->student->getStudents();
        $students = $result->fetchAll(PDO::FETCH_ASSOC);
        include(dirname(__FILE__) . '/../views/student/studentList.php');
    }

    public function create()
    {
        if ($_POST) {
            $this->student->studentName = $_POST['studentName'];
            $this->student->studentLastName = $_POST['studentLastName'];
            $this->student->studentGender = $_POST['studentGender'];
            $this->student->studentPhone = $_POST['studentPhone'];
            $this->student->studentEmail = $_POST['studentEmail'];
            $this->student->studentAddress = $_POST['studentAddress'];
            $this->student->studentModality = $_POST['studentModality'];
            $this->student->VocationID = $_POST['VocationID'];

            header('Location: studentIndex.php');
            return $this->student->create();
        }
        $vocationsResult = $this->student->getVocations();
        $vocations = $vocationsResult->fetchAll(PDO::FETCH_ASSOC);
        include(dirname(__FILE__) . '/../views/student/studentCreate.php');
    }

    public function edit($id)
    {
        $this->student->StudentID = $id;
        $this->student->getStudentByID();

        if ($_POST) {
            $this->student->studentName = $_POST['studentName'];
            $this->student->studentLastName = $_POST['studentLastName'];
            $this->student->studentGender = $_POST['studentGender'];
            $this->student->studentPhone = $_POST['studentPhone'];
            $this->student->studentEmail = $_POST['studentEmail'];
            $this->student->studentAddress = $_POST['studentAddress'];
            $this->student->studentModality = $_POST['studentModality'];
            $this->student->VocationID = $_POST['VocationID'];

            header("Location: studentIndex.php");
            return $this->student->update();
        }
        $vocationsResult = $this->student->getVocations();
        $vocations = $vocationsResult->fetchAll(PDO::FETCH_ASSOC);
        $students = $this->student;
        include(dirname(__FILE__) . '/../views/student/studentUpdate.php');
    }

    public function delete($id)
    {
        $this->student->StudentID = $id;

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST['confirmDelete'])) {
                $this->student->delete();
                header("Location: studentIndex.php");
            } else {
                header("Location: studentIndex.php");
            }
            exit();
        }

        $this->student->getStudentByID();
        $student = $this->student;

        include(dirname(__FILE__) . '/../views/student/studentDelete.php');
    }

    public function import()
    {
        if (isset($_POST['import'])) {
            if (isset($_FILES['file']['tmp_name']) && $_FILES['file']['error'] == 0) {
                $filePath = $_FILES['file']['tmp_name'];

                $spreadsheet = IOFactory::load($filePath);
                $sheet = $spreadsheet->getActiveSheet();
                $rowsInserted = 0;

                foreach ($sheet->getRowIterator(2) as $row) {
                    $cellIterator = $row->getCellIterator();
                    $cellIterator->setIterateOnlyExistingCells(false);

                    $this->student->studentName = $sheet->getCell('A' . $row->getRowIndex())->getValue();
                    $this->student->studentLastName = $sheet->getCell('B' . $row->getRowIndex())->getValue();
                    $this->student->studentGender = $sheet->getCell('C' . $row->getRowIndex())->getValue();
                    $this->student->studentPhone = $sheet->getCell('D' . $row->getRowIndex())->getValue();
                    $this->student->studentEmail = $sheet->getCell('E' . $row->getRowIndex())->getValue();
                    $this->student->studentAddress = $sheet->getCell('F' . $row->getRowIndex())->getValue();
                    $this->student->studentModality = $sheet->getCell('G' . $row->getRowIndex())->getValue();
                    $this->student->VocationID = $sheet->getCell('H' . $row->getRowIndex())->getValue();

                    if ($this->student->insertImport()) {
                        $rowsInserted++;
                    }
                }

                header("Location: studentIndex.php?import_success=$rowsInserted");
            } else {
                echo "Error al cargar el archivo.";
            }
        }

        include(dirname(__FILE__) . '/../views/student/studentImport.php');
    }
}
