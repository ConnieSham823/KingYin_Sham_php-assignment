<?php
require_once('includes/connect.php');

$query = 'SELECT * FROM employees, jobs WHERE job_id = jobs.id AND employees.id ='.$_GET['id'];

$results = mysqli_query($connect,$query);

$row = mysqli_fetch_assoc($results);

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/main.css" rel="stylesheet">
    <title>Employee Details</title>
</head>

<body>
<header>
    <h1>Emplyee Details</h1>
</header>

<main>
<section class="details">
    <img class="d-img" src='images/<?php echo $row['image']; ?>' alt='image_name'>

    <div class="right-content">
        <div class="em-name">
            <?php echo 
            '<h2> Name: <span>'.$row['fname'].' '.$row['lname'].' </span></h2>'
            ?>
        </div>

        <div class="title"> 
            <p>Title: <?php echo $row['title']; ?> </p>
        </div>

        <div class="back-button"> 
            <a href="index.php">Back </a> 
        </div>
    </div>
</section>


</main>

<footer>
    <p><?php echo date('l jS \of F Y h:i:s A'); ?><br>
    ©2024 Simpson Company. <br> All Rights Reserved. Privacy Policy</p>
</footer>

</body>
</html>