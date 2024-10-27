<?php
    class Database{
        private $host = "localhost";
        private $database = "PuellaSchoolDB";
        private $user = "root";
        private $password = "1234";
        private $conn;

        //Método para establecer la conexión
        public function getConnection(){
            $this->conn = null;
            try{
                $this->conn = new PDO("mysql:host=".$this->host.";dbname=".$this->database, $this->user, $this->password);
                $this->conn->exec("set names utf8");
            }catch(PDOException $ex){
                echo"Connection error: ".$ex->getMessage();
                die();
            }
            return $this->conn;
        }
    }
?>