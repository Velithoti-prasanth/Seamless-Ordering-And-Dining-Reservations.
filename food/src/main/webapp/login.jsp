<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login and Signup</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image: url('images/projectimg/loginbg.jpg');
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
}

.container {
	background: rgba(255, 255, 255, 0.1);
	border-radius: 20px;
	border: 1px solid rgba(255, 255, 255, 0.3);
	padding: 30px;
	text-align: center;
	width: 350px;
}

h2 {
	margin-bottom: 20px;
	color: white;
}

h3 {
	color: white;
	text-align: center;
}

.button-container {
	margin-bottom: 20px;
}

label {
	color: white;
	font-family: sans-serif;
}

.toggle-btn {
	background-color: #f57c00;
	color: white;
	padding: 10px 20px;
	margin: 5px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

.toggle-btn:hover {
	background-color: #e06c00;
}

.form-container {
	display: none;
	text-align: left;
}

form {
	margin-top: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-size: 13px;
}

input {
	width: 100%;
	padding: 8px;
	font-size: 12px;
	margin-bottom: 15px;
	border-radius: 5px;
	border: 1px solid #ddd;
}

button[type="submit"] {
	width: 100%;
	background-color: #f57c00;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

button[type="submit"]:hover {
	background-color: #e06c00;
}

.back-btn {
	background-color: #888;
	color: white;
	padding: 10px 20px;
	margin-top: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
	font-size: 16px;
}

.back-btn:hover {
	background-color: #666;
}

.input-error {
	border: 2px solid red;
}

#passwordError {
	color: red;
	display: none;
}
</style>
</head>

<body>
	<div class="container">
		<h2>Welcome! Please select an option</h2>
		<div class="button-container">
			<button id="signinBtn" class="toggle-btn"
				onclick="showForm('signin')">Sign In</button>
			<button id="signupBtn" class="toggle-btn"
				onclick="showForm('signup')">Sign Up</button>
		</div>

		<!-- Sign In Form -->
		<div id="signinForm" class="form-container">
			<h3>Sign In</h3>
			<form action="login" method="post">
				<label for="signinEmail">Email</label> <input type="email"
					id="signinEmail" name="email" placeholder="Enter your email"
					required> <label for="signinPassword">Password</label> <input
					type="password" id="signinPassword" name="password"
					placeholder="Enter your password" required>

				<button type="submit">Sign In</button>
				<button type="button" class="back-btn" onclick="goBack()">Go
					Back</button>
			</form>
		</div>

		<!-- Sign Up Form -->
		<div id="signupForm" class="form-container">
			<h3>Sign Up</h3>
			<form action="register" method="post">
				onsubmit="signupRedirect(event)">
				<label for="signupUsername">Username</label> <input type="text"
					id="signupUsername" name="username"
					placeholder="Enter your username" required> <label
					for="signupDOB">Date of Birth</label> <input type="date"
					id="signupDOB" name="dob" required> <label
					for="signupEmail">Email</label> <input type="email"
					id="signupEmail" name="email" placeholder="Enter your email"
					required> <label for="signupPassword">Password</label> <input
					type="password" id="signupPassword" name="password"
					placeholder="Enter your password" required> <label
					for="signupConfirmPassword">Confirm Password</label> <input
					type="password" id="signupConfirmPassword" name="confirmPassword"
					placeholder="Confirm your password" required> <label
					for="signupAddress">Address</label> <input type="text"
					id="signupAddress" name="address" placeholder="Enter your address"
					required> <label for="signupPhone">Phone Number</label> <input
					type="tel" id="signupPhone" name="phone"
					placeholder="Enter your phone number" required>

				<div id="passwordError" style="color: red; display: none;">Passwords
					do not match!</div>

				<button type="submit">Sign Up</button>
				<button type="button" class="back-btn" onclick="goBack()">Go
					Back</button>
			</form>
		</div>
	</div>

	<script>
        function showForm(formType) {
            const signinForm = document.getElementById('signinForm');
            const signupForm = document.getElementById('signupForm');
            const buttonsContainer = document.querySelector('.button-container');
            const welcomeMessage = document.querySelector('h2');

            buttonsContainer.style.display = 'none';
            welcomeMessage.style.display = 'none';

            if (formType === 'signin') {
                signinForm.style.display = 'block';
                signupForm.style.display = 'none';
            } else if (formType === 'signup') {
                signinForm.style.display = 'none';
                signupForm.style.display = 'block';
            }
        }

        function goBack() {
            const signinForm = document.getElementById('signinForm');
            const signupForm = document.getElementById('signupForm');
            const buttonsContainer = document.querySelector('.button-container');
            const welcomeMessage = document.querySelector('h2');

            signinForm.style.display = 'none';
            signupForm.style.display = 'none';

            buttonsContainer.style.display = 'block';
            welcomeMessage.style.display = 'block';
        }

        function signinRedirect(event) {
            event.preventDefault();
            window.location.href = "landing.html";
        }

        function signupRedirect(event) {
            event.preventDefault();
            const password = document.getElementById('signupPassword').value;
            const confirmPassword = document.getElementById('signupConfirmPassword').value;
            const passwordError = document.getElementById('passwordError');
            const passwordInput = document.getElementById('signupPassword');
            const confirmPasswordInput = document.getElementById('signupConfirmPassword');

            if (password !== confirmPassword) {
                passwordError.style.display = 'block';
                passwordInput.classList.add('input-error');
                confirmPasswordInput.classList.add('input-error');
                return;
            } else {
                passwordError.style.display = 'none';
                passwordInput.classList.remove('input-error');
                confirmPasswordInput.classList.remove('input-error');
                document.querySelector('form').submit(); // Submit if passwords match
            }
        }
    </script>
</body>
</html>
