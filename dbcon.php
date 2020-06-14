<?php 
	$con = mysqli_connect('localhost','root','','blog');
	if (!$con) {
		# code...
		?>
			<script type="text/javascript">
				window.alert('Database Disconnect!');
			</script>
		<?php
	}
 ?>