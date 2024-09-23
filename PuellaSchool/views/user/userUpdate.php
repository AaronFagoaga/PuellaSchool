<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Actualizar usuario</title>
    <style>
        .password-toggle {
            cursor: pointer;
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
        }

        .password-toggle:hover {
            color: #0056b3;
        }

        .input-group {
            position: relative;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="card p-4 shadow-lg">
            <h2 class="mb-4 text-center">Actualizar usuario</h2>
            <form action="" method="POST">
                <div class="mb-3">
                    <label for="userName" class="form-label">Nombre:</label>
                    <input type="text" id="userName" name="userName" value="<?= htmlspecialchars($users->userName) ?>" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="userGender" class="form-label">Género:</label>
                    <select id="userGender" name="userGender" class="form-select" required>
                        <option value="">Seleccione género</option>
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                        <option value="Otro">Otro</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="userPhone" class="form-label">Teléfono:</label>
                    <input type="text" id="userPhone" name="userPhone" class="form-control" required pattern="^\d{4}-\d{4}$" value="<?= htmlspecialchars($users->userPhone) ?>" required>
                </div>
                <div class="mb-3">
                    <label for="userEmail" class="form-label">Correo electrónico:</label>
                    <input type="email" id="userEmail" name="userEmail" value="<?= htmlspecialchars($users->userEmail) ?>" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="userNickname" class="form-label">Nombre de usuario:</label>
                    <input type="text" id="userNickname" name="userNickname" value="<?= htmlspecialchars($users->userNickname) ?>" class="form-control" required pattern="^\S+$" title="No se permiten espacios">
                </div>
                <div class="mb-3 input-group">
                    <label for="userPassword" class="form-label">Contraseña:</label>
                    <input type="password" id="userPassword" name="userPassword" value="<?= htmlspecialchars($users->userPassword) ?> " class="form-control" required>
                    <button type="button" class="password-toggle" onclick="togglePassword()">
                        <i id="password-icon" class="fas fa-eye"></i>
                    </button>
                </div>
                <div class="mb-3">
                    <label for="RolID" class="form-label">Rol:</label>
                    <select id="RolID" name="RolID" class="form-select" required>
                        <?php foreach ($roles as $role): ?>
                            <option value="<?php echo $role['RolID']; ?>" <?php echo $role['RolID'] == $users->RolID ? 'selected' : ''; ?>>
                                <?php echo $role['rolName']; ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="userAddress" class="form-label">Dirección:</label>
                    <input type="text" id="userAddress" name="userAddress" value="<?= htmlspecialchars($users->userAddress) ?>" class="form-control" required>
                </div>
                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="./userIndex.php" class="btn btn-danger">Cancelar</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
    <script>
        function togglePassword() {
            var passwordInput = document.getElementById('userPassword');
            var icon = document.getElementById('password-icon');

            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                passwordInput.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        }
    </script>
</body>

</html>