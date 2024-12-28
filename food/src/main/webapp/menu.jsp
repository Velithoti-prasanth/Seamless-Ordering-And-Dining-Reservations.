<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
* {
    margin: 0;
    padding: 0;
}
body {
    background-color: whitesmoke;
    font-family: Arial, sans-serif;
    animation: fadeIn 0.2s ease-in-out;
}
.header {
    text-align: center;
    margin-top: 5%;
}
.header h1 {
    margin: 5%;
    color: orange;
    font-size: 2.5em;
    font-style: italic;
    animation: slideIn 1s ease-in-out;
}
.parent {
    margin-top: 5%;
    display: flex;
    justify-content: space-evenly;
    animation: fadeInUp 1.s ease-in-out;
}
.child1, .child2, .child3,.child4,.child5{
    display: flex;
    flex-direction: column;
    align-items: center;
    transition: transform 0.3s;
    
}
.child1:hover, .child2:hover, .child3:hover,.child4:hover,.child5:hover {
    transform: scale(1.1);
}
.child1 h1, .child2 h1, .child3 h1 ,.child4 h1,.child5 h1{
    color: black;
    font-size: 30px;
    margin-top: 15%;
}
.child1 h2, .child2 h2, .child3 h2,.child4 h2,.child5 h2 {
    color: rgb(106, 104, 104);
    font-size: 15px;
}
.child1 img, .child2 img, .child3 img, .child4 img, .child5 img{
    width: 100px;
    transition: transform 0.3s;
}
.child5 img, .child1 img, .child2 img, .child3 img, .child4 img{
    height:85px;
}
.child1 img:hover, .child2 img:hover, .child3 img:hover,.child4 img:hover,.child5 img:hover {
    transform: rotate(360deg);
}
.child3 img {
    width: 80px;
}
.bitems {
    margin-top: 8%;
    margin-left: 50px;
    font-size: 15px;
    display: flex;
    justify-content: center;
    animation: fadeInUp 1s ease-in-out;
}
.bitemsimg img {
    width: 130px;
    height: 80px;
    border: 1px solid rgb(3, 3, 3);
    border-radius: 10px;
    transition: transform 0.3s, box-shadow 0.3s;
    box-shadow: 0 0 10px rgb(235, 57, 18);
    
}
.bitemsimg img:hover {
    transform: scale(1.1);
    box-shadow: 0 0 10px rgb(235, 57, 18);
}
.bitemsimg h1 {
    color: black;
    margin-left: -175px;
    margin-top: -100px;
}
.bitemsimg p {
    color: black;
    font-size: 13px;
    margin-left: 17px;
}
.cost {
    display: block;
    margin-top: 25px;
    margin-left: 20px;
    font-size: 20px;
}
.cost img {
    border: none;
    width: 40px;
    height: 30px;
    margin-right: -5px;
    margin-top: 4px;
}
.cost h2{
    color: orange;
    margin-top: 12%;
    font-size: 20px;
}
.menu-content {
    margin-left: 30px;
    margin-right: 0.5%;

}
.menu-content h1 {
    color: orange;
     margin-top: -0.5%;
}
.menu-content p {
    margin-bottom: 105px;
    font-size: 13px;
}
.icon {
    display: flex;
    margin-bottom: 110px;
}
a {
    text-decoration: none;
    display: flex;
    justify-content: center;
}
a button {
    width: 150px;
    height: 35px;
   justify-items: center;
    color: black;
    background-color: orange;
    border: none;
    box-shadow: 1px 1px 10px rgb(26, 217, 255);
    border-radius: 19px;
    transition: background-color 0.3s, transform 0.3s;
  margin: 40px;
  margin-left: 7%;
}
a button:hover {
    background-color: rgb(7, 238, 255);
    transform: scale(1.1);
    color: white;
    box-shadow: 1px 1px 10px orange;
}
.litems {
    margin-top: 8%;
    margin-left: 50px;
    display: flex;
    justify-content: center;
    animation: fadeInUp 1s ease-in-out;
}

