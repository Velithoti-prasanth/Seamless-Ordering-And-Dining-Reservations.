<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PROJECT1</title>
    <link rel="stylesheet" href="landing.css">
    <link rel="stylesheet" href="ourteam.css">
    <link rel="stylesheet" href="contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <style>
    *{
    margin: 0%;
    padding: 0%;
  
}

project {
    background-color: #f4f4f4;
}
.landing-main {
    width: 100%;
    height: 100vh;
    background-image: url('https://play-lh.googleusercontent.com/r2-0ikk5FbUwAYPELy_GsQ1Vkn-A2W9E0-k6X4zUZhgONyqIhCQFsIAZSpsBDluvMxlG=w3840-h2160-rw');
    background-size: cover;
    background-position: center;
  
}

.subcontainer {
    position: relative;
    z-index: 1; 
    color: white; 
    height: 100%;
}

.navbar {
    width: 1200px;
    height: 75px;
    filter: brightness(1);
    margin: auto;
    display: flex;
    animation: slideIn 1s ease-out; 
}

.icon {
    width: 200px;
    float: left;
    height: 70px;
}

.icon img{ 
    float: left;
    margin-top: -15px;
    height: 130px;
    margin-left: 30px;
    animation: fadeIn 1s ease-in; 
}

.logo {
    color: #ff7200;
    font-size: 50px;
    font-family: sans-serif;
    animation: fadeIn 2s ease-in; 
    display: flex;
}

.logo{
    margin-top:15px;
}
.menu {
    width: 400px;
    float: left;
    height: 70px;
    margin-left: 250px;
}

ul {
    float: left;
    display: flex;
    justify-content: center;
    align-items: center;
}

ul li {
    list-style: none;
    margin-left: 70px;
    margin-top: 27px;
    font-size: 14px;
    animation: bounsIn 1s ease-in-out; 
}

ul li a {
    text-decoration: none;
    color: white;
    font-family: arial;
    font-weight: bold;
}

ul li a:hover {
    color: orange;
   text-decoration: underline;
   text-decoration-color: orange;

    transition: color 0.3s ease; 
}

.content {
    width: 600px;
    height: auto;
    margin-top: 8%;
    color: white;
    position: relative;
    transition: 2s ease; 
}

.content .par {
    padding-left: 11%;
    padding-bottom: 25px;
    font-family: arial;
    letter-spacing: 1.2px;
    line-height: 30px;
    margin-top: 40px;
}

.content h1 {
    font-family:COURIER NEW;
    font-weight: 500;
    font-size: 50px;
    padding: auto;
    margin: 5%;
    color: white;
    margin-left: 10%;
    letter-spacing: 2px;
    transition: 0.5s ease-out;
}
.main-btn{
   margin-left: 12%;
   margin-top: 5%;
}
.main-btn button{
    border: 1px solid blue;
    background-color: rgb(255, 149, 19);
    color: white;
    font-family:system-ui;
    font-size: 16px;
    margin-right: 50px;
    margin-bottom: 3%;
    width: 30%;
   height: 35px;
   border-radius: 20px;
}
.main-btn button:hover{
    background-color: orange;
    color: black;
    cursor: pointer;
    box-shadow: 0px 0px 5px orange,
    0px 0px 15px rgb(255, 12, 125),
    0px 0px 25px rgb(255, 17, 140),
    0px 0px 35px orange;
}

.row {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

.scontainer h1 {
    
   
    margin-top: 17%;
    font-size: 2.5em;
    animation: bottomToTop 1s ease-in-out;
    color: #ff6600;
   margin-left: 0px;
    margin-bottom: 5%;
    font-style: italic;
    
}
.scontainer{ 
    margin-top: -10%;
}
.schild1, .schild2 {
    width: 200px;
    height: 200px;
    box-shadow: 1px 1px 10px black;
    border-radius: 20px;
    padding: 1%;
    margin: 5%;
}

.schild1:hover, .schild2:hover {
    background-color: orange;
    transform: scale(1.1); 
}

.schild1 h2, .schild2 h2 {
    font-size: 1em;
    margin-top: 15%;
    margin-left: 5%;
    color: black;
}

.schild1 p, .schild2 p {
    font-size: 0.8em;
    margin-left: 5%;
    color: black;
}

.sparent img {
    width: 40%;
    border-radius: 90%;
    margin-left: 20%;
    margin-top: 12%;
}

#about::before {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    content: '';
    position: absolute;
    width: 100%;
    height: 90%;
    z-index: -1;
    border-top-left-radius:  40px;
    border-top-right-radius:  40px;
}

