<?php include 'library/header.php'; ?>
			<div class="col-md-8">
				<div class="row mt-2">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">Add New Admin</div>
							<div class="card-body">
								<form action="add_admin.php" method="POST">
									<div class="form-group">
										<label>Name</label>
										<input type="text" name="admin_name" class="form-control" />
									</div>
									<div class="form-group">
										<label>E-mail</label>
										<input type="email" name="admin_email" class="form-control" required="" />
									</div>
									<div class="form-group">
										<label>Password</label>
										<input type="password" name="admin_pass" class="form-control" required="" />
									</div>
									<div class="form-group">
										<label>Phone</label>
										<input type="text" name="admin_phone" class="form-control" />
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-success" name="submit" value="Add Admin" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

<?php 
	if (isset($_POST['submit'])) {
		# code...
		$admin_name = $_POST['admin_name'];
		$admin_email = $_POST['admin_email'];
		$admin_pass = sha1($_POST['admin_pass']);
		$admin_phone = $_POST['admin_phone'];

		include '../dbcon.php';

		$sql = "INSERT INTO admin(name,email,passowrd,phone) VALUES ('$admin_name','$admin_email','$admin_pass','$admin_phone')";
		$run = mysqli_query($con,$sql);
		if ($run == true) {
			# code...
			?>
			<script>swal("Added","Admin Added!","success");</script>
			<?php
		}else{
			?>
			<script>swal("Failed","Admin Added!","");</script>
			<?php
		}
	}
 ?>

<?php include 'library/footer.php'; ?>