<?php
    class GenerateReportModel{
        private $conn;
        private $table_name = "tbl_report";

        public $ReportID;
        public $reportDate;
        public $reportSubject;
        public $reportDetails;
        public $StudentID;
        public $studentName;
        public $studentCode;
        public $UserID;
        public $userName;
        public $SubjectID;
        public $subjectName;
        public $VocationID;
        public $vocationName;

        public function __construct($db)
        {
            $this->conn = $db;
        }

        public function getStudents()
        {
            $query = "SELECT StudentID, studentName, studentCode FROM tbl_student";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getUsers()
        {
            $query = "SELECT UserID, userName FROM tbl_user";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getSubjects()
        {
            $query = "SELECT SubjectID, subjectName FROM tbl_subject";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getVocations()
        {
            $query = "SELECT VocationID, vocationName FROM tbl_vocation";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getReportType1($userID, $subjectName, $vocationName)
        {
            $query = "CALL sp_ReportType1(:userID, :subjectName, :vocationName);";
            $result = $this->conn->prepare($query);
            $result->bindParam("userID", $userID);
            $result->bindParam("subjectName", $subjectName);
            $result->bindParam("vocationName", $vocationName);
            $result->execute();
            return $result;
        }

        public function getReportType2($studentName, $subjectName, $vocationName)
        {
            $query = "CALL sp_ReportType2(:studentName, :subjectName, :vocationName);";
            $result = $this->conn->prepare($query);
            $result->bindParam("studentName", $studentName);
            $result->bindParam("subjectName", $subjectName);
            $result->bindParam("vocationName", $vocationName);
            $result->execute();
            return $result;
        }

        public function getReportType4($startDate, $endDate, $subjectName, $vocationName)
        {
            $query = "CALL sp_ReportType4(:startDate, :endDate, :subjectName, :vocationName);";
            $result = $this->conn->prepare($query);
            $result->bindParam("startDate", $startDate);
            $result->bindParam("endDate", $endDate);
            $result->bindParam("subjectName", $subjectName);
            $result->bindParam("vocationName", $vocationName);
            $result->execute();
            return $result;
        }
    }
?>