.container {
     max-width: 1200px;
    margin-top: 80px;
    margin-left: 80px;
    padding: 80px 20px;
    position: relative;
    z-index: 1;
    display: flex;
    justify-content: space-between;
    
}
.aboutpng img{
width: 550px;
margin-top: -10%;

}

.about-content {
    padding-right: 10px;
    margin-top: -10%;
}

.about-content h2 {
    font-size: 2.5rem;
    color: #ff6600;
    margin-bottom: 5%;
    margin-left: 2.5%;
   
    font-style: italic;
    animation: bottomToTop 1s ease-in-out;
}

.about-content p {
    font-size: 0.9rem;
    color:black;
    letter-spacing: 1.3px;
    margin-bottom: -7%;
    margin-left: 5%;
    margin-top: 10%;
}

.about-content span {
    color: black;
    font-weight: bold;
}


@keyframes bottomToTop {
    0% {
        transform: translateY(100px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

.bottomToTop {
    animation: bottomToTop 1s ease-in-out forwards;
}

.smooth-animation {
    opacity: 0; 
}

/contact/
#contact-us {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: #333;
    margin-top: -10%;
    height: 400px;
    
  
}
.contact-section {
    padding: 50px 0;

   
}
.contact-flex{
    display: flex;
}
.contact-section h2 {
    text-align: center;
    margin-bottom:80px;
    margin-top: -90px;
    font-size: 2.5rem;
    color: #ff6600;
    font-weight: bold;
    position: relative;
    animation: fadeInDown 1s ease-in-out;
}

.contact-form {
   
    padding: 20px;
  margin-right: 190px;
  margin-left: 60px;
    background: black;
     width:550px;
     max-width: 600px;
    border-radius: 10px;
    border: 1px solid #ff6600;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    animation: slideUp 1s ease-in-out;
}
.contact-form input, .contact-form textarea {
   width: 90%;
    padding: 12px;
    background-color:white;
    
    margin: 10px 0;
    border: 1.5px solid #fff;
    border-radius: 5px;
    transition: border-color 0.3s;
}
.contact-form input:focus, .contact-form textarea:focus {
    border-color: #ff6600;
    outline: none;
}
.contact-form button {
    background-color: #ff6600;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}
.contact-form button:hover {
    background-color: #e65c00;
}


.map, .contact-details {
  
    margin-top: 20px;
   
    animation: slideUp 1.5s ease-in-out;
}
.map iframe {
    height: 300px;
    width: 300px; 
    border: none;
    box-shadow: 0 0 10px rgba(255, 102, 0, 0.5);
    border-radius: 10px;
}
.contact-details p {
    text-align: center;
    background-color: orange ;
     height: 30px;
     font-size:20px;
     color: #333;
}
@keyframes slideUp {
    0% {
        transform: translateY(50px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
@keyframes fadeInDown {
    0% {
        transform: translateY(-30px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

.footer {
background-color: #1a1a4f;
padding-top: 20px;
padding-bottom: 10px;
height: 45px;
justify-content: space-around;

margin-top: 5%;
position: absolute;
right: 0;
left: 0;

}
.footer p1{
    color:whitesmoke;
    margin-left: 15%;
    letter-spacing: 1px;

}
.footer p2{
    color:whitesmoke;
    margin-left:40%;
}


.contact-btn{
    display: flex;
    justify-content: space-between;
}
 #contact-us .social {

background-color: #e65c00;

margin-right: 26px;
margin-left: 3px;
border-radius: 15px;
}

#contact-us .social a img {
width: 23px;
margin-left: 10px;
margin-right: 8px;
margin-top: 9px;
height: 23px;
}

.twitter img{
    width: 17px;
margin-left: 5px;
margin-right: 8px;
margin-top: 9px;
height: 23px;
border-radius: 15px;
}


/* ourteam */

/* CSS */
#ourteam {
    margin-bottom: 10%;
    margin-top: -15%;
    padding: 14%;
    max-width: 100vh;
    animation: bottomToTop 1s ease-in-out;
}

main h1 {
    margin: 0 auto 5%;
    color: #ff6600;
    margin-left: 50%;
    margin-bottom: 5%;
    text-align: center;
    font-size: 2.5em;
    font-style: italic;
    animation: bottomToTop 1s ease-in-out;
}

main::before {
    background-color: white;
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 125%;
    background-size: cover;
    background-position: bottom;
    z-index: -1;
}

.flex {
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    justify-content: center;
}

.ourteampng img {
    width: 360px;
    margin-left: 80%;
    margin-top: 10%;
    animation: bottomToTop 1s ease-in-out;
}

.main-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin-left: 350px;
    margin-top: -5;
    animation: bottomToTop 1s ease-in-out;
}

.card-container {
    text-align: center;
    margin-top: 10%;
    margin-left: 50px;
    background-color: transparent;
    animation: bottomToTop 1s ease-in-out;
}

.card-container img {
    width: 170px;
    height: 140px;
    border-radius: 10%;
    box-shadow: 0.5px 0.5px 6px rgb(28, 28, 28);
    margin-bottom: 10px;
}

.card-container img:hover {
  
    box-shadow: 0 0 8px black;
}

.card-container h2 {
    font-size: 14px;
    text-transform: capitalize;
    color: black;
    margin: 0;
}

.card-container p {
    color: orange;
    margin: 5px 0 0;
}

@keyframes bottomToTop {
    0% {
        transform: translateY(200px);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

.bottomToTop {
    animation: bottomToTop 1s ease-in-out forwards;
}

.smooth-animation {
    opacity: 0; 
}


/* contect */


#contactus{
  
    margin-top: 10%;
}

@keyframes fadeInBackground {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}



@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-100%);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.contact-flex{
    display: flex;
}
.contact-sub {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    animation: fadeInUp 0.5s ease-in-out;
}
h1{
    margin: 0 auto 5%;
    color: #ff6600;
    margin-left: 50%;
    margin-bottom: 5%;
    text-align: center;
    font-size: 2.5em;
    font-style: italic;
    animation: bottomToTop 1s ease-in-out;
}
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(-100%);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

#contactus .contact-content {
    background-color: white;
    border: 1px crimson #ccc;
    border-radius: 5px;
    padding: 20px;
    padding-top: 2px;
    margin: 10px;
    width: 230px;
    height: 180px;
    box-shadow: 0 0 4px orangered;
    transition: all 0.3s ease-in-out;
}

#contactus .content:hover {
    box-shadow: 0px 0px 20px orange;

}

#contactus .content h3 {
    color: orange;
    font-size: 35px;
    margin-bottom: 10px;
    animation: fadeIn 1.5s ease-in-out;
}

.call p, .mail p {
    font-size: 18px;
}

.mail, .call {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

i {
    margin-right: 10px;
    width: 20px;
}

#contactus .btn {
    margin-top: 5%;
    animation: fadeIn 1.5s ease-in-out;
}
#contactus button {
    margin-left: 45%;
    background-color: rgb(255, 149, 19);
    color: #fff;
    padding: 10px 45px;
    border: 1px solid transparent;
    border-radius: 8px;
    font-weight: 600;
    letter-spacing: 0.5px;
    text-transform: uppercase;
    margin-top: 10px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
}
#contactus button:hover {
    background-color: orange;
    color: black;
    box-shadow: 0px 0px 5px orange, 0px 0px 15px rgb(255, 12, 125), 0px 0px 25px rgb(255, 17, 140), 0px 0px 35px orange;
    transform: scale(1.1);
}
    </style>
    
    
