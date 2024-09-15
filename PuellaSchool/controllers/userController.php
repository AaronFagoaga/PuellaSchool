<?php
    require_once(dirname(__FILE__)."/../conf/database.php");
    require_once(dirname(__FILE__)."/../models/userModel.php");

    class UserController{
        private $db;
        private $user;

        public function __construct(){
            $database = new Database();
            $this->db = $database->getConnection();

            $this->user = new UserModel($this->db);
        }

        public function index(){
            $result = $this->user->getUsers();
            $users = $result->fetchAll(PDO::FETCH_ASSOC);
            include(dirname(__FILE__).'/../views/userList.php');
        }

        public function create(){
            if($_POST){
                $this->user->userCode = $_POST['userCode'];
                $this->user->userName = $_POST['userName'];
                $this->user->userGender = $_POST['userGender'];
                $this->user->userPhone = $_POST['userPhone'];
                $this->user->userEmail = $_POST['userEmail'];
                $this->user->userNickname = $_POST['userNickname'];
                $this->user->userPassword = $_POST['userPassword'];
                $this->user->userAddress = $_POST['userAddress'];
                $this->user->RolID = $_POST['RolID'];
                
                header('Location: userIndex.php');
                return $this->user->create();
            }  
            $rolesResult = $this->user->getRoles();
            $roles = $rolesResult->fetchAll(PDO::FETCH_ASSOC);
            include(dirname(__FILE__).'/../views/userCreate.php');
        }

        public function edit($id){
            $this->user->UserID = $id;
            $this->user->getUserByID();
            
            if ($_POST) {
                $this->user->userName = $_POST['userName'];
                $this->user->userGender = $_POST['userGender'];
                $this->user->userPhone = $_POST['userPhone'];
                $this->user->userEmail = $_POST['userEmail'];
                $this->user->userNickname = $_POST['userNickname'];
                $this->user->userPassword = $_POST['userPassword'];
                $this->user->userAddress = $_POST['userAddress'];
                $this->user->RolID = $_POST['RolID'];
        
                header("Location: userIndex.php");
                return $this->user->update();
            }
            $rolesResult = $this->user->getRoles();
            $roles = $rolesResult->fetchAll(PDO::FETCH_ASSOC);
            $users = $this->user;
            include(dirname(__FILE__).'/../views/userUpdate.php');
        }

        public function delete($id){
            $this->user->UserID = $id;
            header("Location: userIndex.php");
            return $this->user->delete();
        }
    }

?>