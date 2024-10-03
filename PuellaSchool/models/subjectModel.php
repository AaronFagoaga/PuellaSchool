<?php

class SubjectModel{
    private $conn; //Connection string
    private $table_name = "tbl_subject"; // table name

    public $SubjectID;
    public $subjectName;
    public $subjectInfo;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function Create()
    {
        $query = "CALL sp_CreateSubject (:subName, :subInfo);";
        $result = $this->conn->prepare($query);

        $this->subjectName = htmlspecialchars(strip_tags($this->subjectName));
        $this->subjectInfo = htmlspecialchars(strip_tags($this->subjectInfo));

        $result->bindParam(":subName", $this->subjectName);
        $result->bindParam(":subInfo", $this->subjectInfo);

        if ($result->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function getSubjects()
    {
        $query = "CALL sp_SelectSubjects();";
        $result = $this->conn->prepare($query);
        $result->execute();
        return $result;
    }

    public function getSubjectByID()
    {
        $query = "CALL sp_SelectSubjectById(:subID);";
        $result = $this->conn->prepare($query);


        $result->bindParam(":subID", $this->SubjectID);

        $result->execute();
        $row = $result->fetch(PDO::FETCH_ASSOC);

        $this->subjectName = $row["subjectName"];
        $this->subjectInfo = $row["subjectInfo"];
    }

    public function update()
    {
        $query = "CALL sp_UpdateSubject(:subID, :subName, :subInfo);";

        $this->SubjectID = htmlspecialchars(strip_tags($this->SubjectID));
        $this->subjectName = htmlspecialchars(strip_tags($this->subjectName));
        $this->subjectInfo = htmlspecialchars(strip_tags($this->subjectInfo));

        $result = $this->conn->prepare($query);
        $result->bindParam("subID", $this->SubjectID);
        $result->bindParam("subName", $this->subjectName);
        $result->bindParam("subInfo", $this->subjectInfo);

        if ($result->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function delete()
    {
        $query = "CALL sp_DeleteSubject(:subID);";
        $result = $this->conn->prepare($query);
        $result->bindParam(":subID", $this->SubjectID);
        if ($result->execute()) {
            return true;
        } else {
            return false;
        }
    }
}