</head>
<body>
  <!--https://themewagon.github.io/restoran/about.html-->
  <div class="project">
    <!--landing-->
    <div class="landing-main" id="home">
        <div class="subcontainer">
            <div class="navbar">
                <div class="icon smooth-animation">
                
                <img src="images/projectimg/logo.png" alt="">
                </div>
                <div class="menu">
                <ul class="smooth-animation">
                    <li><a href="landing.jsp" class="active">HOME</a></li>
                    <li><a href="#about">ABOUT</a></li>
                    <li><a href="#services">SERVICES</a></li>
                    <li><a href="menu.jsp">MENU</a></li>
                    <li><a href="#ourteam">CONTACTUS</a></li>
                    <li><a href="dashboard.jsp"><i class="fa-solid fa-user fa-2xl"></i></a></li>
                    
                </ul>
                </div>
            </div>
            <div class="content smooth-animation" >
                <h1> Enjoy Your <span>Food </span>  Without Leaving The Home</h1>
                <p class="par">Craving your favorite dishes? We’ve got you covered. Explore our menu, place your order, and let the flavors come to you.</p>
              
              <div class="main-btn"> 
               
                <a href="menu.jsp"><button >Order Now</button></a>
                <a href="book.jsp"><button>Reserve a table</button></a></div>
            </div>
        </div>
    </div>
   <!-- Service Section -->
