<?php
    class StudentModel{
        private $conn;
        private $table_name = "tbl_student";
    
        public $StudentID;
        public $studentCode;
        public $studentName;
        public $studentLastName;
        public $studentGender;
        public $studentPhone;
        public $studentEmail;
        public $studentAddress;
        public $studentModality;
        public $VocationID;
        public $vocationName;

        public function __construct($db)
        {
            $this->conn = $db;
        }

        public function Create()
        {
            $query = "CALL sp_CreateStudent(:Name, :LastName, :Gender, :Phone, :Email, :Address, :Modality, :vID);";
            $result = $this->conn->prepare($query);

            $this->studentName = htmlspecialchars(strip_tags($this->studentName));
            $this->studentLastName = htmlspecialchars(strip_tags($this->studentLastName));
            $this->studentGender = htmlspecialchars(strip_tags($this->studentGender));
            $this->studentPhone = htmlspecialchars(strip_tags($this->studentPhone));
            $this->studentEmail = htmlspecialchars(strip_tags($this->studentEmail));
            $this->studentAddress = htmlspecialchars(strip_tags($this->studentAddress));
            $this->studentModality = htmlspecialchars(strip_tags($this->studentModality));
            $this->VocationID = htmlspecialchars(strip_tags($this->VocationID));

            $result->bindParam(":Name", $this->studentName);
            $result->bindParam(":LastName", $this->studentLastName);
            $result->bindParam(":Gender", $this->studentGender);
            $result->bindParam(":Phone", $this->studentPhone);
            $result->bindParam(":Email", $this->studentEmail);
            $result->bindParam(":Address", $this->studentAddress);
            $result->bindParam(":Modality", $this->studentModality);
            $result->bindParam(":vID", $this->VocationID);

            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }

        public function getVocations()
        {
            $query = "SELECT VocationID, vocationName FROM tbl_vocation";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getStudents()
        {
            $query = "CALL sp_SelectStudents();";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getStudentByID()
        {
            $query = "CALL sp_SelectStudentById(:studentID);";
            $result = $this->conn->prepare($query);


            $result->bindParam("studentID", $this->StudentID);

            $result->execute();
            $row = $result->fetch(PDO::FETCH_ASSOC);

            $this->studentCode = $row["studentCode"];
            $this->studentName = $row["studentName"];
            $this->studentLastName = $row["studentLastName"];
            $this->studentGender = $row["studentGender"];
            $this->studentPhone = $row["studentPhone"];   
            $this->studentEmail = $row["studentEmail"];
            $this->studentAddress = $row["studentAddress"];
            $this->studentModality = $row["studentModality"];
            $this->VocationID = $row["VocationID"];
        }

        public function update()
        {
            $query = "CALL sp_UpdateStudent(:sID, :Name, :LastName, :Gender, :Phone, :Email, :Address, :Modality, :vID);";

            $this->StudentID = htmlspecialchars(strip_tags($this->StudentID));
            $this->studentName = htmlspecialchars(strip_tags($this->studentName));
            $this->studentLastName = htmlspecialchars(strip_tags($this->studentLastName));
            $this->studentGender = htmlspecialchars(strip_tags($this->studentGender));
            $this->studentPhone = htmlspecialchars(strip_tags($this->studentPhone));
            $this->studentEmail = htmlspecialchars(strip_tags($this->studentEmail));
            $this->studentAddress = htmlspecialchars(strip_tags($this->studentAddress));
            $this->studentModality = htmlspecialchars(strip_tags($this->studentModality));
            $this->VocationID = htmlspecialchars(strip_tags($this->VocationID));

            $result = $this->conn->prepare($query);
            $result->bindParam(":sID", $this->StudentID);
            $result->bindParam(":Name", $this->studentName);
            $result->bindParam(":LastName", $this->studentLastName);
            $result->bindParam(":Gender", $this->studentGender);
            $result->bindParam(":Phone", $this->studentPhone);
            $result->bindParam(":Email", $this->studentEmail);
            $result->bindParam(":Address", $this->studentAddress);
            $result->bindParam(":Modality", $this->studentModality);
            $result->bindParam(":vID", $this->VocationID);

            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }

        public function delete()
        {
            $query = "CALL sp_DeleteStudent(:sID);";
            $result = $this->conn->prepare($query);
            $result->bindParam(":sID", $this->StudentID);
            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }
    }

?>