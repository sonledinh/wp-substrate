<?php /* Template Name: Giới thiệu */ ?>
<?php get_header() ?>
<main>
	<style>
		header{ display: none; }
		.about {color: #fff}
	</style>
	<section class="about">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="about-left d-flex justify-content-between align-items-center">
						<div class="left">
							<div class="us-top d-flex align-items-center">
								<div class="avarta"><img src="images/ab-top.jpg" class="img-fluid" alt=""></div>
								<div class="info">
									<h4><?php the_field('title_about') ?></h4>
									<div class="desc-about">
										<?php the_field('desc_about') ?>
									</div>
								</div>
							</div>
						</div>
						<div class="right">
							<ul class="list-inline text-right">
								<li class="list-inline-item"><a href=""><img src="images/i-ab-1.svg" class="img-fluid" alt=""></a></li>
								<li class="list-inline-item"><a href=""><img src="images/i-ab-2.svg" class="img-fluid" alt=""></a></li>
								<li class="list-inline-item"><a href=""><img src="images/i-ab-3.svg" class="img-fluid" alt=""></a></li>
							</ul>
						</div>
					</div>
					<div class="content-about">
						<div class="detail">
							<?php the_content() ?>
						</div>
					</div>
				</div> 
				<div class="col-md-4">
					<div class="side-bar-right">
						<div class="box-search">
							<input type="text" placeholder="Tìm kiếm theo từ khóa">
							<button type="submit"><img src="images/search.svg" class="img-fluid" alt=""></button>
						</div>
						<div class="item-bar-left">
							<div class="title-bar">Chuyên mục</div>
							<div class="cate-bar">
								<ul>
									<li><a href="banan.php">CÂU CHUYỆN VI BẰNG</a></li>
									<li><a href="banan.php">HỎI ĐÁP</a></li>
									<li><a href="banan.php">VĂN BẢN PHÁP LUẬT HÀNH CHÍNH</a></li>
								</ul>
							</div>
						</div>
						<div class="item-bar-left">
							<div class="title-bar">CẬP NHẬT</div>
							<div class="list-new-bar">
								<div class="item">
									<div class="avarta"><a href="chitiet.php"><img src="images/new-bar.jpg" class="img-fluid" alt=""></a></div>
									<div class="info">
										<ul class="list-inline">
											<li class="list-inline-item"><a href="banan.php" class="text-uppercase">PHÁP LUẬT</a></li>
											<li class="list-inline-item">3 ngày trước</li>
										</ul>
										<h3><a href="chitiet.php" class="text-uppercase">Điểm gốc trọng lực quốc gia được đặt tại thủ đô Hà Nội</a></h3>
									</div>
								</div>
								<div class="item">
									<div class="avarta"><a href="chitiet.php"><img src="images/new-bar.jpg" class="img-fluid" alt=""></a></div>
									<div class="info">
										<ul class="list-inline">
											<li class="list-inline-item"><a href="banan.php" class="text-uppercase">PHÁP LUẬT</a></li>
											<li class="list-inline-item">3 ngày trước</li>
										</ul>
										<h3><a href="chitiet.php" class="text-uppercase">Điểm gốc trọng lực quốc gia được đặt tại thủ đô Hà Nội</a></h3>
									</div>
								</div>
								<div class="item">
									<div class="avarta"><a href="chitiet.php"><img src="images/new-bar.jpg" class="img-fluid" alt=""></a></div>
									<div class="info">
										<ul class="list-inline">
											<li class="list-inline-item"><a href="banan.php" class="text-uppercase">PHÁP LUẬT</a></li>
											<li class="list-inline-item">3 ngày trước</li>
										</ul>
										<h3><a href="chitiet.php" class="text-uppercase">Điểm gốc trọng lực quốc gia được đặt tại thủ đô Hà Nội</a></h3>
									</div>
								</div>
								<div class="item">
									<div class="avarta"><a href="chitiet.php"><img src="images/new-bar.jpg" class="img-fluid" alt=""></a></div>
									<div class="info">
										<ul class="list-inline">
											<li class="list-inline-item"><a href="banan.php" class="text-uppercase">PHÁP LUẬT</a></li>
											<li class="list-inline-item">3 ngày trước</li>
										</ul>
										<h3><a href="chitiet.php" class="text-uppercase">Điểm gốc trọng lực quốc gia được đặt tại thủ đô Hà Nội</a></h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</section>
</main>
<?php get_footer() ?> 