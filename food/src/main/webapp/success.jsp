<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
   * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body {
    font-family: Arial, sans-serif;
    background-image: url(images/projecting/rsuccessbg.png);
    background-position: center;
    background-repeat: no-repeat;
   background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
.success-card {
    background-color: transparent;
    border-radius: 10px;
  
    padding: 20px;
    text-align: center;
    animation: fadeIn 0.5s ease;
    width: 350px;
}
.success-icon {
    font-size: 48px;
    color: #f57c00; 
}
.success-message {
    font-size: 18px;
    margin-top: 10px;
    color: #333;
}
.continue-button {
    background-color: #f57c00; 
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 20px;
}

.continue-button:hover {
    background-color: #e66900; 
}


@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
</style>
</head>
<body>
    <div class="success-card">
        <div class="success-icon">&#10003;</div>
        <h3 class="success-message">Congratulations, your account has been successfully created!</h3>
        <button class="continue-button" onclick="redirectToHome()">Continue</button>
    </div>

    <script>
        function redirectToHome() {
            window.location.href = "login.jsp";
        }
    </script>
</body>
</html>
