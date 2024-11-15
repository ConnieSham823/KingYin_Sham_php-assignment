<?php
require_once('includes/connect.php');
$query = 'SELECT employees.id AS employees, fname, lname, image, thumb, title FROM jobs, employees WHERE job_id = jobs.id';
$results = mysqli_query($connect, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/main.css" rel="stylesheet">
    <title>Simpson Company</title>
</head>
<body>

<header>
    <h1>Simpson Company</h1>
</header>

<main>
    <section class="employee">
        <h2 class="hidden">Emloyee</h2>
        <?php
        while($row = mysqli_fetch_array($results)) {
            echo '
            <div class="em-con">
                <a href="detail.php?id='.$row['employees'].'">
                    <img class="em-img" src="images/'.$row['thumb'].'" alt="Employee image">
                </a>
                
                <div class="name">
                    <a href="detail.php?id='.$row['employees'].'">'.$row['fname'].' '.$row['lname'].'</a>
                </div>

                <div class="title">
                    <p>'.$row['title'].'</p>
                </div>
            </div>';
        }
        ?>
    </section>
</main>

<footer>
    <p><?php echo date('l jS \of F Y h:i:s A'); ?><br>
    ©2024 Simpson Company. <br> All Rights Reserved. Privacy Policy</p>
</footer>

</body>
</html>
