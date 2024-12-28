<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-style: italic;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    overflow: hidden;
}

.container {
    text-align: center;
    animation: fadeIn 1.5s ease-in-out;
    z-index: 1;
    position: relative;
}

.success-message {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 40px;
    max-width: 600px;
    margin: 20px;
    position: relative;
    z-index: 2;
}

.success-message h1 {
    color: green;
    font-size: 2rem;
    margin-bottom: 20px;
}

.success-message p {
    color: #333;
    font-size: 1.2rem;
    margin-bottom: 30px;
}

.btn {
    display: inline-block;
    padding: 15px 30px;
    font-size: 1rem;
    color: #fff;
    background-color: orange;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #218838;
}

@keyframes fadeIn {
    0% {
        opacity: 0;
        transform: translateY(20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Canvas Style */
#confetti-canvas {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    pointer-events: none;
    z-index: 0;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="success-message">
            <h1>Your Message Has Been Sent!</h1>
            <p>Thank you for reaching out to us. We will get back to you as soon as possible.</p>
            <a href="landing.jsp" class="btn">Go to Homepage</a>
        </div>
    </div>

    <!-- Confetti Canvas -->
    <canvas id="confetti-canvas"></canvas>

    <!-- Confetti Script -->
    <script src="confetti.js"></script>
    <script>
        // Start confetti when the page loads
        window.onload = () => {
            startConfetti();
        };
        function startConfetti() {
    const canvas = document.getElementById('confetti-canvas');
    const ctx = canvas.getContext('2d');
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const confettiPieces = [];
    const confettiCount = 150;
    const colors = ['#FFD700', '#FFEC8B', '#DAA520']; // Shades of gold

    function randomRange(min, max) {
        return Math.random() * (max - min) + min;
    }

    function createConfetti() {
        for (let i = 0; i < confettiCount; i++) {
            confettiPieces.push({
                x: randomRange(0, canvas.width),
                y: randomRange(0, canvas.height),
                size: randomRange(5, 10),
                color: colors[Math.floor(Math.random() * colors.length)],
                velocityX: randomRange(-2, 2),
                velocityY: randomRange(2, 5),
                rotation: randomRange(0, Math.PI * 2),
                rotationSpeed: randomRange(0.02, 0.05),
            });
        }
    }

    function drawConfetti() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        confettiPieces.forEach((piece) => {
            ctx.fillStyle = piece.color;
            ctx.save();
            ctx.translate(piece.x, piece.y);
            ctx.rotate(piece.rotation);
            ctx.fillRect(-piece.size / 2, -piece.size / 2, piece.size, piece.size);
            ctx.restore();

            piece.x += piece.velocityX;
            piece.y += piece.velocityY;
            piece.rotation += piece.rotationSpeed;

            if (piece.y > canvas.height) {
                piece.y = 0;
                piece.x = randomRange(0, canvas.width);
            }
        });
    }

    function update() {
        drawConfetti();
        requestAnimationFrame(update);
    }

    createConfetti();
    update();
}

// Adjust canvas size on window resize
window.addEventListener('resize', () => {
    const canvas = document.getElementById('confetti-canvas');
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
});

    </script>
</body>
</html>