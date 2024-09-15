<?php

    class RolesModel{
        private $conn; //Connection string
        private $table_name = "tbl_role"; // table name

        public $RolID;
        public $rolName;
        public $rolInfo;

        public function __construct($db){
            $this->conn = $db;
        }

        public function Create(){
            $query = "CALL sp_CreateRole (:rolName, :rolInfo);";
            $result = $this->conn->prepare($query);

            $this->rolName = htmlspecialchars(strip_tags($this->rolName));
            $this->rolInfo = htmlspecialchars(strip_tags($this->rolInfo));

            $result->bindParam(":rolName", $this->rolName);
            $result->bindParam(":rolInfo", $this->rolInfo);

            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }

        public function getRoles(){
            $query = "CALL sp_SelectRoles();";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getRoleByID(){
            $query = "CALL sp_SelectRoleById(:rolID);";
            $result = $this->conn->prepare($query);


            $result->bindParam("rolID", $this->RolID);
            
            $result->execute();
            $row = $result->fetch(PDO::FETCH_ASSOC);

            $this->rolName = $row["rolName"];
            $this->rolInfo = $row["rolInfo"];

        }

        public function update(){
            $query = "CALL sp_UpdateRole(:rolID, :rolName, :rolInfo);";
            
            $this->RolID = htmlspecialchars(strip_tags($this->RolID)); 
            $this->rolName = htmlspecialchars(strip_tags($this->rolName));
            $this->rolInfo = htmlspecialchars(strip_tags($this->rolInfo));

            $result = $this->conn->prepare($query);
            $result->bindParam("rolID", $this->RolID);
            $result->bindParam("rolName", $this->rolName);
            $result->bindParam("rolInfo", $this->rolInfo);

            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }

        public function delete(){
            $query = "CALL sp_DeleteRole(:rolID);";
            $result = $this->conn->prepare($query);
            $result->bindParam("rolID", $this->RolID);
            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }
    }
?>