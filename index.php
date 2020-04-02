<?php 
include 'config.php';
include 'Pagination.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>PHP Pagination</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container pt-4">
		<h1 class="text-center">All Pages</h1>
		<table class="table table-striped table-bordered">
		    <thead>
		      <tr class="table-primary">
		        <th>ID</th>
		        <th>Location</th>
		        <th>Title</th>
		        <th>URL</th>
		        <th>Type</th>
		        <th>Datetime</th>
		      </tr>
		    </thead>
		    <tbody>
		      <?php
		      	$sql = "SELECT * FROM page ORDER BY id DESC";
		      	$pagination = New Pagination($conn, $sql, 8);
		      	$result = $pagination->nextAndPreviousButtons();
		      ?>
		      <?php while($row = $result['query']->fetch_object()) : ?>
		      	<tr>
		      		<td><?php echo $row->id ?></td>
		      		<td><?php echo $row->location ?></td>
		      		<td><?php echo $row->title ?></td>
		      		<td><?php echo $row->url ?></td>
		      		<td><?php echo $row->type ?></td>
		      		<td><?php echo $row->datetime ?></td>
		      	</tr>
		      <?php endwhile; ?>
		    </tbody>
		    <tfoot>
		    	<tr class="table-success">
		    		<th colspan="2">
		    			<a class="btn btn-primary" href="<?php echo $result['previous'] ?>"><i class="fa fa-angle-left"></i> Previous</a>
		    			<a class="btn btn-primary" href="<?php echo $result['next'] ?>">Next <i class="fa fa-angle-right"></i></a>
		    		</th>
		    		<th colspan="4">
		    			Total of <?php echo $result['page'].'/'.$result['totalPages'].' Pages'; ?>
		    		</th>
		    	</tr>
		    </tfoot>
		  </table>
	</div>
</body>
</html>