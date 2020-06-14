<?php 
	include 'library/header.php'; 
	include '../dbcon.php';
?>
			<div class="col-md-8">
<?php 
	$id = $_GET['post_id'];
	$sql = "SELECT categories.cate_name, post.* FROM post INNER JOIN categories ON categories.cate_id = post.cate_id WHERE post_id = '$id'";
	$run = mysqli_query($con,$sql);
	$result = mysqli_fetch_assoc($run);
 ?>
				<div class="row mt-2">
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">Edit POST</div>
							<div class="card-body">
								<form action="" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<label>Title</label>
										<input type="text" name="post_title" class="form-control" value="<?php echo $result['post_title']; ?>" />
									</div>
									<div class="form-group">
										<select class="form-control" name="cate_id">
											<?php 
												$sql1 = "SELECT * FROM categories WHERE cate_status = '1'";
												$run = mysqli_query($con,$sql1);
												while($cate = mysqli_fetch_assoc($run)){
											 ?>
											 	<option <?php if($cate['cate_id'] == $result['cate_id']){echo "selected";} ?> value="<?php echo $cate['cate_id']; ?>"><?php echo $cate['cate_name']; ?></option>
											<?php } ?>
										</select>
									</div>
									<div class="form-group">
										<label>Thumbnail</label><br>
										<img id="thumb" src="../images/<?php echo $result['post_thumb']; ?>" height="80px" width="80px">
										<input type="hidden" name="oldphoto" value="<?php echo $result['post_thumb'] ?>">
										<input type="file" class="form-control-file" onchange="photo(this);" name="newthumb"  accept="image/*" />
									</div>
									<div class="form-group">
										<label>News Description</label><br />
										<textarea name="description" id="" cols="30" rows="5"><?php echo $result['post_desc']; ?></textarea>
									</div>
									<div class="form-group">
										<input type="hidden" name="post_by" value="<?php echo $_SESSION['name']; ?>">
										<input type="hidden" name="post_date" value="<?php echo date('d-m-Y'); ?>">
										<input type="submit" name="update" class="btn btn-success" value="Update Post" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script>
				function photo(input) {
			          if (input.files && input.files[0]) {
			              var reader = new FileReader();
			              reader.onload = function (e) {
			                  $('#thumb')
			                  .attr('src', e.target.result)
							  .attr("class","img-thumbnail mb-2")
			              };
			              reader.readAsDataURL(input.files[0]);
			          }
       		}
			</script>

<?php 
	if (isset($_POST['update'])) {
		$post_title = $_POST['post_title'];
		$cate_id = $_POST['cate_id'];
		$post_desc = $_POST['description'];

		$old_img = $_POST['post_title'];
		$new_img = $_FILES['newthumb']['name'];
		$tmp = $_FILES['newthumb']['tmp_name'];

		if ($new_img) {
			unlink($old_img);
			$upload_path = '../images/';
			$full_path = $upload_path.$new_img;
			$upload_name = 'images/'.$new_img;

			move_uploaded_file($tmp, $full_path);
			$update = "UPDATE post SET post_title = '$post_title', cate_id = '$cate_id', post_desc = '$post_desc', post_thumb = '$new_img' WHERE post_id = '$id'";
			$run = mysqli_query($con,$update);
			if ($run) {
			 	?>
			 		<script>
			 			swal("Updated","Update Successfully","success");
			 		</script>
			 	<?php
			 } else{
			 	?>
			 		<script>
			 			swal("Failed","Update Failed","error");
			 		</script>
			 	<?php
			 }
		}else{
			?>
			 	<script>
			 		swal("Failed","Image Upload Failed!","error");
			 	</script>
			<?php
		}


	}


	include 'library/footer.php'; 
?>