<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{
header('location:index.php');
}
else{

if(isset($_POST['submit']))
  {
$category=$_POST['category'];
$subcat=$_POST['subcategory'];
$productname=$_POST['productName'];
$productcompany=$_POST['productCompany'];
$productprice=$_POST['productprice'];
$productpricebd=$_POST['productpricebd'];
$productdescription=$_POST['productDescription'];
$productscharge=$_POST['productShippingcharge'];
$productavailability=$_POST['productAvailability'];
$id=intval($_GET['id']);

$sql="update  products set category=:category,subcategory=:subcat,productName=:productname,productCompany=:productcompany,productPrice=:productprice,productDescription=:productdescription,shippingCharge=:productscharge,productAvailability=:productavailability,productPriceBeforeDiscount=:productpricebd where id=:id ";
$query = $dbh->prepare($sql);
$query->bindParam(':category',$category,PDO::PARAM_STR);
$query->bindParam(':subcat',$subcat,PDO::PARAM_STR);
$query->bindParam(':productname',$productname,PDO::PARAM_STR);
$query->bindParam(':productcompany',$productcompany,PDO::PARAM_STR);
$query->bindParam(':productprice',$productprice,PDO::PARAM_STR);
$query->bindParam(':productpricebd',$productpricebd,PDO::PARAM_STR);
$query->bindParam(':productdescription',$productdescription,PDO::PARAM_STR);
$query->bindParam(':productscharge',$productscharge,PDO::PARAM_STR);
$query->bindParam(':productavailability',$productavailability,PDO::PARAM_STR);


$query->bindParam(':id',$id,PDO::PARAM_STR);
$query->execute();

$msg="Data updated successfully";


}


	?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">

	<title>Tutsy Delights | Edit Cake Info</title>

	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
	<style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
 	
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						<h2 class="page-title">Edit Cake</h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Basic Info</div>
									<div class="panel-body">
<?php if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
<?php
$id=intval($_GET['id']);
$sql ="select products.*,category.categoryName as catname,category.id as cid,subcategory.subcategory as subcatname,subcategory.id as subcatid from products join category on category.id=products.category join subcategory on subcategory.id=products.subCategory where products.id='$id'";
$query = $dbh -> prepare($sql);
$query-> bindParam(':id', $id, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>

<form method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
<label class="col-sm-2 control-label">productName<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="productName" class="form-control" value="<?php echo htmlentities($result->productName)?>" required>
</div>
<label class="col-sm-2 control-label">Select Category<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="category" required>
<option value="<?php echo htmlentities($result->cid);?>"><?php echo htmlentities($categoryName=$result->catname); ?> </option>
<?php $ret=" select * from category";
$query= $dbh -> prepare($ret);
//$query->bindParam(':id',$id, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($results as $results)
{
if($results->catname==$categoryName)
{
continue;
} else{
?>
<option value="<?php echo htmlentities($results->id);?>"><?php echo htmlentities($results->categoryName);?></option>
<?php }}} ?>

</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Select SubCategory<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="subcategory" required>
<option value="<?php echo htmlentities($result->subcatid);?>"><?php echo htmlentities($result->subcatname);?></option>
<option value="<?php echo htmlentities($result->cid);?>"><?php echo htmlentities($categoryName=$result->catname); ?> </option>
<?php $ret=" select * from subcategory ";
$query= $dbh -> prepare($ret);
//$query->bindParam(':id',$id, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() > 0)
{
foreach($results as $results)
{
if($results->catname==$categoryName)
{
continue;
} else{
?>
<option value="<?php echo htmlentities($results->id);?>"><?php echo htmlentities($results->subcategory);?></option>
<?php }}} ?>
</select>

</div>
<label class="col-sm-2 control-label">Cake Availability<span style="color:red">*</span></label>
<div class="col-sm-4">
<select class="selectpicker" name="productAvailability" required>
<option value="<?php echo htmlentities($result->productAvailability);?>"><?php echo htmlentities($result->productAvailability);?></option>
<option value="In Stock">In Stock</option>
<option value="Out of Stock">Out of Stock</option>
</select>
</div>
</div>
<div class="hr-dashed"></div>
<div class="form-group">
<label class="col-sm-2 control-label">Cake Description<span style="color:red">*</span></label>
<div class="col-sm-10">
<textarea class="form-control" name="productDescription" rows="3" required><?php echo htmlentities($result->productDescription);?></textarea>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Price before Discount<span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="productpricebd" class="form-control" value="<?php echo htmlentities($result->productPriceBeforeDiscount);?>" required>
</div>
<label class="col-sm-2 control-label">Product Price <span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="productprice" class="form-control" value="<?php echo htmlentities($result->productPrice);?>" required>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Shipping Charge <span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="productShippingcharge" class="form-control" value="<?php echo htmlentities($result->shippingCharge);?>" required>

</div>

<label class="col-sm-2 control-label">Cake Supplier <span style="color:red">*</span></label>
<div class="col-sm-4">
<input type="text" name="productCompany" class="form-control" value="<?php echo htmlentities($result->productCompany);?>" required>
</div>
</div>
<div class="hr-dashed"></div>
<div class="form-group">
<div class="col-sm-12">
<h4><b>CakeImages</b></h4>
</div>
</div>


<div class="form-group">
<div class="col-sm-4">
Image 1 <img src="productimages/<?php echo htmlentities($result->id);?>/<?php echo htmlentities($result->productImage1);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage1.php?id=<?php echo htmlentities($result->id)?>">Change Image 1</a>
</div>
<div class="col-sm-4">
Image 2<img src="productimages/<?php echo htmlentities($result->id);?>/<?php echo htmlentities($result->productImage2);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage2.php?id=<?php echo htmlentities($result->id)?>">Change Image 2</a>
</div>
<div class="col-sm-4">
Image 3<img src="productimages/<?php echo htmlentities($result->id);?>/<?php echo htmlentities($result->productImage3);?>" width="300" height="200" style="border:solid 1px #000">
<a href="changeimage3.php?id=<?php echo htmlentities($result->id)?>">Change Image 3</a>
</div>
</div>



<div class="hr-dashed"></div>
</div>
</div>
</div>
</div>




</div>
</div>

<?php }} ?>


											<div class="form-group">
												<div class="col-sm-8 col-sm-offset-2" >

<button class="btn btn-primary" name="submit" type="submit" style="margin-top:4%">Save changes</button>
												</div>
											</div>

										</form>
									</div>
								</div>
							</div>
						</div>



					</div>
				</div>



			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
<?php } ?>
