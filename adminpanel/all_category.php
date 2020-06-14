<?php 
	include 'library/header.php'; 
	include ('../dbcon.php');

	$count = 1;
	$sql = "SELECT * FROM categories";
	$run = mysqli_query($con, $sql);
?>
			<div class="col-md-8">
				
			<table class="table table-bordered mt-2">
				<tr>
					<th>SL</th>
					<th>Category</th>
					<th>Status</th>
					<th>Action</th>
				</tr>
				<?php while($result = mysqli_fetch_assoc($run)) { ?>
				<tr>
					<td><?php echo $count++;  ?></td>
					<td><?php echo $result['cate_name']; ?></td>
					<td>
						<?php 
							if ($result['cate_status'] == 1) {
								?>
									<span class="badge badge-success">Active</span>
								<?php
							}else{
								?>
									<span class="badge badge-danger">Deactive</span>
								<?php
							}
						?>
					</td>
					<td>
					<?php 
						if ($result['cate_status'] == 1) {
					 ?>
						<form method="POST" action="">
							<input type="hidden" value="<?php echo $result['cate_id']; ?>" name="cate_id">
							<button class="btn btn-sm btn-danger" name="deactive">Deactive</button>
						</form>
					<?php }else{ ?>
						<form method="POST" action="">
							<input type="hidden" value="<?php echo $result['cate_id']; ?>" name="cate_id">
							<button class="btn btn-sm btn-success" name="active">Active</button>
						</form>
					<?php } ?>
					</td>
				</tr>
				<?php }   ?>
			</table>
			</div>

<?php 
	if (isset($_POST['deactive'])) {
		$id = $_POST['cate_id'];
		$sql = "UPDATE categories SET cate_status = '0' WHERE cate_id = '$id'";
		$run = mysqli_query($con,$sql);
		header('location:all_category.php');
	}
	if (isset($_POST['active'])) {
		$id = $_POST['cate_id'];
		$sql = "UPDATE categories SET cate_status = '1' WHERE cate_id = '$id'";
		$run = mysqli_query($con,$sql);
		header('location:all_category.php');
	}
	include 'library/footer.php'; 
?>