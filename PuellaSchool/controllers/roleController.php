<?php
    require_once(dirname(__FILE__)."/../conf/database.php");
    require_once(dirname(__FILE__)."/../models/roleModel.php");

    class RoleController{
        private $db;
        private $role;

        public function __construct(){
            $database = new Database();
            $this->db = $database->getConnection();

            $this->role = new RolesModel($this->db);
        }

        public function index(){
            $result = $this->role->getRoles();
            $roles = $result->fetchAll(PDO::FETCH_ASSOC);
            include(dirname(__FILE__).'/../views/roleList.php');
        }

        public function create(){
            if($_POST){
                $this->role->rolName = $_POST['rolName'];
                $this->role->rolInfo = $_POST['rolInfo'];
                
                header('Location: roleIndex.php');
                return $this->role->create();
            }  
            include(dirname(__FILE__).'/../views/roleCreate.php');
        }

        public function edit($id){
            $this->role->RolID = $id;
            $this->role->getRoleByID();
            
            if ($_POST) {
                $this->role->rolName = $_POST['rolName'];
                $this->role->rolInfo = $_POST['rolInfo'];
        
                header("Location: index.php");
                return $this->role->update();
            }
            
            $rol = $this->role;
            include(dirname(__FILE__).'/../views/roleUpdate.php');
        }

        public function delete($id){
            $this->role->RolID = $id;
            header("Location: index.php");
            return $this->role->delete();
        }
    }

?>