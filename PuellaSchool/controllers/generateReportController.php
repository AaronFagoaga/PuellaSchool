<?php
require_once(dirname(__FILE__) . "/../conf/database.php");
require_once(dirname(__FILE__) . "/../models/generateReportModel.php");

class GenerateReportController
{
    private $db;
    private $report;

    public function __construct()
    {
        $database = new Database();
        $this->db = $database->getConnection();

        $this->report = new GenerateReportModel($this->db);
    }

    public function reportType1($userID)
    {
        $subjectName = isset($_POST['subjectName']) ? $_POST['subjectName'] : null;
        $vocationName = isset($_POST['vocationName']) ? $_POST['vocationName'] : null;

        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);

        $vocationsResult = $this->report->getVocations();
        $vocations = $vocationsResult->fetchAll(PDO::FETCH_ASSOC);

        $result = $this->report->getReportType1($userID, $subjectName, $vocationName);
        $reports = $result->fetchAll(PDO::FETCH_ASSOC);

        include(dirname(__FILE__) . '/../views/generateReport/reportType1List.php');
    }

    public function reportType2()
    {
        $studentName = isset($_POST['studentName']) ? $_POST['studentName'] : null;
        $subjectName = isset($_POST['subjectName']) ? $_POST['subjectName'] : null;
        $vocationName = isset($_POST['vocationName']) ? $_POST['vocationName'] : null;

        $studentsResult = $this->report->getStudents();
        $students = $studentsResult->fetchAll(PDO::FETCH_ASSOC);

        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);

        $vocationsResult = $this->report->getVocations();
        $vocations = $vocationsResult->fetchAll(PDO::FETCH_ASSOC);

        $result = $this->report->getReportType2($studentName, $subjectName, $vocationName);
        $reports = $result->fetchAll(PDO::FETCH_ASSOC);

        include(dirname(__FILE__) . '/../views/generateReport/reportType2List.php');
    }

    public function reportType4()
    {
        $startDate = isset($_POST['startDate']) ? $_POST['startDate'] : null;
        $endDate = isset($_POST['endDate']) ? $_POST['endDate'] : null;
        $subjectName = isset($_POST['subjectName']) ? $_POST['subjectName'] : null;
        $vocationName = isset($_POST['vocationName']) ? $_POST['vocationName'] : null;

        $subjectsResult = $this->report->getSubjects();
        $subjects = $subjectsResult->fetchAll(PDO::FETCH_ASSOC);

        $vocationsResult = $this->report->getVocations();
        $vocations = $vocationsResult->fetchAll(PDO::FETCH_ASSOC);

        $result = $this->report->getReportType4($startDate, $endDate, $subjectName, $vocationName);
        $reports = $result->fetchAll(PDO::FETCH_ASSOC);

        include(dirname(__FILE__) . '/../views/generateReport/reportType4List.php');
    }
}
