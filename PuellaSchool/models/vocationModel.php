<?php
    class VocationModel{
        private $conn;
        private $table_name = "tbl_vocation";

        public $VocationID;
        public $vocationName;
        public $vocationInfo;

        public function __construct($db)
        {
            $this->conn = $db;
        }

        public function Create()
        {
            $query = "CALL sp_CreateVocation (:vocationName, :vocationInfo);";
            $result = $this->conn->prepare($query);

            $this->vocationName = htmlspecialchars(strip_tags($this->vocationName));
            $this->vocationInfo = htmlspecialchars(strip_tags($this->vocationInfo));

            $result->bindParam(":vocationName", $this->vocationName);
            $result->bindParam(":vocationInfo", $this->vocationInfo);

            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }

        public function getVocations()
        {
            $query = "CALL sp_SelectVocations();";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getVocationByID()
        {
            $query = "CALL sp_SelectVocationById(:vocationID);";
            $result = $this->conn->prepare($query);


            $result->bindParam("vocationID", $this->VocationID);

            $result->execute();
            $row = $result->fetch(PDO::FETCH_ASSOC);

            $this->vocationName = $row["vocationName"];
            $this->vocationInfo = $row["vocationInfo"];
        }

        public function update()
        {
            $query = "CALL sp_UpdateVocation(:vocationID, :vocationName, :vocationInfo);";

            $this->VocationID = htmlspecialchars(strip_tags($this->VocationID));
            $this->vocationName = htmlspecialchars(strip_tags($this->vocationName));
            $this->vocationInfo = htmlspecialchars(strip_tags($this->vocationInfo));

            $result = $this->conn->prepare($query);
            $result->bindParam("vocationID", $this->VocationID);
            $result->bindParam("vocationName", $this->vocationName);
            $result->bindParam("vocationInfo", $this->vocationInfo);

            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }

        public function delete()
        {
            $query = "CALL sp_DeleteVocation(:vocationID);";
            $result = $this->conn->prepare($query);
            $result->bindParam("vocationID", $this->VocationID);
            if ($result->execute()) {
                return true;
            } else {
                return false;
            }
        }
    }

?>