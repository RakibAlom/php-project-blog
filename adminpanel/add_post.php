<?php 
	include 'library/header.php'; 
	include '../dbcon.php';
?>
			<div class="col-md-8">
				<div class="row mt-2">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">Add New POST</div>
							<div class="card-body">
								<form action="" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Title</label>
										<input type="text" name="post_title" class="form-control" />
									</div>
									<div class="form-group">
										<select class="form-control" name="cate_id">
											<?php 
												$sql1 = "SELECT * FROM categories WHERE cate_status = '1'";
												$run = mysqli_query($con,$sql1);
												while($cate = mysqli_fetch_assoc($run)){
											 ?>
											 	<option value="<?php echo $cate['cate_id']; ?>"><?php echo $cate['cate_name']; ?></option>
											<?php } ?>
										</select>
									</div>
									<div class="form-group">
										<label>Thumbnail</label>
										<input type="file" name="thumb" class="form-control-file" />
									</div>
									<div class="form-group">
										<label>News Description</label><br />
										<textarea name="description" id="" cols="30" rows="5"></textarea>
									</div>
									<div class="form-group">
										<input type="hidden" name="post_by" value="<?php echo $_SESSION['name']; ?>">
										<input type="hidden" name="post_date" value="<?php echo date('d-m-Y'); ?>">
										<input type="submit" name="submit" class="btn btn-success" value="Add Post" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

<?php 
	if (isset($_POST['submit'])) {
		$title = $_POST['post_title'];
		$cate_id = $_POST['cate_id'];
		$description = $_POST['description'];
		$post_by = $_POST['post_by'];
		$post_date =  $_POST['post_date'];

		$img = $_FILES['thumb']['name'];
		$tmp = $_FILES['thumb']['tmp_name'];
		$upload_path = '../images/';
		$upload = move_uploaded_file($tmp,$upload_path.$img);

		if ($upload) {
			$sql = "INSERT INTO post (post_title, cate_id, post_thumb, post_desc, post_by, post_date) VALUES ('$title','$cate_id','$img','$description','$post_by','$post_date')";
			$run = mysqli_query($con,$sql);
			if ($run) {
				?>
				<script>swal("Success","Post Upload Success","success");</script>
				<?php
			}else{
				?>
				<script>swal("Failed","Post Upload Failed","error");</script>
				<?php
			}
		}else{
			?>
			<script>swal("Failed","Image Upload Failed","error");</script>
			<?php
		}
	}

	include 'library/footer.php'; 
?>