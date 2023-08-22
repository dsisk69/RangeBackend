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
    <title>Purple Mattr3ss Store - Home</title>
</head>
<body>

<div class="header">
    <p style="font-family: 'Impact', sans-serif; font-size: 250%;">Search for stuff</p>
</div>

<div class="button">
    <h1>Use the search bar to see more products.</h1>
    <p>Just dont run and Bash commands or you will spawn Beetlejuice</p>
    <!-- Navigation Links -->
    <nav>
        <ul>
            <li><a href="index.html">Home Page</a></li>
            <li><a href="products.html">Back to Pro-ducks</a></li>
            <li><a href="gallery.html">Gallery Gallery</a></li>
            <li><a href="apply_for_a_job.html">Apply for a Job</a></li>
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
<div style="background-color:#c9c9c9;padding:15px;">
</div>
  </head>
  <body>
    </div>
    <div style="background-color:#c9c9c9;padding:20px;">
      <h1 align="center">Non-vulnerable search bar >:l </h1>
    <form align="center" action="CommandExec.php" method="$_GET">
      Search for a brand new mattr3ss:
      <input align="center" type="text" name="typeBox" value=""><br>
      <input align="center" type="submit" value="Submit">
    </form>
  </div>
  <div style="background-color:#ecf2d0;padding:20px;border-radius:0px 0px 20px 20px" align="center">
    <?php
    if(isset($_GET["typeBox"])){
      $target =$_GET["typeBox"];
      $substitutions = array(
        '&&'=>'',
        '& ' => '',
        '&& ' => '',
        ';'  => '',
        '|' => '',
        '-'  => '',
        '$'  => '',
        '('  => '',
        ')'  => '',
        '`'  => '',
        '||' => '',
        '/' => '',
        '\\' => '',
      );
      $target = str_replace(array_keys($substitutions),$substitutions,$target);
      echo shell_exec($target);
      if($_GET["typeBox"] == "flag")
        echo "You did again! Impressive.";
    }

    ?>
  </div>
  <div class="footer">
    <p>&copy; 2023 Purple Mattr3ss Store. All rights unreserved.</p>
</div>
  </body>
</html>
