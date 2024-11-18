<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gym Rat</title>

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;700&display=swap"
      rel="stylesheet"
    />

    <script src="https://unpkg.com/feather-icons"></script>

    <link rel="stylesheet" href="{{ asset('assets/CSS/style.css') }}">
  </head>

  <body>
    <!-- start navigation bar -->
    <nav class="navbar">
      <a href="#" class="logo-navbar">Gym<span>Rat</span></a>

      <div class="navbar-nav">
        <a href="#home">Home</a>
        <a href="#about">Tentang Kami</a>
        <a href="#tools">Alat Gym</a>
        <a href="#contact">Contact Us</a>
      </div>

      <div class="navbar-extra">
        <a href="#" id="search"><i data-feather="search"></i></a>
        <a href="#" id="shopping-cart"><i data-feather="shopping-cart"></i></a>
        <a href="#" id="menu"><i data-feather="menu"></i></a>
      </div>
    </nav>
    <!-- end navigation bar -->

    <!-- hero sect start -->
    <section class="hero" id="home">
      <main class="content">
        <h1>Bigger Will <span>Bigger Muscle</span></h1>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit,
          voluptatum?
        </p>
        <a href="#" class="cta">Join Now!</a>
      </main>
    </section>

    <!-- hero sect end -->

    <!-- about sect start -->
    <section id="about" class="about">
        <h2><span>Tentang</span> Kami</h2>

        <div class="row">
            <div class="about-img">
                <img src="img/tentang-kami.jpg" alt="Tentang Kami">
        </div>
        <div class="content">
            <h3>YOU Should Be A GymRat!</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor inventore rem sequi suscipit exercitationem quae.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam ad tenetur nemo at aliquid autem porro voluptatum quaerat odio quisquam?</p>
        </div>
        
    </section>

    <!-- about sect end -->

    <!-- alat gym sect start -->
    <section id="tools" class="tools">
      <h2><span>Alat</span> Gym</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex voluptates nisi cupiditate assumenda unde eum laborum quasi. Suscipit, harum earum.</p>
    
    
      <div class="row">
        <div class="gym-card">
          <img src="img/BARBEL.jpg" alt="Barbel">
          <h3 class="gym-card-title">
            Barbel
          </h3>
        </div>
        <div class="gym-card">
          <img src="img/dumbbell.jpg" alt="dumbbell">
          <h3 class="gym-card-title">
            Dumbbell
          </h3>
        </div>
        <div class="gym-card">
          <img src="img/lat-pulldown-machine.jpg" alt="lat-pulldown-machine">
          <h3 class="gym-card-title">
            Lat pulldown machine
          </h3>
        </div>
        <div class="gym-card">
          <img src="img/pec-dec.jpg" alt="pec-dec">
          <h3 class="gym-card-title">
            Pec dec
          </h3>
        </div>
        <div class="gym-card">
          <img src="img/squat-rack.jpg" alt="squat-rack">
          <h3 class="gym-card-title">
            Squat rack
          </h3>
        </div>
        <div class="gym-card">
          <img src="img/treadmill.jpg" alt="treadmill">
          <h3 class="gym-card-title">
            Treadmill
          </h3>
        </div>
        </div>
      </div>
    </section>
    <!-- alat gym sect end -->

    <!-- contact sect start -->
    <section id="contact" class="contact">
       <h2><span>Contact</span> Us</h2>

       <div class="row">
        <form action="">
          <div class="in-group">
            <i data-feather="user"></i>
            <input type="text" placeholder="nama">
          </div>
          <div class="in-group">
            <i data-feather="mail"></i>
            <input type="text" placeholder="email">
          </div>
          <div class="in-group">
            <i data-feather="phone"></i>
            <input type="text" placeholder="phone number">
          </div>
          <button type="submit" class="btn">Send</button>
        </form>
       </div>
    </section>
    <!-- contact sect end -->

    <!-- footer start -->
    <footer>
      <div class="socials">
        <a href="#"><i data-feather="instagram"></i></a>
        <a href="#"><i data-feather="twitter"></i></a>
        <a href="#"><i data-feather="facebook"></i></a>
      </div>

      <div class="links">
        <a href="#home">Home</a>
        <a href="#about">Tentang Kami</a>
        <a href="#tools">Alat Gym</a>
        <a href="#contact">Contact Us</a>
      </div>

      <div class="credit">
        <p>Created by Jordi Abrar Satria. | &copy; 2024</p>
      </div>
    </footer>
    <!-- footer end -->


    

    <script>
      feather.replace();
    </script>

    <script src="js/script.js"></script>
  </body>
</html>