/* Keyframes for animations */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes slideIn {
    from {
        transform: translateY(-100%);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

@keyframes fadeInUp {
    from {
        transform: translateY(50px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

.parent .child1, .parent .child2, .parent .child3,.parent .child4,.parent .child5 {
    position: relative;
    cursor: pointer;
}

.parent .child1.active .headings h1::after,
.parent .child2.active .headings h1::after,
.parent .child3.active .headings h1::after,
.parent .child4.active .headings h1::after,
.parent .child5.active .headings h1::after{
    content: '';
    position: absolute;
    width: 100%;
    height: 3px;
    background-color: #ff6600; /* Your preferred color */
    left: 0;
    bottom: -10px;
    animation: underline-animation 0.4s ease forwards;
}

@keyframes underline-animation {
    from {
        width: 0;
        left: 50%;
    }
    to {
        width: 100%;
        left: 0;
    }
}


.ditems{
    margin-top: 8%;
    margin-left: 50px;
    display: flex;
    justify-content: center;
    animation: fadeInUp 1s ease-in-out;
}
.sitems{
    
    width: 60%;
    margin-top: 8%;
    margin-left: 20%;  
    display: flex;
    justify-content: center;
    animation: fadeInUp 1s ease-in-out;
    
}
.citems{
    
    width: 60%;
    margin-top: 8%;
    margin-left: 20%;  
    display: flex;
    justify-content: center;
    animation: fadeInUp 1s ease-in-out;
    
}

.order-controls {
    position: relative;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    justify-content: center;
    align-items: center;
   
    padding: 5px 10px;
    border-radius: 20px;
    color: black;
    font-size: 16px;
    min-width: 100px; /* Ensure the width remains constant */
}

.add-button, .counter {
    display: inline-flex;
    align-items: center;
}

.counter {
    display: none;
    color: rgb(255, 255, 255);
}

.order-controls button {
    background:  #db5800;
    height: 25px;
    border: 1px black solid;
    color: rgb(245, 243, 243);
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 25%;
    font-size: 16px;
   
    box-shadow:0 0 10px black ;
    margin: 0 5px;
    transition: background-color 0.3s ease;
}

.order-controls button:hover {
    background-color: #e64a19;
}
.cart {
    background-color: green; 
    width: 30%;
    height: 20px;
    margin-left: auto;
    margin-right: auto;
    padding: 10px;
    padding-top: 15px;
    display: flex;
    justify-content: space-between;
    border-radius: 10px;
}
.cart, h1, h2 {
    text-decoration: none;
    color: white;
}
.cart button {
    background-color: transparent;
    border: none;
    color: white;
    font-size: 16px;
}
.cart h1 {
    font-size: 16px;
}

</style>
</head>
<body>
    <section class="menu">
        <!--menu header-->
        <div class="header">
            <h1>Menu</h1>
            <div class="parent">
                <div class="child1">
                    <img src="https://static.vecteezy.com/system/resources/previews/012/627/995/original/empty-orange-cup-and-saucer-isolated-with-clipping-path-for-mockup-free-png.png" alt="">
                    <div class="headings">
                        <h1>Popular</h1>
                        <h2>Breakfast</h2>
                    </div>
                </div>
                <div class="child2">
                    <img src="https://icones.pro/wp-content/uploads/2021/04/icone-de-nourriture-orange-symbole-png.png" alt="">
                    <div class="headings">
                        <h1>Special</h1>
                        <h2>Lunch</h2>
                    </div>
                </div>
                <div class="child3">
                    <img src="https://cdn1.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/eat-circle-orange-512.png" alt="">
                    <div class="headings">
                        <h1>Lovely</h1>
                        <h2>Dinner</h2>
                    </div>
                </div>
                <div class="child4">
                    <img src="data:image/png;base64,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" alt="">
                    <div class="headings">
                        <h1>spicy</h1>
                        <h2>Snacks</h2>
                    </div>
                </div>
                <div class="child5">
                    <img src="projectimg/contact.jpg" alt="">
                    <div class="headings">
                        <h1>Summer</h1>
                        <h2>CoolDrinks</h2>
                    </div>
                </div>
            </div>
        </div>
        <!--breakfast-->
        <div class="bitems">
            <div class="bitemsimg">
                <img src="https://www.dosacoffee.com/cdn/shop/products/SambharIdly_1.jpg?v=1597176438" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.ticklingpalates.com/wp-content/uploads/2022/03/plain-dosa.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2022/07/tomato-upma-recipe-500x500.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://farm1.staticflickr.com/320/18912568232_686613c78c_o.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.cubesnjuliennes.com/wp-content/uploads/2019/11/Poha-1.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.awesomecuisine.com/wp-content/uploads/2020/03/poori-masala-kizhangu.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.vegrecipesofindia.com/wp-content/uploads/2021/08/mysore-bonda-1.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://www.shutterstock.com/image-photo/indian-street-foods-whole-wheat-600nw-1809081952.jpg" alt=""> 
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                
                
            </div>
            <div class="menu-content">
                <h1>Idli Sambar</h1>
                <p>soft steamed rice cakes served with a flavoural lentil soup.</p>
                <h1>Dosa</h1>
                <p>Crispy crepes made from fermented rice filled with spiced potatoes.</p>
                <h1>Upma</h1>
                <p>Cooked with vegetables,mustard seeds, and curry leaves.</p>
                <h1>vada</h1>
                <p>Crispy on the outside and soft inside, served with chutney and sambar.</p>
                <h1>Poha</h1>
                <p>Flattened rice cooked with mustard seeds, turmeric,and garnished with lemon.</p>
                <h1>poori</h1>
                <p>poori is a round,golden,puffed,fried indian bread made from whole wheat flour.</p>
                <h1>Mysore Bonds</h1>
                <p>Mysore Bonda is a crispy,deep-fried south indian snack enjoyed with cocnut chutney.</p>
                <h1>Chapathi</h1>
                <p>Chapathis are one of the most common forms of wheat bread, a staple food in the Indian Subcontinent.</p>
            </div>
            <div class="cost">
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>50</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>60</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>40</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>20</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>80</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>50</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>40</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>50</h2>
                </div>
            </div>
        </div>
        <!--lunch-->
        <div class="litems">
            <div class="bitemsimg">
                <img src="https://i.ytimg.com/vi/tnbB1E3TPsg/maxresdefault.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://img.freepik.com/free-photo/top-view-delicious-fish-meal_23-2148734691.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://theculinarykonnoisseur.files.wordpress.com/2021/07/mutton-gongura-wm-4.jpg?w=1568" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://i.ytimg.com/vi/tWUi0i_--Lc/mqdefault.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://media.istockphoto.com/id/1364914766/photo/grilled-tiger-shrimps-with-spice-and-lime.jpg?s=612x612&w=0&k=20&c=o0AAokknzHJApSqYfPbhcM7xtkuSfGjcvCdj_UPUAQs=" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://s3-ap-south-1.amazonaws.com/betterbutterbucket-silver/rekha-unni20180406125026059.jpeg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
            <br>
                <img src="https://www.shutterstock.com/image-photo/chicken-65-spicy-deep-fried-600nw-1950502363.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                <br>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSybQbFL0cL28c1-3U78RAqMV-xBI9a8744dw&s" alt=""> 
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
                
            </div>
            <div class="menu-content">
                <h1>Andhra Chicken Biryani</h1>
                <p>Aromatic rice dish with tender chicken pieces, spices, and fried onions.</p>
                <h1>Chepala Pulusu</h1>
                <p>Spicy fish curry cooked in tamarind sauce and assorted spices.</p>
                <h1>Gongura Mutton</h1>
                <p>Mutton cooked with tangy sorrel leaves and spices.</p>
                <h1>Kodi Vepudu</h1>
                <p>Spicy fried chicken with a crispy exterior and juicy interior.</p>
                <h1>Royyala Pulusu</h1>
                <p>Prawn curry with a rich, spicy gravy.</p>
                <h1>Mutton Kheema</h1>
                <p>Minced mutton cooked with spices and herbs.</p>
                <h1>Chicken 65</h1>
                <p>Deep-fried chicken pieces marinated in spices and yogurt.</p>
                <h1>Natu Kodi Pulusu</h1>
                <p>Country chicken curry with a spicy and tangy gravy.</p>
            </div>
            <div class="cost">
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1200</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1000</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1500</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1200</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1400</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1300</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1100</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>1300</h2>
                </div>
            </div>
        </div>
        <!--dinner-->
        <div class="ditems">
           
                <div class="bitemsimg">
                    <img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2022/07/chicken-butter-masala-recipe.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://bonmasala.com/wp-content/uploads/2022/06/palak-paneer.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://vegecravings.com/wp-content/uploads/2016/07/veg-pulao-recipe-step-by-step-instructions.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://vivahabhojanambu.co.in/wp-content/uploads/2020/12/Palamuri-Kodi-Pulao.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPmLUaQmB0bcXLy32dE43ewkzlXj0gRI--Ng&s" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://www.lekhafoods.com/media/1051112/andhra-pesarattu.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0rg-RG0oylEkOr8c1aiOE_QZX2LXZDq7mWw&s" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div><br>
                    <img src="https://i.redd.it/5aawzxyro2081.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div> <br>
                    <img src="https://cdn.tarladalal.com/members/9306/big/big_paneer_kulcha,_paneer_kulcha_made_with_dahi,_curd-16999.jpg" alt="">
                    <div class="order-controls">
                        <button class="add-button" onclick="addItem(this)">Add</button>
                        <div class="counter" style="display: none;">
                            <button class="decrease" onclick="changeCount(this, -1)">-</button>
                            <span>1</span>
                            <button class="increase" onclick="changeCount(this, 1)">+</button>
                        </div>
                    </div> 
                </div>
                <div class="menu-content">
                    <h1>Butter chicken</h1>
                    <p>Marinated chicken cooked in a creamy tomato sauce, rich with butter and spices.</p>
                    <h1>Palak paneer</h1>
                    <p>Paneer cubes cooked in a smooth spinach gravy, flavored with garlic and spices.</p>
                    <h1>Vegitable pulav</h1>
                    <p>  Fragrant rice cooked with mixed vegetables, spices, and garnished with fried onions and nuts.</p>
                    <h1>Kodi pulav</h1>
                    <p>A flavorful chicken pulao made with basmati rice, tender chicken, and aromatic spices, often served with raita</p>
                    <h1>Gutti vankaya</h1>
                    <p> Stuffed eggplant curry with roasted herbs and spices.</p>
                    <h1>Pesarttu</h1>
                    <p>A savory crepe made from green gram often served with ginger chutney.</p>
                    <h1>Curd rice</h1>
                    <p>A comfretable dish mae with cooked rice and yogurt seasoned with spices and herbs.</p>
                    <h1>Mudha pappu avakai</h1>
                    <p>Simple mashed toor dal served with andhra mango pickle</p>
                    <h1>Paneer Kulcha</h1>
                    <p>This recipe has a spiced, savory and lightly tangy paneer filling making for a crisp and soft tender flatbread.</p>
                </div>
                <div class="cost">
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>200</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>1200 </h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>1500</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>1200</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>800</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>1300</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>800</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>1200</h2>
                    </div>
                    <div class="icon">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                        <h2>120</h2>
                    </div>
                </div>
           
        </div>
        <!-- snacks -->
        <div class="sitems">
            <div class="bitemsimg">
                <img src="https://tiffycooks.com/wp-content/uploads/2021/09/Screen-Shot-2021-09-21-at-5.21.37-PM.png" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Gobi_Manchurian.jpg/2560px-Gobi_Manchurian.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.indianveggiedelight.com/wp-content/uploads/2019/07/air-fryer-potato-fries-featured.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.cookwithmanali.com/wp-content/uploads/2018/05/Best-Pav-Bhaji-Recipe.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.allrecipes.com/thmb/0xH8n2D4cC97t7mcC7eT2SDZ0aE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6776_Pizza-Dough_ddmfs_2x1_1725-fdaa76496da045b3bdaadcec6d4c5398.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://i0.wp.com/binjalsvegkitchen.com/wp-content/uploads/2015/03/Pani-Puri-H2-WP-WT-S.jpg?fit=647%2C900&ssl=1" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.awesomecuisine.com/wp-content/uploads/2007/11/bhel-puri.jpg" alt=""> 
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
            </div>
            <div class="menu-content">
                <h1>Noodles</h1>
                <p>Noodles are a staple food in many cultures around the world.</p>
                <h1>Gobi Manchurian</h1>
                <p>Cauliflower manchurian is one of the most popular manchurian dishes from Indo chinese cuisine.</p>
                <h1>French Fries</h1>
                <p>french fries, side dish or snack typically made from deep-fried potatoes that have been cut into various shapes, especially thin strips.</p>
                <h1>Pav Bhaji</h1>
                <p>Pav bhaji is a spiced mixture of mashed vegetables in a thick gravy served with bread.</p>
                <h1>Pizza</h1>
                <p>Pizza is an Italian food that was created in Italy (The Naples area).</p>
                <h1>Burger</h1>
                <p>a delicious symphony of flavors that never fails to satisfy.</p>
                <h1>Pani Puri</h1>
                <p> Pani Puri so popular is its ability to deliver a variety of tastes, flavours and textures in one bite.</p>
                <h1>Bhel Puri</h1>
                <p>BHELPURI is a serving of puffed rice in spicy sauces with onion, coriander and other condiments.</p>
            </div>
            <div class="cost">
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>150</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>120</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>175</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>60</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>200</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>150</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>75</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>60</h2>
                </div>
            </div>
        </div>
        <!-- cooldrinks -->
        <div class="citems">
            <div class="bitemsimg">
                <img src="https://www.jocooks.com/wp-content/uploads/2023/05/lemonade-1-28.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.cubesnjuliennes.com/wp-content/uploads/2021/04/Mango-Smoothie-Recipe.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://spicecravings.com/wp-content/uploads/2021/07/Jaljeera-3.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://consumer-voice.org/wp-content/uploads/2023/04/Buttermilk-A-Refreshing-Summer-Drink.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.goodlifeeats.com/wp-content/uploads/2022/05/Tangerine-Raspberry-Iced-Tea-720x720.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://www.starhealth.in/blog/wp-content/uploads/2023/04/cropped-02-13.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://assets.bonappetit.com/photos/60ef61ef7009278ef6bad579/16:9/w_2560%2Cc_limit/Lassi.jpg" alt="">
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div><br>
                <img src="https://ministryofcurry.com/wp-content/uploads/2019/07/watermelon-juice-1-2-850x1275.jpg" alt=""> 
                <div class="order-controls">
                    <button class="add-button" onclick="addItem(this)">Add</button>
                    <div class="counter" style="display: none;">
                        <button class="decrease" onclick="changeCount(this, -1)">-</button>
                        <span>1</span>
                        <button class="increase" onclick="changeCount(this, 1)">+</button>
                    </div>
                </div>
            </div>
            <div class="menu-content">
                <h1>Lemonade</h1>
                <p>A homemade drink using lemon juice, water, and a sweetener such as honey.</p>
                <h1>Mango Smoothie</h1>
                <p>This ultra creamy mango smoothie is the best summertime smoothie.</p>
                <h1>JalJeera</h1>
                <p>Jaljeera is a nutritious drink for keeping the body cool in summers.</p>
                <h1>Butter Milk</h1>
                <p>Pav bhaji is a spiced mixture of mashed vegetables in a thick gravy served with bread.</p>
                <h1>Iced Tea</h1>
                <p>It contains compounds like EGCG,  leading to increased calorie burning.</p>
                <h1>Sugar Cane Juice</h1>
                <p>The second best beverage to cool and hydrate our bodies during the summer is sugarcane juice.</p>
                <h1>Lassi</h1>
                <p> Lassi is a Punjabi yogurt–based beverage with a smoothie-like consistency.</p>
                <h1> Watermelon Juice</h1>
                <p>Watermelon juice is so simple to make with a blender.</p>
            </div>
            <div class="cost">
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>150</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>120</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>175</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>60</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>200</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>150</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
            l        <h2>75</h2>
                </div>
                <div class="icon">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtiLu6733dwl9Z4V6p-UKlxnUpn65VtKpkIQ&s" alt="">
                    <h2>60</h2>
                </div>
            </div>
        </div>
       
            <div class="cart">

              <h1> (<span id="cartCount">0</span>)Item added</h1>
              <a href="cart.jsp"><h2>view cart <i class="fa-sharp-duotone fa-solid fa-arrow-right fa-beat-fade"></i></h2></a>
                
            </div>
        </div>
        <a href="landing.jsp"> <button>Home</button></a>
    </section>
    <script>
      document.addEventListener("DOMContentLoaded", function() {
    const child1 = document.querySelector(".child1");
    const child2 = document.querySelector(".child2");
    const child3 = document.querySelector(".child3");
    const child4 = document.querySelector(".child4");
    const child5 = document.querySelector(".child5");

    const bitems = document.querySelector(".bitems");
    const litems = document.querySelector(".litems");
    const ditems = document.querySelector(".ditems");
    const sitems = document.querySelector(".sitems");
    const citems = document.querySelector(".citems");


    // Initial display settings
    bitems.style.display = "flex";
    litems.style.display = "none";
    ditems.style.display = "none";
    sitems.style.display = "none";
    citems.style.display = "none";

    child1.classList.add("active");

    child1.addEventListener("click", function() {
        bitems.style.display = "flex";
        litems.style.display = "none";
        ditems.style.display = "none";
        sitems.style.display = "none";
        citems.style.display = "none";
        child1.classList.add("active");
        child2.classList.remove("active");
        child3.classList.remove("active");
        child4.classList.remove("active");
        child5.classList.remove("active");
    });

    child2.addEventListener("click", function() {
        bitems.style.display = "none";
        litems.style.display = "flex";
        ditems.style.display = "none";
        sitems.style.display = "none";
        citems.style.display = "none";
        child1.classList.remove("active");
        child2.classList.add("active");
        child3.classList.remove("active");
        child4.classList.remove("active");
        child5.classList.remove("active");
    });

    child3.addEventListener("click", function() {
        bitems.style.display = "none";
        litems.style.display = "none";
        ditems.style.display = "flex";
        sitems.style.display = "none";
        citems.style.display = "none";
        child1.classList.remove("active");
        child2.classList.remove("active");
        child3.classList.add("active");
        child4.classList.remove("active");
        child5.classList.remove("active");
    });
    child4.addEventListener("click", function() {
        bitems.style.display = "none";
        litems.style.display = "none";
        ditems.style.display = "none";
        sitems.style.display = "flex";
        citems.style.display = "none";
        child1.classList.remove("active");
        child2.classList.remove("active");
        child3.classList.remove("active");
        child4.classList.add("active");
        child5.classList.remove("active");
    });
    child5.addEventListener("click", function() {
        bitems.style.display = "none";
        litems.style.display = "none";
        ditems.style.display = "none";
        sitems.style.display = "none";
        citems.style.display = "flex";
        child1.classList.remove("active");
        child2.classList.remove("active");
        child3.classList.remove("active");
        child4.classList.remove("active");
        child5.classList.add("active");
    });
});
let cartCount = 0;

function addItem(button) {
    const orderControls = button.parentElement;
    const counter = orderControls.querySelector(".counter");
    const addButton = orderControls.querySelector(".add-button");

    // Show the counter and hide the "Add" button
    addButton.style.display = "none";
    counter.style.display = "flex";

    // Increment cart count and update the cart display
    updateCartCount(1);
}

function changeCount(button, increment) {
    const counter = button.parentElement;
    const countSpan = counter.querySelector("span");
    let currentCount = parseInt(countSpan.textContent);

    // Update the item count
    currentCount += increment;

    // If the count is less than or equal to 0, revert to the "Add" button
    if (currentCount <= 0) {
        counter.style.display = "none";
        counter.parentElement.querySelector(".add-button").style.display = "block";
        currentCount = 0;
        updateCartCount(-1);
    } else {
        countSpan.textContent = currentCount;
        updateCartCount(increment);
    }
}

function updateCartCount(increment) {
    cartCount += increment;
    document.getElementById("cartCount").textContent = cartCount;
}




    </script>
</body>
</html>