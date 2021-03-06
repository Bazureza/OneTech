<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<?php echo base_url(); ?>Asset/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>Asset/css/style.css">
</head>

<body>
    <!-- Start Slider Area -->
	<div class="container" id="slider"><!-- container Begin -->
		<div class="col-md-12"><!-- col-md-12 Begin -->
			<div class="carousel slide" id="myCarousel" data-ride="carousel"><!-- carousel slide Begin -->
				<ol class="carousel-indicators"><!-- carousel-indicators Begin -->
					<li class="active" data-target="#myCarousel" data-slide-to="0"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="<?php echo base_url(); ?>Asset/img/slider/1.jpg" alt="Slider Image 1">
					</div>
					<div class="item">
						<img src="<?php echo base_url(); ?>Asset/img/slider/2.jpg" alt="Slider Image 2">
					</div>
					<div class="item">
						<img src="<?php echo base_url(); ?>Asset/img/slider/3.jpg" alt="Slider Image 3">
					</div>
				</div>
				<a href="#myCarousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a href="#myCarousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>

    <!-- Product filter section -->
    <section class="product-section">
        <div class="container">
            <div class="section-title">
                <h2>OUR LATEST PRODUCTS</h2>
            </div>
            <div class="row">
                <?php for($i = 0 ; $i<$product['data']['count']; $i++){
                	$view = false;
                	if($product['data']['data_array'][$i]->discount > 0 && $product['data']['data_array'][$i]->discount < 100) {
                		$today = date("Y-m-d");
						$today = date('Y-m-d', strtotime($today));
						$begin = date('Y-m-d', strtotime($product['data']['data_array'][$i]->startDateDiscount));
						$end = date('Y-m-d', strtotime($product['data']['data_array'][$i]->lastDateDiscount));
                		if(($today >= $begin) && ($today <= $end))
                			$view = true;
					}
                   echo '<div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <a href="'.base_url().'product/'.$product['data']['data_array'][$i]->product_id.'/">
                                <img src="'.$product['data']['data_array'][$i]->product_img_1.'" alt="">
                            </a>';
                			if($view) {
                				echo '
								<div class="pi-links">
									<a href="#" class="wishlist-btn"><i class="flaticon-tag"></i><span><strong>&ensp;'.$product['data']['data_array'][$i]->discount.'% DISCOUNT</strong></span></a>
								</div>';
							}
						echo'	
                        </div>
                        <div class="pi-text">
                            <!--<h5>Rp. '.number_format($product['data']['data_array'][$i]->product_price,2,",",".").'</h5>-->
                            <h6>Rp. '.number_format($product['data']['data_array'][$i]->product_price,2,",",".").'</h6>
                            <a href="'.base_url().'product/'.$product['data']['data_array'][$i]->product_id.'">
                                <p>'.$product['data']['data_array'][$i]->product_name.'</p>
                            </a>
                        </div>
                    </div>
                </div>';
                } ?>

            </div>
            <div class="text-center pt-5">

                <a class="site-btn sb-line sb-dark" href="<?php echo base_url("allproduct"); ?>">LOAD MORE</a>
            </div>
        </div>
    </section>
    <!-- Product filter section end -->

	<script src="<?php echo base_url(); ?>Asset/js/jquery-331.min.js"></script>
	<script src="<?php echo base_url(); ?>Asset/js/bootstrap-337.min.js"></script>
</body>

</html>
