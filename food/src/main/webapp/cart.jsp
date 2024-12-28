<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Page with Payment Slide</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff7e6;
            color: #333;
            margin: 0;
            padding: 0;
        }
 
        h2 {
            text-align: center;
            color: #ff6600;
            margin-top: 20px;
        }

        .cart {
            border: 2px solid #ff6600;
            border-radius: 10px;
            padding: 15px;
            margin: 20px auto;
            max-width: 600px;
            background-color: #ffe0b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #ffcc99;
            background-color: #fff3e0;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .cart-item button {
            background-color: #ff4d4d;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cart-item button:hover {
            background-color: #ff1a1a;
        }

        .cart-total {
            font-weight: bold;
            text-align: right;
            padding: 10px;
            color: #ff6600;
        }

        .empty-cart {
            color: #ff3300;
            text-align: center;
            font-weight: bold;
        }

        .address {
            border: 2px solid #ff6600;
            border-radius: 10px;
            padding: 15px;
            margin: 20px auto;
            max-width: 600px;
            background-color: #ffe0b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: none;
        }

        .address input {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ff6600;
        }

        .slide-container {
            background-color: rgba(255, 255, 255, 0.6);
            border-radius: 25px;
            position: fixed;
            bottom: -100px;
            left: 50%;
            transform: translateX(-50%);
            height: 70px;
            width: 90%;
            max-width: 500px;
            display: none;
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            animation: slideUp 0.5s ease-out forwards;
        }

        @keyframes slideUp {
            from {
                bottom: -100px;
                opacity: 0;
            }
            to {
                bottom: 20px;
                opacity: 1;
            }
        }

        .slide-button {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            width: 100%;
            height: 60px;
            background: none;
            border-radius: 25px;
            outline: none;
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }

        .slide-button::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 80px;
            height: 60px;
            background-color: #ff6600;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .slide-button::-moz-range-thumb {
            width: 80px;
            height: 60px;
            background-color: #ff6600;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .slide-label {
            position: absolute;
            top: 50%;
            left: 20px;
            transform: translateY(-50%);
            font-size: 18px;
            color: #fff;
            font-weight: bold;
        }

        .total-to-pay {
            font-weight: bold;
            font-size: 16px;
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #fff;
        }

      .slide-to-pay-message {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    font-size: 18px;
    font-weight: bold;
    color: black;
}

    </style>
</head>
<body>

    <h2>Your Cart</h2>
    <div class="cart">
        <div id="cart-items"></div>
        <div class="cart-total">
            Total Cost: ₹<span id="total-cost">0</span>
        </div>
    </div>

    <div class="address" id="addressSection">
        <h3>Delivery Address</h3>
        <input type="text" id="name" placeholder="Full Name" required>
        <input type="text" id="street" placeholder="Street Address" required>
        <input type="text" id="city" placeholder="City" required>
        <input type="text" id="state" placeholder="State" required>
        <input type="text" id="zip" placeholder="Zip Code" required>
        <input type="text" id="phone" placeholder="Phone Number" required>
    </div>

    <div class="slide-container" id="slideContainer">
        <span class="slide-label">Slide to Pay</span>
        <input type="range" min="0" max="100" value="0" class="slide-button" id="slideButton">
        <span class="total-to-pay">₹<span id="slide-total">0</span></span>
        <div class="slide-to-pay-message">Slide to Pay</div>
    </div>

    <script>
        let cart = JSON.parse(localStorage.getItem('cart')) || {};

        function displayCart() {
            const cartItemsDiv = document.getElementById('cart-items');
            const totalCostSpan = document.getElementById('total-cost');
            const slideTotalSpan = document.getElementById('slide-total');
            const slideContainer = document.getElementById('slideContainer');
            const addressSection = document.getElementById('addressSection');
            cartItemsDiv.innerHTML = '';
            let totalCost = 0;

            if (Object.keys(cart).length === 0) {
                cartItemsDiv.innerHTML = '<p class="empty-cart">Your cart is empty.</p>';
                totalCostSpan.innerText = '0';
                slideTotalSpan.innerText = '0';
                slideContainer.style.display = 'none';
                addressSection.style.display = 'none';
                return;
            }

            for (let item in cart) {
                let itemTotalCost = cart[item].price * cart[item].quantity;
                totalCost += itemTotalCost;

                let cartItemDiv = document.createElement('div');
                cartItemDiv.classList.add('cart-item');

                let decrementButtonHTML = cart[item].quantity > 1 
                    ? <button onclick="decreaseItemQuantity('${item}')">-</button>
                    : <button class="delete-icon" onclick="removeFromCart('${item}')">🗑</button>;

                cartItemDiv.innerHTML = `
                    <span>${item} x ${cart[item].quantity} (${cart[item].price})</span>
                    <span>₹${itemTotalCost.toFixed(2)}</span>
                    <div class="item-controls">
                        ${decrementButtonHTML}
                        <button onclick="increaseItemQuantity('${item}')">+</button>
                    </div>
                `;
                cartItemsDiv.appendChild(cartItemDiv);
            }

            totalCostSpan.innerText = totalCost.toFixed(2);
            slideTotalSpan.innerText = totalCost.toFixed(2);
            slideContainer.style.display = 'block';
            addressSection.style.display = 'block';
        }

    





        document.getElementById('slideButton').addEventListener('input', function (e) {
    const slideValue = e.target.value;
    const slideToPayMessage = document.querySelector('.slide-to-pay-message');
    this.style.background = linear-gradient(to right, #33b50b ${slideValue}%, rgba(255, 255, 255, 0.6) ${slideValue}%);
    
   
    if (slideValue < 100) {
        slideToPayMessage.style.color = 'black'; 
    } else {
        slideToPayMessage.style.color = 'white'; 
    }

   
    if (slideValue == 100) {
        window.location.href = 'payment.html';
    }
});
        function increaseItemQuantity(item) {
            cart[item].quantity += 1;
            localStorage.setItem('cart', JSON.stringify(cart));
            displayCart();
        }

        function decreaseItemQuantity(item) {
            if (cart[item].quantity > 1) {
                cart[item].quantity -= 1;
            } else {
                delete cart[item];
            }
            localStorage.setItem('cart', JSON.stringify(cart));
            displayCart();
        }

        function removeFromCart(item) {
            delete cart[item];
            localStorage.setItem('cart', JSON.stringify(cart));
            displayCart();
        }
        window.onload = displayCart;
    </script>
</body>
</html>