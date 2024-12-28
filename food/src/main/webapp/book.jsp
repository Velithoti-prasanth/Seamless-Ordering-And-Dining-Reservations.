<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Table Reservation</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-image: url('images/projectimg/reserve.jpg');
    display: flex;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    justify-content: center;
    align-items: center;
   
    animation: backgroundFade 5s infinite alternate;
}


.reservation-container {
   background-color:black;
    padding: 20px;
    padding-top: 2%;
    padding-bottom: 10px;
    padding-left: 3%;
    margin-top: 3.5%;
    box-shadow: 0  0 10px rgba(4, 4, 4, 0.1);
    width: 30%;
    max-width: 100%;
    height: 70%;
    opacity: 0;
    border: 2px solid rgb(255, 255, 255);
    transform: translateY(-20px);
    animation: fadeInUp 1s forwards;
}

@keyframes fadeInUp {
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.submit input {
    text-align: center;
    font-size: 14px;
    text-decoration: none;
    padding-top: 10px;
    background-color:rgb(242, 255, 4) ;
    color: black;
    margin-top: 0px;
    height: 35px;
    margin-left: 2%;
    border: 1px solid white;

    margin-bottom: 20px;
    animation: textFadeIn 1s 0.5s forwards;
    opacity: 0;
}

@keyframes textFadeIn {
    to {
        opacity: 1;
    }
}

form {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 5px;
    color:rgb(255, 255, 255);
}

input {
    margin-bottom: 20px;
    background-color: white;
    padding: 10px;
    height: 15px;
    color: white;
    border-bottom: 1PX solid white;
    background-color: transparent;   
    font-size: 16px;
    width: 90%;
}

button {
    background-color: orange;
    color: #fff;
    margin-left: 30%;
    padding: 10px;
    margin-top: 10px;
    border:1px solid #2df1ff;
    border-radius: 5px;
    font-size: 16px;
    width: 120px;
    border-radius: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color:blue;
}

button:focus {
    outline: none;
    animation: buttonPulse 0.5s;
}

@keyframes buttonPulse {
    0% {
        transform: scale(1);
    }
    50% {
        transform: scale(1.1);
    }
    100% {
        transform: scale(1);
    }
}
    </style>
</head>
<body>
    <div class="reservation-container">
        <form action="ReservationServletforTable" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" required>
            <label for="date">Date</label>
            <input type="datetime-local" id="date" name="date" required>
            <label for="time">Time to</label>
            <input type="time" id="time" name="time" required>
            <label for="guests">Number of Guests</label>
            <input type="number" id="guests" name="guests" required min="1" max="10">
            <div class="submit">
            <input type="submit" value="RESERVE TABLE">
            </div>
        </form>
    </div>
    
    <!-- js-code -->
   <%
    // Java code to calculate current time in hours and minutes
    java.util.Date todayIST = new java.util.Date(); // Assuming todayIST is correctly set earlier
    String currentTime = String.format("%02d:%02d", todayIST.getHours(), todayIST.getMinutes());
%>

<script>
    // JavaScript code to handle date and time input
    const dateInput = document.querySelector('#dateInput'); // Assuming an element with ID 'dateInput' exists
    const timeInput = document.querySelector('#timeInput'); // Assuming an element with ID 'timeInput' exists

    function toIST(date) {
        // Convert the date to IST
        let utcOffset = date.getTimezoneOffset() * 60000; // Offset in milliseconds
        let istOffset = 5.5 * 60 * 60 * 1000; // IST offset in milliseconds (UTC+5:30)
        return new Date(date.getTime() + utcOffset + istOffset);
    }

    // Getting the current date and converting to IST
    const todayIST = toIST(new Date());
    const selectedDate = new Date(dateInput.value); // Date selected by the user
    const selectedDateIST = toIST(selectedDate); // Convert the selected date to IST

    // If the selected date is today, set the minimum time to the current time
    if (selectedDateIST.toDateString() === todayIST.toDateString()) {
        const currentTime = "<%= currentTime %>"; // Embed the Java-computed time into JS
        timeInput.min = currentTime;
    } else {
        // If the selected date is not today, set the minimum time to midnight
        timeInput.min = '00:00';
    }
</script>

    

    
</body>
</html>