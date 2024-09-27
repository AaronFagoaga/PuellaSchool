<?php
    require_once(dirname(__FILE__) . "/../conf/database.php");
    require_once(dirname(__FILE__) . "/../models/vocationModel.php");

    class VocationController{
        private $db;
        private $vocation;

        public function __construct()
        {
            $database = new Database();
            $this->db = $database->getConnection();

            $this->vocation = new VocationModel($this->db);
        }

        public function index()
        {
            $result = $this->vocation->getVocations();
            $vocations = $result->fetchAll(PDO::FETCH_ASSOC);
            include(dirname(__FILE__) . '/../views/vocation/vocationList.php');
        }

        public function create()
        {
            if ($_POST) {
                $this->vocation->vocationName = $_POST['vocationName'];
                $this->vocation->vocationInfo = $_POST['vocationInfo'];
    
                header('Location: vocationIndex.php');
                return $this->vocation->create();
            }
            include(dirname(__FILE__) . '/../views/vocation/vocationCreate.php');
        }

        public function edit($id)
        {
            $this->vocation->VocationID = $id;
            $this->vocation->getVocationByID();
    
            if ($_POST) {
                $this->vocation->vocationName = $_POST['vocationName'];
                $this->vocation->vocationInfo = $_POST['vocationInfo'];
    
                header("Location: vocationIndex.php");
                return $this->vocation->update();
            }
    
            $vocatio = $this->vocation;
            include(dirname(__FILE__) . '/../views/vocation/vocationUpdate.php');
        }

        public function delete($id)
        {
            $this->vocation->VocationID = $id;
            $this->vocation->getVocationByID();
        
            if ($_POST) {
                if (isset($_POST['confirmDelete'])) {
                    $this->vocation->delete();
                    header("Location: vocationIndex.php");
                    exit();
                } else {
                    echo "<script>alert('Debe confirmar que ha leído la advertencia antes de eliminar.');</script>";
                }
            }
        
            $vocatio = $this->vocation;
            include(dirname(__FILE__) . '/../views/vocation/vocationDelete.php');
        }
    }