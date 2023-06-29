<?php
//include auth_session.php file on all user panel pages
include("auth_session.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Dashboard - Admin area</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="form">
        <p>Hey, <?php echo $_SESSION['utilizador']; ?>!</p>
        <p>You are now on admin dashboard page.</p>
        <p><a href="logout.php">Logout</a></p>
    </div>
</body>
</html>
