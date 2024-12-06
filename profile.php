<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>

<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Profile | BlueSky Airlines</title>
<link rel="icon" href="img/icon2.PNG">
<link href="styles.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/styles.css">
</head>

<body>
<div id="background_contain">
<div id="menubar-id">
        <div class="menubar-class">
        <a href="index.php"><img id="menu_logo" src="img/logo1.png"/></a>  
            <ul  class="mb">
                <li><a href="index.php">Home</a></li>
                <li><a href="status.php">Flight Status</a></li>
                <li><a href="reservation.php">Reservations</a></li>
                <li><a href="">Contact Us</a></li>
				<li>
				<?php  if (isset($_SESSION['username'])) : ?>
						<a>Welcome <a style="text-transform: uppercase;"  href="profile.php"><strong><?php echo $_SESSION['username']; ?></strong></a></a>
						 <a style="color: white;">|</a><a href="index.php?logout='1'" style="color: black;"> Logout</a>
						 
				<?php endif ?>
				</li>
				
            </ul>
        </div>
        
        <div id="menubar_space">
        
        </div>
        

        
        <div id="login_space">
        
        </div>
       
        <div class="quick_book">
        	<h3 id="booking_header">Profile</h3>
			<a>Name: <strong><?php echo $_SESSION['username']; ?></strong></a><br><br>
			<a>Email: <strong><?php echo $_SESSION['email']; ?></strong></a><br>
			
		</div>
        
        </div>
        
</div>       
<div class="footer">
  <p>CS2 | This website is made by Essya & Hanine</p>
</div>
</body>

</html>