<!DOCTYPE html>
<html lang="en">

<head>
		<link rel="stylesheet" href="<?php echo base_url(); ?>Asset/css/bootstrap.min.css"/>
</head>

<body>

<!-- product section -->
<section class="product-section">
	<div class="container">
		<div class="back-link">
			<?php
			echo '<a href="' . base_url() . 'viewproduct/cat/' . $prodinfo['data_array'][0]->category_id . '"><h6> << Back to see all ' . $prodinfo['data_array'][0]->category_name . ' </h6></a>';
			?>
		</div>
		<div class="row">
			<div class="col-lg-6">
				<?php echo'<div class="">
					<img class="product-big-img" src="'.$product["data_array"][0]->product_img_1.'" alt="">
				</div>'; ?>
				<div class="product-thumbs" tabindex="1" style="overflow: hidden; outline: none;">
					<div class="product-thumbs-track">
						<?php echo '
							<div class="pt active" data-imgbigurl="'.$product["data_array"][0]->product_img_1.'"><img src="'.$product["data_array"][0]->product_img_1.'" alt=""></div>
							<div class="pt" data-imgbigurl="'.$product["data_array"][0]->product_img_2.'"><img src="'.$product["data_array"][0]->product_img_2.'" alt=""></div>
							<div class="pt" data-imgbigurl="'.$product["data_array"][0]->product_img_3.'"><img src="'.$product["data_array"][0]->product_img_3.'" alt=""></div>
						'; ?>
					</div>
				</div>
			</div>
            <?php echo '
			<div class="col-lg-6 product-details">
				<h2 class="p-title">'.$product["data_array"][0]->product_name.'</h2>';?>
				<?php
				$discount = $product["data_array"][0]->discount;
				$pricenow = $product["data_array"][0]->product_price;
				$today = date("Y-m-d");
				$today = date('Y-m-d', strtotime($today));
				$begin = date('Y-m-d', strtotime($product['data_array'][0]->startDateDiscount));
				$end = date('Y-m-d', strtotime($product['data_array'][0]->lastDateDiscount));
				if($discount > 0 && ($today >= $begin) && ($today <= $end)) {
					$pricenow = $pricenow - ($pricenow*$discount/100);
					echo'<h4 class="p-stock"><strike><i>Rp. '.number_format($product["data_array"][0]->product_price,2,",",".").'</i></strike></h4>
					<h3 class="p-price">Rp. '.number_format($pricenow,2,",",".").'</h3>';
				} else {
					echo'<h3 class="p-price">Rp. '.number_format($pricenow,2,",",".").'</h3>';
				}
				?>
				<?php echo'
				<!--<a href="#" class="site-btn">SHOP NOW</a>-->
				<div id="accordion" class="accordion-area">
					<div class="panel">
						<div class="panel-header" id="headingOne">
							<button class="panel-link active" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">Description</button>
						</div>
						<div id="collapse1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
							<div class="panel-body">
								<p>'.$product["data_array"][0]->product_desc.'</p>
							</div>
						</div>
					</div>
					<div class="panel">
						<div class="panel-header" id="headingTwo">
							<button class="panel-link" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">Details</button>
						</div>
						<div id="collapse3" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
							<div class="panel-body">
								<a href="' . base_url() . 'viewproduct/cat/' . $prodinfo['data_array'][0]->category_id . '"><h4>Category &emsp;&emsp;: '.$prodinfo['data_array'][0]->category_name.'</h4></a>
								<a href="' . base_url() . 'viewproduct/cat/' . $prodinfo['data_array'][0]->category_id . '/subcat/' . $prodinfo['data_array'][0]->subcategory_id . '"><h4>Sub-Category : '.$prodinfo['data_array'][0]->subcategory_name.'</h4></a>					
								<h4>Merk &emsp;&emsp;&emsp;&emsp;: '.$prodinfo['data_array'][0]->merk_name.'</h4>
							</div>
						</div>
					</div>
				</div>
			</div>';
			?>
		</div>
	</div>
</section>
<!-- product section end -->

<?php
?>
<!-- mini table-->
<div class="container paginationbox lilmargin">
<div class="flex-container">
	<table>
		<tr>
			<th>Product Code</th>
			<th>Product Type</th>
			<th class="mid">Availability</th>
            <th class="mid">Quantity</th>
			<th class="mid">Add to Cart</th>
		</tr>
        <?php for ($i = 0 ; $i < $product_type["count"] ; $i++ ){
        	$availability = "";
        	if($product_type["data_array"][$i]->quota > 0) {
        		$availability = "Available";
			} else {
				$availability = "Out of Stock";
			}
        echo '
        <tr>
			<td>'.$product["data_array"][0]->product_code.'</td>
			<td>'.$product_type["data_array"][$i]->product_type.'</td>
			<td class="mid">'.$availability.'</td>
			<td class="mid"><div class="quantity">
					<!--<p>Quantity</p>-->
					<div class="pro-qty"><input type="text" value="'.($product_type["data_array"][$i]->quota > 0 ? "1" : "0") .'" name="quantity" class="quantity-item"></div>
					<input type="hidden" value="'.$product_type["data_array"][$i]->quota.'" class="quota_prod" >
					<input type="hidden" value="'.$product_type["data_array"][$i]->type_id.'" class="type_id">
				</div></td>
			<!--<td><a href="'.base_url().'product/'.$product["data_array"][0]->product_id.'">order</a></td>-->
			<td class="mid"><a href="'.base_url('Order/addToCart').'/'.$product_type["data_array"][$i]->type_id.'/'.($product_type["data_array"][$i]->quota > 0 ? "1" : "0") .'" class="order-product">Add to cart</a></td>
			<!--<td><button type="button" id="" class="order-product btn btn-success"><i class="fa fa-plus"></i> Add to cart</button></td>-->
		</tr>';} ?>
	</table>
</div>
</div>
<!-- end mini table-->

<script src="<?php echo base_url(); ?>Asset/js/onetech/math.js"></script>
<script> generateDiskon(<?php echo json_encode($product["data_array"][0]); ?>); </script>
<script src="<?php echo base_url(); ?>Asset/js/main.js"></script>
<script src="<?php echo base_url(); ?>Asset/js/onetech/product/product.js"></script>
</body>

</html>
