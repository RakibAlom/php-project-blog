<?php 
	include 'library/header.php'; 
	include '../dbcon.php';
	$count = 1;
	$sql = "SELECT * FROM admin";
	$run = mysqli_query($con,$sql);
?>
			<div class="col-md-8">
				<table class="table table-bordered mt-2">
					<tr>
						<th>SL</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Action</th>
					</tr>
				<?php while($result = mysqli_fetch_assoc($run)){ ?>
					<tr>
						<td><?php echo $count++; ?></td>
						<td><?php echo $result['name']; ?></td>
						<td><?php echo $result['email']; ?></td>
						<td><?php echo $result['phone']; ?></td>
						<td>
							<a href="#" data-toggle="modal" data-target="#<?php echo $result['admin_id']; ?>" class="btn btn-sm btn-info">View</a>
							<a href="#" data-toggle="modal" data-target="#<?php echo $result['name']; ?>" class="btn btn-sm btn-success">Edit</a>
							<form action="" method="POST">
								<input type="hidden" name="adminid" value="<?php echo $result['admin_id']; ?>">
								<button class="btn btn-sm btn-danger" name="submit">Delete</button>
							</form>
						</td>
						<!-- Admin Info Modal -->
					<div class="modal fade" id="<?php echo $result['admin_id']; ?>">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<p class="modal-title">Admin Info</p>
									<button class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-md-7">
											<p class="font-weight-bold">Name</p>
											<p><?php echo $result['name']; ?></p>
											<p class="font-weight-bold">Phone</p>
											<p><?php echo $result['phone']; ?></p>
											<p class="font-weight-bold">Email</p>
											<p><?php echo $result['email']; ?></p>
										</div>
										<div class="col-md-5">
											<img class="img-fluid img-thumbnail" src="../images/ss.png">
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button class="btn btn-primary" data-dismiss="modal">Ok</button>
								</div>
							</div>
						</div>
					</div>

					<!-- Admin Edit Info Modal -->
					<div class="modal fade" id="<?php echo $result['name']; ?>">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<p class="modal-title">Admin Info</p>
									<button class="close" data-dismiss="modal">&times;</button>
								</div>
								<form accept="" method="post">
								<div class="modal-body">
									<div class="row">
										<div class="col-md-7">
											<div class="form-group">
												<label>Name</label>
												<input type="text" class="form-control" name="name" value="<?php echo $result['name']; ?>">
											</div>
											<div class="form-group">
												<label>Email</label>
												<input type="text" class="form-control" name="email" value="<?php echo $result['email']; ?>">
											</div>
											<div class="form-group">
												<label>Phone Number</label>
												<input type="text" class="form-control" name="phone" value="<?php echo $result['phone']; ?>">
											</div>
											<input type="hidden" value="<?php echo $result['admin_id']; ?>" name="admin_id">
										</div>
										<div class="col-md-5">
											<img class="img-fluid img-thumbnail" src="../images/ss.png">
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button class="btn btn-primary" name="update">Update</button>
									<button class="btn btn-danger" data-dismiss="modal">Cancel</button>
								</div>
								</form>
							</div>
						</div>
					</div>
					</tr>
					
				<?php } ?>
				</table>
			</div>

			<?php 
				if (isset($_POST['submit'])) {
					# code...
					$adminid = $_POST['adminid'];
					$sql = "DELETE FROM admin WHERE admin_id = '$adminid'";
					$run = mysqli_query($con,$sql);

					if ($run == true) {
						# code...
						?>
						<script>
							swal("Deleted","delete Successfully!","success");
						</script>
						<?php
					}else{
						?>
						<script>
							swal("Failed","delete failed!","warning");
						</script>
						<?php
					}
				}

				//edit 

				if (isset($_POST['update'])) {
					# code...
					$name = $_POST['name'];
					$email = $_POST['email'];
					$phone = $_POST['phone'];
					$admin_id = $_POST['admin_id'];

					$sql = "UPDATE admin SET name = '$name', email = '$email', phone = '$phone' WHERE admin_id = '$admin_id'";
					$update = mysqli_query($con,$sql);
					if ($update == true) {
						# code...
						?>
						<script>
							swal("Update","Update Successfully!","success");
							window.open('all_admin.php','_self');
						</script>
						<?php
					}else{
						?>
						<script>
							swal("Failed","Update Failed!","Warning");
							window.open('all_admin.php','_self');
						</script>
						<?php
					}
				}

			 ?>

<?php include 'library/footer.php'; ?>