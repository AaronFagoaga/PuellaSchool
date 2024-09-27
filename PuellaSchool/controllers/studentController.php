<?php
    require_once(dirname(__FILE__) . "/../conf/database.php");
    require_once(dirname(__FILE__) . "/../models/studentModel.php");

    class StudentController{
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
    }