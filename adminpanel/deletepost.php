<?php 
	$id = $_GET['post_id'];
	include '../dbcon.php';
	$sql = "DELETE FROM post WHERE post_id = '$id'";
	$run = mysqli_query($con,$sql);

	if ($run) {
		?>
			<script>
				alert('Deleted Successfully!');
				window.open('all_post.php','_self');
			</script>
		<?php
	}else{
		?>
			<script>swal("Failed","Post Deleted Failed","error");</script>
		<?php
	}

 ?>