<?php 

$post_data = get_post( 56 );
global $post;
$post = $post_data;
setup_postdata($post);
$income_section5_title          = get_field('income_section5_title');
$income_section5_title_quote    = get_field('income_section5_title_quote');
$section5_text_area             = get_field('section5_text_area');
$section5_form                  = get_field('section5_form');
$section5_button                = get_field('section5_button');
//var_dump($section5_form->post_title);exit;
?>

<section id="cover5">
		<div class="section-content4 col-md-12">
			<div class="k45up"></div>
			<div class="container">
                <div class="row">
				    <div class="block-left col-lg-4 col-md-4 col-sm-10">
				        <h2><?php echo $income_section5_title; ?></h2>
				        <h4><?php echo $income_section5_title_quote; ?></h4>
				        <button id="click" class="btn btn-s btn-lg"><?php echo $section5_button; ?></button>
				    </div>
				    <!--<div class="block-left col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>-->
				    <div class="block-right col-md-offset-1 col-lg-7 col-md-7 col-md-10 col-sm-12">
				    <!--<div class="container">-->
                        <p class="lead lead-p"><?php echo $section5_text_area; ?></p>
<!--				        <form method="post" action="">-->
                           <?php echo do_shortcode( "[contact-form-7 id='$section5_form->ID' title='$section5_form->post_title']" ); ?>
                            
<!--				        </form>-->
                    </div>
                </div>
            </div>
        </div>
        <div class="k45down"></div>
    </section>
<?php wp_reset_postdata(); ?>

<?php
$post_data = get_post( 82 );
global $post;
$post = $post_data;
setup_postdata($post);
$betweensection_cf      = get_field('betweensection_cf'); 
?>
        
    <section id="cover5-6" style="background:url('<?php echo $betweensection_cf['url']; ?>') center center;background-size:cover"></section>