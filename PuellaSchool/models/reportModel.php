<?php
    class ReportModel{
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

        public function __construct($db)
        {
            $this->conn = $db;
        }

        public function Create()
        {
            $query = "CALL sp_CreateReport(:reportSubject, :reportDetails, :StudentID, :UserID, :SubjectID);";
            $result = $this->conn->prepare($query);
    
            $this->reportSubject = htmlspecialchars(strip_tags($this->reportSubject));
            $this->reportDetails = htmlspecialchars(strip_tags($this->reportDetails));
            $this->StudentID = htmlspecialchars(strip_tags($this->StudentID));
            $this->UserID = htmlspecialchars(strip_tags($this->UserID));
            $this->SubjectID = htmlspecialchars(strip_tags($this->SubjectID));
    
            $result->bindParam(":reportSubject", $this->reportSubject);
            $result->bindParam(":reportDetails", $this->reportDetails);
            $result->bindParam(":StudentID", $this->StudentID);
            $result->bindParam(":UserID", $this->UserID);
            $result->bindParam(":SubjectID", $this->SubjectID);
    
            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
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

        public function getReports()
        {
            $query = "CALL sp_SelectReports();";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getReportByID()
        {
            $query = "CALL sp_SelectReportById(:reportID);";
            $result = $this->conn->prepare($query);


            $result->bindParam("reportID", $this->ReportID);

            $result->execute();
            $row = $result->fetch(PDO::FETCH_ASSOC);

            $this->reportDate = $row["reportDate"];
            $this->reportSubject = $row["reportSubject"];
            $this->reportDetails = $row["reportDetails"];
            $this->studentCode = $row["studentCode"];
            $this->StudentID = $row["StudentID"];
            $this->UserID = $row["UserID"];
            $this->SubjectID = $row["SubjectID"];
        }

        public function update()
        {
            $query = "CALL sp_UpdateReport(:ReportID, :reportSubject, :reportDetails, :StudentID, :UserID, :SubjectID);";
            
            $this->ReportID = htmlspecialchars(strip_tags($this->ReportID));
            $this->reportSubject = htmlspecialchars(strip_tags($this->reportSubject));
            $this->reportDetails = htmlspecialchars(strip_tags($this->reportDetails));
            $this->StudentID = htmlspecialchars(strip_tags($this->StudentID));
            $this->UserID = htmlspecialchars(strip_tags($this->UserID));
            $this->SubjectID = htmlspecialchars(strip_tags($this->SubjectID));
    
            $result = $this->conn->prepare($query);
            $result->bindParam(":ReportID", $this->ReportID);
            $result->bindParam(":reportSubject", $this->reportSubject);
            $result->bindParam(":reportDetails", $this->reportDetails);
            $result->bindParam(":StudentID", $this->StudentID);
            $result->bindParam(":UserID", $this->UserID);
            $result->bindParam(":SubjectID", $this->SubjectID);
    
            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }

        public function delete()
        {
            $query = "CALL sp_DeleteReport(:rID);";
            $result = $this->conn->prepare($query);
            $result->bindParam(":rID", $this->ReportID);
            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }
    }
?>