<section id="services" class="smooth-animation">
    <div class="scontainer">
        <h1>_Our Services_</h1>
    </div>
    <div class="sparent ">
        <div class="row ">
            <div class="schild1">
                <img src="images/projectimg/chef.jpg" alt="Chef" >
                <h2 >MASTER CHEFS</h2>
                <p >Master Chefs are the ultimate leaders in the kitchen, combining their skills and abilities to deliver yummy dining experiences.</p>
            </div>
            <div class="schild1 ">
                <img src="images/projectimg/takeaway.jpg" alt="Takeaway" >
                <h2 >TAKE AWAY</h2> 
                <p >Conveniently take away favorite dishes to go, perfect for enjoying our cuisine at home or on the move.</p>
            </div>
            <div class="schild1 ">
                <img src="images/projectimg/quality.png" alt="Quality" >
                <h2 >QUALITY</h2>
                <p >Experience culinary excellence with our diverse menu, crafted from the freshest ingredients.</p>
            </div>
        </div>
        <div class="row ">
            <div class="schild2 ">
                <img src="images/projectimg/customercare.png" alt="Customer Support" >
                <h2 >Customer Support</h2>
                <p >Access 24/7 customer support for any issues or inquiries, ensuring a smooth and hassle-free experience.</p>
            </div>
            <div class="schild2 ">
                <img src="images/projectimg/delivery.png" alt="Delivery" >
                <h2 >Fast Delivery</h2>
                <p>Enjoy lightning-fast delivery.</p>
            </div>
        </div>
    </div>
</section>

    
        <!--About-->
        <section id="about" class="smooth-animation">
            <div class="container smooth-animation">
                <div class="about-content smooth-animation">
                    <h2>About Us</h2> 
                    <p><span>Welcome to UHome</span><br><br>At [Restaurant Name], we believe that great food brings people together. Nestled in the heart of [City], our restaurant offers a warm and inviting atmosphere where you can enjoy a delightful culinary experience. Our team of passionate chefs and friendly staff are dedicated to providing you with exceptional service and unforgettable meals.</p>
                    <p class="wcu">
                        <span>Why Choose Us?</span><br>
                        <br>
                        We use only the freshest, ensuring that every bite is bursting with flavor and nutrition. <br>
                        Our chefs bring years of experience and creativity to the kitchen, crafting unique and delicious dishes that cater to all tastes.
                        Our restaurant is designed to provide a comfortable and welcoming environment, perfect for any occasion, celebrations.
                        We prioritize your satisfaction and exceed your expectations with every visit. Your feedback is invaluable to us, and we continuously work to improve our offerings.
                    </p>
                </div>
                <div class="aboutpng smooth-animation">
                    <img src="images/projectimg/aboutpng.png" alt="About Us">
                </div>
            </div>
        </section>
        

<!--ourteam-->
<main id="ourteam" class="smooth-animation">
    <h1>_Our Team_</h1>
    <div class="flex smooth-animation">
        <div class="ourteampng smooth-animation">
            <img src="images/projectimg/ourteampng.png" alt="image">
        </div>
        <div class="main-container smooth-animation">
            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Founder">
                <h2>P.MALLISWARI</h2>
                <p>Founder</p>
            </div>
            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Co-Founder">
                <h2>SK.BASHEERUNNISA</h2>
                <p>Co-founder</p>
            </div>
            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Co-Founder">
                <h2>V.Prasanth</h2>
                <p>Manager</p>
            </div>

            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Manager">
                <h2>T.Manoj Kumar</h2>
                <p>Financial Officer</p>
            </div>
            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Sous Chef">
                <h2>T.Lakhmi Prasad</h2>
                <p>Financial Officer</p>
            </div>
            <div class="card-container smooth-animation">
                <img src="https://www.shutterstock.com/image-photo/mature-professional-chef-man-isolated-600nw-158192192.jpg" alt="Co-Founder">
                <h2>T.Rajesh</h2>
                <p>Support Agent</p>
            </div>
        </div>
    </div>
