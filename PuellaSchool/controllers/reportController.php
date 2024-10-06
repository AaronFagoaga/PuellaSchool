<?php
require_once(dirname(__FILE__) . "/../conf/database.php");
require_once(dirname(__FILE__) . "/../models/reportModel.php");

class ReportController
{
    private $db;
    private $report;

    public function __construct()
    {
        $database = new Database();
        $this->db = $database->getConnection();

        $this->report = new ReportModel($this->db);
    }

    public function indexAdmin()
    {
        $result = $this->report->getReportsAdmin();
        $reports = $result->fetchAll(PDO::FETCH_ASSOC);
        include(dirname(__FILE__) . '/../views/report/reportList.php');
    }

    public function index($userID)
    {
        $result = $this->report->getReports($userID);
        $reports = $result->fetchAll(PDO::FETCH_ASSOC);
        include(dirname(__FILE__) . '/../views/report/reportList.php');
    }

    public function create()
    {
        if ($_POST) {
            $this->report->reportSubject = $_POST['reportSubject'];
            $this->report->reportDetails = $_POST['reportDetails'];
            $this->report->StudentID = $_POST['StudentID'];
            $this->report->UserID = $_SESSION["userID"];
            $this->report->SubjectID = $_POST['SubjectID'];

            header('Location: reportIndex.php');
            return $this->report->create();
        }
        $studentsResult = $this->report->getStudents();
        $students = $studentsResult->fetchAll(PDO::FETCH_ASSOC);
        $usersResult = $this->report->getStudents();
        $users = $usersResult->fetchAll(PDO::FETCH_ASSOC);
        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);
        include(dirname(__FILE__) . '/../views/report/reportCreate.php');
    }

    public function edit($id)
    {
        $this->report->ReportID = $id;
        $this->report->getReportByID();

        if ($_POST) {
            $this->report->reportSubject = $_POST['reportSubject'];
            $this->report->reportDetails = $_POST['reportDetails'];
            $this->report->StudentID = $_POST['StudentID'];
            $this->report->UserID = $_POST['UserID'];
            $this->report->SubjectID = $_POST['SubjectID'];

            header('Location: reportIndex.php');
            return $this->report->update();
        }
        $studentsResult = $this->report->getStudents();
        $students = $studentsResult->fetchAll(PDO::FETCH_ASSOC);
        $usersResult = $this->report->getUsers();
        $users = $usersResult->fetchAll(PDO::FETCH_ASSOC);
        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);
        $reports = $this->report;
        include(dirname(__FILE__) . '/../views/report/reportUpdate.php');
    }

    public function delete($id)
    {
        $this->report->ReportID = $id;

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST['confirmDelete'])) {
                $this->report->delete();
                header("Location: reportIndex.php");
            } else {
                header("Location: reportIndex.php");
            }
            exit();
        }

        $this->report->getReportByID();
        $studentsResult = $this->report->getStudents();
        $students = $studentsResult->fetchAll(PDO::FETCH_ASSOC);
        $usersResult = $this->report->getUsers();
        $users = $usersResult->fetchAll(PDO::FETCH_ASSOC);
        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);
        $reports = $this->report;
        $report = $this->report;

        include(dirname(__FILE__) . '/../views/report/reportDelete.php');
    }
}