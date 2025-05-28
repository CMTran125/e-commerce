<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5, #fbc2eb);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        .login-card {
            background-color: white;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.08);
            padding: 2rem;
            max-width: 420px;
            width: 100%;
            transition: box-shadow 0.3s ease;
        }
        .login-card:hover {
            box-shadow: 0 12px 36px rgba(0,0,0,0.12);
        }
        .login-title {
            font-weight: 600;
            margin-bottom: 1.5rem;
            text-align: center;
        }
        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }
        .input-group-text {
            background-color: #0d6efd;
            color: white;
            border: none;
        }
        .btn-primary {
            border-radius: 8px;
        }
        .form-footer {
            text-align: center;
            margin-top: 1rem;
        }
        .error-msg {
            color: #dc3545;
            font-weight: 500;
            text-align: center;
            margin-top: 1rem;
        }
        .show-password-toggle {
            cursor: pointer;
            user-select: none;
        }
    </style>
</head>
<body>

<div class="login-card">
    <h2 class="login-title">User Login</h2>
    <form action="/userloginvalidate" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                <input type="text" name="username" id="username" class="form-control" placeholder="Enter your username" required>
            </div>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                <input type="password" name="password" id="password" class="form-control" placeholder="Enter your password" required>
                <span class="input-group-text show-password-toggle" onclick="togglePassword()">
                    <i class="bi bi-eye-slash" id="toggleIcon"></i>
                </span>
            </div>
        </div>

        <button type="submit" class="btn btn-primary w-100">Login</button>

        <div class="form-footer">
            <span>Don't have an account? <a href="/register">Register here</a></span>
        </div>

        <div class="error-msg" th:text="${msg}"></div>
    </form>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function togglePassword() {
        const passwordInput = document.getElementById('password');
        const icon = document.getElementById('toggleIcon');
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
        icon.classList.toggle('bi-eye');
        icon.classList.toggle('bi-eye-slash');
    }
</script>
</body>
</html>