<?php
    class UserModel{
        private $conn;
        private $table_name = "tbl_role";

        public $UserID;
        public $userCode;
        public $userName;
        public $userGender;
        public $userPhone;
        public $userEmail;
        public $userNickname;
        public $userPassword;
        public $userAddress;
        public $RolID;
        public $rolName; //Para el nombre del reol

        public function __construct($db){
            $this->conn = $db;
        }

        public function Create(){
            $query = "CALL sp_CreateUser (:Code, :Name, :Gender, :Phone, :Email, :Nickname, :Password, :Address, :rID);";
            $result = $this->conn->prepare($query);

            $this->userCode = htmlspecialchars(strip_tags($this->userCode));
            $this->userName = htmlspecialchars(strip_tags($this->userName));
            $this->userGender = htmlspecialchars(strip_tags($this->userGender));
            $this->userPhone = htmlspecialchars(strip_tags($this->userPhone));
            $this->userEmail = htmlspecialchars(strip_tags($this->userEmail));
            $this->userNickname = htmlspecialchars(strip_tags($this->userNickname));
            $this->userPassword = htmlspecialchars(strip_tags($this->userPassword));
            $this->userAddress = htmlspecialchars(strip_tags($this->userAddress));
            $this->RolID = htmlspecialchars(strip_tags($this->RolID));

            $this->userPassword = md5($this->userPassword);

            $result->bindParam(":Code", $this->userCode);
            $result->bindParam(":Name", $this->userName);
            $result->bindParam(":Gender", $this->userGender);
            $result->bindParam(":Phone", $this->userPhone);
            $result->bindParam(":Email", $this->userEmail);
            $result->bindParam(":Nickname", $this->userNickname);
            $result->bindParam(":Password", $this->userPassword);
            $result->bindParam(":Address", $this->userAddress);
            $result->bindParam(":rID", $this->RolID);

            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }

        public function getRoles() {
            $query = "SELECT RolID, rolName FROM tbl_role";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getUsers(){
            $query = "CALL sp_SelectUsers();";
            $result = $this->conn->prepare($query);
            $result->execute();
            return $result;
        }

        public function getUserByID(){
            $query = "CALL sp_SelectUserById(:userID);";
            $result = $this->conn->prepare($query);


            $result->bindParam("userID", $this->UserID);
            
            $result->execute();
            $row = $result->fetch(PDO::FETCH_ASSOC);

            $this->userCode = $row["userCode"];
            $this->userName = $row["userName"];
            $this->userGender = $row["userGender"];
            $this->userPhone = $row["userPhone"];
            $this->userEmail = $row["userEmail"];
            $this->userNickname = $row["userNickname"];
            $this->userPassword = $row["userPassword"];
            $this->userAddress = $row["userAddress"];
            $this->RolID = $row["RolID"];
        }

        public function update(){
            $query = "CALL sp_UpdateUser(:userID, :Name, :Gender, :Phone, :Email, :Nickname, :Password, :Address, :rID);";
            
            $this->UserID = htmlspecialchars(strip_tags($this->UserID));
            $this->userName = htmlspecialchars(strip_tags($this->userName));
            $this->userGender = htmlspecialchars(strip_tags($this->userGender));
            $this->userPhone = htmlspecialchars(strip_tags($this->userPhone));
            $this->userEmail = htmlspecialchars(strip_tags($this->userEmail));
            $this->userNickname = htmlspecialchars(strip_tags($this->userNickname));
            $this->userPassword = htmlspecialchars(strip_tags($this->userPassword));
            $this->userAddress = htmlspecialchars(strip_tags($this->userAddress));
            $this->RolID = htmlspecialchars(strip_tags($this->RolID));

            $this->userPassword = md5($this->userPassword);

            $result = $this->conn->prepare($query);
            $result->bindParam(":userID", $this->UserID);
            $result->bindParam(":Name", $this->userName);
            $result->bindParam(":Gender", $this->userGender);
            $result->bindParam(":Phone", $this->userPhone);
            $result->bindParam(":Email", $this->userEmail);
            $result->bindParam(":Nickname", $this->userNickname);
            $result->bindParam(":Password", $this->userPassword);
            $result->bindParam(":Address", $this->userAddress);
            $result->bindParam(":rID", $this->RolID);

            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }

        public function delete(){
            $query = "CALL sp_DeleteUser(:userID);";
            $result = $this->conn->prepare($query);
            $result->bindParam("userID", $this->UserID);
            if($result->execute()){
                return true;
            }else{
                return false;
            }
        }

    }
?>