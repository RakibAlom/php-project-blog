<?php 
	include 'library/header.php'; 
	include '../dbcon.php';

	$sql = "SELECT categories.cate_name, post.* FROM post INNER JOIN categories ON categories.cate_id = post.cate_id";
	$run = mysqli_query($con,$sql);
	$count = 1;
?>
			<div class="col-md-8">
				
			<table class="table table-bordered mt-2">
				<tr>
					<th>SL</th>
					<th>Title</th>
					<th>Image</th>
					<th>Action</th>
				</tr>
			<?php while($result = mysqli_fetch_assoc($run)) { ?>
				<tr>
					<td><?php echo $count++; ?></td>
					<td><?php echo $result['cate_name']; ?></td>
					<td><img src="../images/<?php echo $result['post_thumb']; ?>" height="60px" width="80px" alt="" /></td>
					<td>
						<a href="" class="btn btn-sm btn-info">View</a>
						<a href="editpost.php?post_id=<?php echo $result['post_id']; ?>" class="btn btn-sm btn-success">Edit</a>
						<a href="deletepost.php?post_id=<?php echo $result['post_id']; ?>" class="btn btn-sm btn-danger">Delete</a>
					</td>
				</tr>
			<?php } ?>
			</table>
			</div>

<?php include 'library/footer.php'; ?>