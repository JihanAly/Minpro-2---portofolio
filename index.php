<?php
include 'koneksi.php';

$profile = mysqli_query($conn, "SELECT * FROM profile");
$p = mysqli_fetch_array($profile);
$exp = mysqli_query($conn, "SELECT * FROM experience");
$cert = mysqli_query($conn, "SELECT * FROM certificates");
?>

<head>
    <meta charset="UTF-8">
    <title>Portfolio JihanAly</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>


<nav>
    <div class="logo">Jihanly</div>
    <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#experience">Experience</a></li>
        <li><a href="#certificates">Certificates</a></li>
    </ul>
</nav>


<section id="home" class="hero">
    <div class="hero-text">
        <h1>Hai, Saya <?php echo $p['nama']; ?></h1> 
        <p><?php echo $p['bio']; ?></p>
    </div>

    <div class="hero-image">
        <img src="foto jihan (3).jpeg" alt="Foto Jihan">
        <div class="circle circle1"></div>
        <div class="circle circle2"></div>
        <div class="circle circle3"></div>
    </div>
</section>

<section id="about" class="about">
    <h2>About Me</h2>
    <p><?php echo $p['about']; ?></p>

    <h3>Skills</h3>
    <?php 
    $skill_list = explode(", ", $p['skill']); 
    foreach($skill_list as $s) { 
    ?>
        <div class="skill">
            <span><?php echo $s; ?></span>
            <div class="progress">
                <div style="width: 75%"></div>
            </div>
        </div>
    <?php } ?>

    <div class="hobbies">
    <h3>Hobbies</h3>

    <div class="hobby-list">

    <?php 
    $hobi_list = explode(", ", $p['hobi']); 
    foreach($hobi_list as $h) { 

        // tentukan icon berdasarkan isi
        if(stripos($h, 'buku') !== false) {
            $icon = "fa-book";
        } elseif(stripos($h, 'film') !== false) {
            $icon = "fa-film";
        } elseif(stripos($h, 'musik') !== false) {
            $icon = "fa-music";
        } else {
            $icon = "fa-star";
        }
    ?>
        <div class="hobby-item">
            <i class="fas <?php echo $icon; ?>"></i>
            <span><?php echo $h; ?></span>
        </div>
    <?php } ?>

        </div>
    </div>
    </section>


<section id="experience" class="experience">
    <h2>Experience</h2>

    <div class="card-container">
        <?php while($e = mysqli_fetch_array($exp)) { ?>
            <div class="card">
                <h4><?php echo $e['pengalaman']; ?></h4>
                <p><?php echo $e['tahun']; ?></p>
            </div>
        <?php } ?>
    </div>
</section>


<section id="certificates" class="certificates">
    <h2>Certificates</h2>

    <div class="card-container">
        <?php while($c = mysqli_fetch_array($cert)) { ?>
            <div class="card">
                <img src="<?php echo $c['gambar']; ?>" width="100%">
                <h4><?php echo $c['sertifikat']; ?></h4>
                <p><?php echo $c['tahun']; ?></p>
            </div>
        <?php } ?>
    </div>
</section>

</body>
</html>