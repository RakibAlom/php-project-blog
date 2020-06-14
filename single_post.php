<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>My Blog</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<div class="container">
			<!--Menubar-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
			<a class="navbar-brand" href="#">My Blog</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="index.php" class="nav-link">Home</a></li>
    			<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Category
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#"><i class="fa fa-user"></i> Post1</a>
					</div>
				</li>
				<li class="nav-item"><a href="" class="nav-link">About</a></li>
				<li class="nav-item"><a href="" class="nav-link">Contact</a></li>
			</ul>
		</div>
	</nav>
	<!--End Menubar-->
	<div class="container">
		<div class="row bg-warning">
		<div class="col-md-12">
			<h6 class="float-left ml-5">Date: 12/03/2019</h6>
			<h6 class="float-right mr-5">Time: 09:20 PM</h6>
		</div>
	</div>
	</div>
	<?php 
		include 'dbcon.php';
		$id = $_GET['post_id'];
		$sql = "SELECT * FROM post WHERE post_id = '$id'";
		$run = mysqli_query($con, $sql);
		$result = mysqli_fetch_assoc($run);
	 ?>
	<div class="row">
		<div class="col-md-8">
			<div class="card shadow bg-light">
				<div class="card-body">
					<div class="posts shadow bg-light">
						<h4 class="titlepost"><?php echo $result['post_title']; ?></h4>
						<i>Author : <?php echo $result['post_by']; ?></i>
						<img src="images/<?php echo $result['post_thumb']; ?>" style="width:100%;height:200px;" />
						<p>
							<?php echo $result['post_desc']; ?>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card-body sidebar">
				<h4 class="titlepost">Recent Posts</h4>
				<ul>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
					<li><a href="">This is a post</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>