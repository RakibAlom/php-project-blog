<?php include 'library/header.php'; ?>

			<div class="col-md-8">
				<div class="row mt-2">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">Add New Category</div>
							<div class="card-body">
								<form action="" method="POST">
									<div class="form-group">
										<label>Name Category</label>
										<input type="text" name="cate_name" class="form-control" />
										<input type="hidden" name="cate_status" value="1">
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-success" value="Add Category" name="submit" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		
<?php 
	if (isset($_POST['submit'])) {
		$cate_name = $_POST['cate_name'];
		$cate_status = $_POST['cate_status'];
		include ('../dbcon.php');

		$sql = "INSERT INTO categories (cate_name, cate_status) VALUES ('$cate_name','$cate_status')";
		$run = mysqli_query($con,$sql);
		if ($run == true) {
			?>
				<script>swal("Added","Category Add Successfully","success");</script>
			<?php
		}else{
			?>
				<script>swal("Added","Category Add Successfully","success");</script>
			<?php
		}
	}



	include 'library/footer.php'; 
?>