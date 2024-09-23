<?php
session_start();

if (isset($_SESSION['user']) && !empty($_SESSION['user'])) {
  header("Location: ./views/dist/pages/index.php");
  exit();
}

require_once './controllers/userController.php';

$controller = new userController();


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $controller->login();
}

?>

<!DOCTYPE html>

<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sign in Form</title>
  <link rel="stylesheet" href="./resources/login/style.css" />
</head>

<body>
  <main>
    <div class="box">
      <div class="inner-box">
        <div class="forms-wrap">
          <form action="" method="POST" autocomplete="off" class="sign-in-form">
            <div class="logo">
              <img src="./resources/login/img/logo.png" alt="logo" />
              <h4>Puella School</h4>
            </div>

            <div class="heading">
              <h2>Bienvenido de Nuevo</h2>
            </div>

            <div class="actual-form">
              <div class="input-wrap">
                <input type="text" name="user" class="input-field" autocomplete="off" required />
                <label>Usuario</label>
              </div>

              <div class="input-wrap">
                <input type="password" name="password" class="input-field" autocomplete="off" required />
                <label>Contraseña</label>
              </div>

              <input type="submit" value="Iniciar Sesión" class="sign-btn" />
            </div>
            <?php
            if (isset($error)) {
              echo '<p style="color:red;">' . htmlspecialchars($error) . '</p>';
            }
            ?>
          </form>
        </div>

        <div class="carousel">
          <div class="images-wrapper">
            <img src="./resources/login/img/image1.png" class="image img-1 show" alt="" />
            <img src="./resources/login/img/image2.png" class="image img-2" alt="" />
            <img src="./resources/login/img/image3.png" class="image img-3" alt="" />
          </div>

          <div class="text-slider">
            <div class="text-wrap">
              <div class="text-group">
                <h2>Crea tus reportes</h2>
                <h2>Personalizalo a tu manera</h2>
                <h2>Invita a los estudiantes a tu clase</h2>
              </div>
            </div>

            <div class="bullets">
              <span class="active" data-value="1"></span>
              <span data-value="2"></span>
              <span data-value="3"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

  <script src="./resources/login/app.js"></script>
</body>

</html>