<?php
$post_data = get_post( 45 );
global $post;
$post = $post_data;
setup_postdata($post);
$income_section3_title          = get_field('income_section3_title');
$income_section3_title_quote    = get_field('income_section3_title_quote');
$section3_text_title            = get_field('section3_text_title');
$section3_text_area             = get_field('section3_text_area');
$section3_button                = get_field('section3_button');
?>

<section id="cover3">
        <div class="section-content2 col-md-12">
			<div class="k45up"></div>
			<div class="container">
			     <div class="row">
                     <div class="block-left col-md-offset-right-1  col-lg-4 col-md-10 col-sm-10">
				        <h2><?php echo $income_section3_title; ?></h2>
				        <h4><?php echo $income_section3_title_quote; ?></h4>
				        <button class="btn btn-s btn-lg"><?php echo $section3_button; ?></button>
				    </div>
                     <div class="block-left col-lg-1"></div>
				    <div class="block-right col-lg-7 col-md-10 col-sm-10">
				        <h3><?php echo $section3_text_title; ?></h2>
				        <p class="lead"><?php echo $section3_text_area; ?>
                        </p>
				    </div>
				    <div class="k45down"></div>
				</div>
			</div>
		</div>
	</section>

<?php
$post_data = get_post( 79 );
global $post;
$post = $post_data;
setup_postdata($post);
$betweensection_cf      = get_field('betweensection_cf'); 
?>
            
    <section id="cover3-4"  style="background:url('<?php echo $betweensection_cf['url']; ?>') center center;background-size:cover"></section>