</main>

   <!--contact-->
   <div id="contact-us" class="smooth-animation">
    <div class="contact-section">
        <h2>_Contact Us_</h2>


       <div class="contact-flex">
        <div class="contact-form">
            <form action="ContactttServlet" method="post">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                <div class="contact-btn">
                    <button type="submit">Send Message</button>
                    <div class="social">
                        <a href="https://www.instagram.com/prashuuu._?igsh=bHVvZmY3MTlhZ2ww" target="_blank"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram"></a>
                        <a href="https://x.com/prasad251021?t=4oB9JykmkRfVn0nUxVRCfg&s=08" target="_blank" class="twitter"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwjr0ta4KV6dCZNPlrGLvt5S6YV52T-DPV2w&s" alt="twitter"></a>
                    </div>
                </div>
            </form>
            
         </div>
       <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3844.466923384545!2d80.0440457749429!3d15.513080185088734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a4b018a3158007f%3A0x877787711c58831e!2sIsmail%20Biryani%20%26%20Shawarma!5e0!3m2!1sen!2sin!4v1723025888773!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

       </div>
       </div>

     <footer>
       <div class="footer" style="display: block;">
        <div>
       <p1>QIS college of engineering and technology, Ongole, AP,India| Phone:9346178518| Email:talarimanoj2005@gamil.com</p></div>
       <div style="padding-top: 10px;">
       <p2> Copyright <i class="fa-regular fa-copyright" style="margin-right: -3px;"></i>2024 Food Flex</p></div>
        </div>
      
    </div>
    </div>
    </div>
    </footer>
<script >    
    document.addEventListener('DOMContentLoaded', function() {
    const aboutSection = document.getElementById('about');
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                aboutSection.classList.add('fade-in-background');
                aboutSection.querySelector('.container').classList.add('slide-in-container');
                aboutSection.querySelector('h2').classList.add('bounce-in-heading');
                aboutSection.querySelector('p').classList.add('fade-in-up-paragraph');
                aboutSection.querySelector('span').classList.add('pulse-span');
            } else {
                aboutSection.classList.remove('fade-in-background');
                aboutSection.querySelector('.container').classList.remove('slide-in-container');
                aboutSection.querySelector('h2').classList.remove('bounce-in-heading');
                aboutSection.querySelector('p').classList.remove('fade-in-up-paragraph');
                aboutSection.querySelector('span').classList.remove('pulse-span');
            }
        });
    }, { threshold: 0.5 });

    observer.observe(aboutSection);
});

document.addEventListener('DOMContentLoaded', function() {
    const servicesSection = document.getElementById('services');
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                servicesSection.querySelector('h1').classList.add('zoom-in');
                servicesSection.querySelectorAll('.schild1, .schild2').forEach((child, index) => {
                    child.classList.add('slide-in');
                });
                servicesSection.querySelectorAll('h2').forEach((heading) => {
                    heading.classList.add('bounce-in');
                });
                servicesSection.querySelectorAll('p').forEach((paragraph) => {
                    paragraph.classList.add('fade-in-up');
                });
                servicesSection.querySelectorAll('img').forEach((img) => {
                    img.classList.add('rotate');
                });
            } else {
                servicesSection.querySelector('h1').classList.remove('zoom-in');
                servicesSection.querySelectorAll('.schild1, .schild2').forEach((child) => {
                    child.classList.remove('slide-in');
                });
                servicesSection.querySelectorAll('h2').forEach((heading) => {
                    heading.classList.remove('bounce-in');
                });
                servicesSection.querySelectorAll('p').forEach((paragraph) => {
                    paragraph.classList.remove('fade-in-up');
                });
                servicesSection.querySelectorAll('img').forEach((img) => {
                    img.classList.remove('rotate');
                });
            }
        });
    }, { threshold: 0.5 });
    observer.observe(servicesSection);
});

//ourteam
document.addEventListener('DOMContentLoaded', () => {
    const elements = document.querySelectorAll('.smooth-animation');
  function checkVisibility() {
        elements.forEach(el => {
            const rect = el.getBoundingClientRect();
            if (rect.top < window.innerHeight && rect.bottom >= 0) {
                el.classList.add('bottomToTop');
                el.style.opacity = '1'; // Ensure element becomes visible
            } else {
                el.classList.remove('bottomToTop');
                el.style.opacity = '0'; // Reset to be invisible for the next scroll
            }
        });
    }
    checkVisibility();
    window.addEventListener('scroll', checkVisibility);
});
document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault();  // Prevents the default form submission
        // Perform any additional validation here if needed
        window.location.href = "contactsuccess.html";  // Redirects to the contactsuccess page
    });
    </script>
</body>
</html>