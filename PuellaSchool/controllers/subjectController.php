<?php
    require_once(dirname(__FILE__) . "/../conf/database.php");
    require_once(dirname(__FILE__) . "/../models/subjectModel.php");

    class SubjectController{
        private $db;
        private $subject;

        public function __construct()
        {
            $database = new Database();
            $this->db = $database->getConnection();

            $this->subject = new SubjectModel($this->db);
        }

        public function index()
        {
            $result = $this->subject->getSubjects();
            $subjects = $result->fetchAll(PDO::FETCH_ASSOC);
            include(dirname(__FILE__) . '/../views/subject/subjectList.php');
        }

        public function create()
        {
            if ($_POST) {
                $this->subject->subjectName = $_POST['subjectName'];
                $this->subject->subjectInfo = $_POST['subjectInfo'];

                header('Location: subjectIndex.php');
                return $this->subject->create();
            }
            include(dirname(__FILE__) . '/../views/subject/subjectCreate.php');
        }

        public function edit($id)
        {
            $this->subject->SubjectID = $id;
            $this->subject->getSubjectByID();

            if ($_POST) {
                $this->subject->subjectName = $_POST['subjectName'];
                $this->subject->subjectInfo = $_POST['subjectInfo'];

                header("Location: subjectIndex.php");
                return $this->subject->update();
            }

            $subj = $this->subject;
            include(dirname(__FILE__) . '/../views/subject/subjectUpdate.php');
        }

        public function delete($id)
        {
            $this->subject->SubjectID = $id;
                $this->subject->getSubjectByID();
            
                if ($_POST) {
                    if (isset($_POST['confirmDelete'])) {
                        $this->subject->delete();
                        header("Location: subjectIndex.php");
                        exit();
                    } else {
                        echo "<script>alert('Debe confirmar que ha leído la advertencia antes de eliminar.');</script>";
                    }
                }
            
                $subj = $this->subject;
                include(dirname(__FILE__) . '/../views/subject/subjectDelete.php');
        }
    }
?>