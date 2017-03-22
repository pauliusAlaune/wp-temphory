<section id="cover6">
		<div class="section-content5 col-md-12">
			<div class="k45up-orange"></div>
                <!-- Carousel   homeCarousel-->
                <div id="myCarousel" class="carousel slide">
                <!-- Menu -->
                    <?php $loop = new WP_Query( array( 'post_type' => 'carousel', 'orderby' => 'post_id', 'order' => 'ASC' ) ); ?>
                    <?php $i = 0; ?>
                    
                    <ol class="carousel-indicators">
                        <?php while( $loop->have_posts() ) : $loop->the_post(); ?>
                        <li data-target="#myCarousel" data-slide-to="<?php echo $i; ?>"<?php if($i == 0): ?> class="active"<?php endif; ?>></li>
                       
                        <?php $i++; endwhile;  ?>
                    </ol>
                    <!-- Items -->
                    <div class="carousel-inner">
                        <!-- Item 1 -->
                        
                        <?php $loop = new WP_Query( array( 'post_type' => 'carousel', 'orderby' => 'post_id', 'order' => 'ASC' ) ); ?>
                                    <?php $j = 0; ?>
                                    <?php while( $loop->have_posts() ) : $loop->the_post(); 
                                    
                                    $income_image                        = get_field('income_image');
                                    $income_carousel_title_black_part    = get_field('income_carousel_title_black_part');
                                    $income_carousel_title_white_part    = get_field('income_carousel_title_white_part');
                                    $income_carousel_title_quote         = get_field('income_carousel_title_quote');
                                    $income_carousel_text                = get_field('income_carousel_text');

                                    
                                    ?>
                        <div class="item<?php echo ($j === 0) ? ' active': ''; ?>"> 
                        
                            <div class="container">
                                <div class="row">
                                    
                                    
                                    
                                    <div class="block-left col-lg-5 col-md-6 col-sm-10">
                                    
                                    
                                        
                                        <img class="caru-img" src="<?php echo $income_image['url']; ?>" alt="worker">
                                    </div>
                                    <div class="block-right col-lg-7 col-md-6 col-sm-10">
<!--				                        <h2><span class="black-text">Werken in de energie staat gelijk aan</span> werken met vakmensen</h2>-->
                                        
                                        
                                        <h2><?php echo '<span class="black-text">' . $income_carousel_title_black_part . '</span>' . ' ' . $income_carousel_title_white_part; ?></h2>
                                        
                                                                            
				                        <h4><?php echo $income_carousel_title_quote; ?></h4>
				                        <p class="lead"><?php echo $income_carousel_text; ?></p>
				                    </div>
                                    
                                    
				                </div>
			                 </div>
                        </div>
 
                        <!-- Controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="icon-next"></span>
                        </a> 
                        <?php $j++; ?>
                        <?php endwhile; ?>
                    </div>
                    <div class="k45-1"></div>
		      </div>
        </div>
	</section>

<?php
$post_data = get_post( 83 );
global $post;
$post = $post_data;
setup_postdata($post);
$betweensection_cf      = get_field('betweensection_cf'); 
?>
	
    <section id="cover6-7" style="background:url('<?php echo $betweensection_cf['url']; ?>') center center;background-size:cover"></section>