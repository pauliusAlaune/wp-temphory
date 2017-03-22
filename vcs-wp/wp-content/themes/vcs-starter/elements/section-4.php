<?php
$post_data = get_post( 51 );
global $post;
$post = $post_data;
setup_postdata($post);
$income_section4_title          = get_field('income_section4_title');
$income_section4_title_quote    = get_field('income_section4_title_quote');
$income_section4_button         = get_field('income_section4_button');
$section4_text_title            = get_field('section4_text_title');
$section4_text_area             = get_field('section4_text_area');
$section4_button1               = get_field('section4_button1');
$section4_button2               = get_field('section4_button2');
?>

<section id="cover4">
		<div class="section-content3 col-md-12">
			<div class="k45up-orange"></div>
            <div class="container">
                <div class="row">
				    <div class="block-left col-md-offset-right-1 col-lg-4 col-md-10 col-sm-10">
				        <h2><?php echo $income_section4_title; ?></h2>
				        <h4><?php echo $income_section4_title_quote; ?></h4>
				        <button class="btn btn-s2 btn-lg"><?php echo $income_section4_button; ?></button>
				    </div>
                    <div class="block-left col-lg-1"></div>
				    <div class="block-right col-lg-7 col-md-10 col-sm-10">
                        <h3><span class="black-text t-overflow"><?php echo $section4_text_title; ?></span></h2>
                        <p class="lead"><?php echo $section4_text_area; ?>
                        </p>
                        <div class="formos form-group row pull-right">
                            <button class="btn btn-ac btn-lg"><?php echo $section4_button1; ?></button>
                            <button class="btn btn-ac btn-lg"><?php echo $section4_button2; ?></button>
                        </div>
				    </div>
                </div>
                <div class="k45-4"></div>
            </div>
        </div>
    </section>

<?php
$post_data = get_post( 81 );
global $post;
$post = $post_data;
setup_postdata($post);
$betweensection_cf      = get_field('betweensection_cf'); 
?>
	
    <section id="cover4-5" style="background:url('<?php echo $betweensection_cf['url']; ?>') center center;background-size:cover"></section>