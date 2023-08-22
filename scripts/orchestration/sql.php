<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="Resources/hmbct.png" />
    <link rel="stylesheet" href="Resources/button.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-KyZXEAg3QhqLMpG8r+7nxU2KGn9ElNWvPbPxH+2HJ1D05UdC4f8jUtW1I4zQV80X" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }
        /* ... Add your existing styles here ... */
        .header {
            background-color: #483D8B;
            padding: 15px;
            border-radius: 20px 20px 0 0;
            text-align: center;
            color: white;
        }
        .button {
            background-color: #4CAF50;
            padding: 20px;
            border-radius: 0 0 20px 20px;
            color: white;
            text-align: center;
        }
        .button h1 {
            color: black;
        }
        .button p {
            color: black;
        }
        nav ul {
            list-style: none;
            padding: 0;
        }
        nav ul li {
            margin-bottom: 10px;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
        }
        .social ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
        }
        .social ul li {
            margin-right: 10px;
        }
        .social ul li a {
            text-decoration: none;
            color: #696969;
        }
        .mattress-images {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px auto;
        }
        .mattress-images img {
            width: 30%;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }
        .mattress-images img:hover {
            transform: scale(1.05);
        }
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #483D8B;
            color: white;
            border-radius: 0 0 20px 20px;
        }
    </style>
    <title>Purple Mattr3ss Store - Apply for a Job</title>
</head>
<body>

<div class="header">
    <p style="font-family: 'Impact', sans-serif; font-size: 250%;">We pay less than minimum wage but will provide a pizza party once a year!</p>
</div>

<div class="button">
    <h1>It ain't much but it's honest work.</h1>
    <!-- Navigation Links -->
    <nav>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="apply_for_a_job.html">Back to Apply for a Job</a></li>
            <li><a href="products.html">Pro-ducks</a></li>
            <li><a href="gallery.html">Gallery Gallery</a></li>
            <li><a href="contact.html">Contact Us</a></li>
        </ul>
    </nav>
</div>
<section class="social">
    <ul>
        <li>
            <a href="https://www.facebook.com" target="_blank" class="ga_nav_link">
                <i class="fab fa-facebook"></i> Facebook
            </a>
        </li>
        <li>
            <a href="https://twitter.com" target="_blank" class="ga_nav_link">
                <i class="fab fa-twitter"></i> Twitter
            </a>
        </li>
        <li>
            <a href="https://www.linkedin.com" target="_blank" class="ga_nav_link">
                <i class="fab fa-linkedin"></i> LinkedIn
            </a>
        </li>
        <li>
            <a href="https://www.youtube.com" target="_blank" class="ga_nav_link">
                <i class="fab fa-youtube"></i> YouTube
            </a>
        </li>
        <!-- Add more social media links here using the same structure -->
    </ul>
</section>
</div>
</body>
</html>

<head>
<body>

	 <div style="background-color:#c9c9c9;padding:15px;">
	</div>

	<div align="center">
	<form action="<?php $_SERVER['PHP_SELF']; ?>" method="post" >
		<p>Enter your name below to get your dream job</p>
		Submit whatever you want! Just dont try any SQL exploits : <input type="text" name="firstname">
		<input type="submit" name="submit" value="Submit">
	</form>
	</div>


<?php 
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db = "1ccb8097d0e9ce9f154608be60224c7c";

	// Create connection
	$conn = mysqli_connect($servername,$username,$password,$db);

	// Check connection
	if (!$conn) {
    	die("Connection failed: " . mysqli_connect_error());
	} 
	//echo "Connected successfully";
	
	if(isset($_POST["submit"])){
		$firstname = $_POST["firstname"];
		$sql = "SELECT lastname FROM users WHERE firstname='$firstname'";//String
		$result = mysqli_query($conn,$sql);
		
		if (mysqli_num_rows($result) > 0) {
        // output data of each row
    		while($row = mysqli_fetch_assoc($result)) {
       			echo $row["lastname"];
       			echo "<br>";
    		}
		} else {
    		echo "You will NOT be considered. Get lost fool.";
		}
	}
	
 ?>
 <div class="footer">
    <p>&copy; 2023 Purple Mattr3ss Store. All rights unreserved.</p>
</div>
</html>
