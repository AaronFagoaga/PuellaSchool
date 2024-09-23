<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Usuarios</title>
    <style>
        .password-toggle {
            cursor: pointer;
            background: none;
            border: none;
            padding: 0;
        }

        .password-toggle:hover {
            color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card mt-5 p-4">
            <h2 class="mb-4">Lista de usuarios</h2>
            <div class="mb-3">
                <a href="./userIndex.php?action=create" class="btn btn-success">Crear usuario</a>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Género</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Correo</th>
                            <th scope="col">UserName</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Rol</th>
                            <th scope="col" class="text-center">Opciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users as $user) : ?>
                            <tr>
                                <td><?= htmlspecialchars($user['userCode']); ?></td>
                                <td><?= htmlspecialchars($user['userName']); ?></td>
                                <td><?= htmlspecialchars($user['userGender']); ?></td>
                                <td><?= htmlspecialchars($user['userPhone']); ?></td>
                                <td><?= htmlspecialchars($user['userEmail']); ?></td>
                                <td><?= htmlspecialchars($user['userNickname']); ?></td>
                                <td>
                                    <span id="password-<?= $user['UserID'] ?>" class="password-value">********</span>
                                    <button type="button" class="btn password-toggle" onclick="togglePassword(<?= $user['UserID'] ?>)">
                                        <i id="password-icon-<?= $user['UserID'] ?>" class="fas fa-eye"></i>
                                    </button>
                                    <input type="hidden" id="password-raw-<?= $user['UserID'] ?>" value="<?= htmlspecialchars($user['userPassword']); ?>">
                                </td>
                                <td><?= htmlspecialchars($user['userAddress']); ?></td>
                                <td><?= htmlspecialchars($user['rolName']); ?></td>
                                <td class="text-center">
                                    <a href="userIndex.php?action=edit&id=<?= $user['UserID'] ?>" class="btn btn-warning btn-sm">Editar</a>
                                    <a href="userIndex.php?action=delete&id=<?= $user['UserID'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">Eliminar</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-RgI1z2hPeBGBuvd8EKl/rxDdoJ2VRcN3uQ3aTqPfndd0EOw50UBNs6FtxEM8z0V9" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
    <script>
        function togglePassword(userId) {
            var passwordElement = document.getElementById('password-' + userId);
            var passwordInput = document.getElementById('password-raw-' + userId);
            var button = document.getElementById('password-icon-' + userId);

            if (passwordElement.textContent === '********') {
                passwordElement.textContent = hex_md5(passwordInput.value);
                button.classList.remove('fa-eye');
                button.classList.add('fa-eye-slash');
            } else {
                passwordElement.textContent = '********';
                button.classList.remove('fa-eye-slash');
                button.classList.add('fa-eye');
            }
        }

        function hex_md5(str) {
            return str;
        }
    </script>
</body>

</html>