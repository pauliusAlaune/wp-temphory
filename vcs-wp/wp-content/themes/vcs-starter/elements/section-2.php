<?php
$post_data = get_post( 40 );
global $post;
$post = $post_data;
setup_postdata($post);
$income_section_title       = get_field('income_section_title');
$income_section_title_cite  = get_field('income_section_title_cite');
$section2_text_title        = get_field('section2_text_title');
$section2_text_area         = get_field('section2_text_area');
$section2_button            = get_field('section2_button');
?>

<section id="cover2">
    <div class="section-content col-md-12">
        <div class="container">
            <div class="row">
                <div class="block-left col-lg-4 col-md-10 col-sm-10">
				    <h2><?php echo $income_section_title; ?></h2>
				    <h4><?php echo $income_section_title_cite; ?></h4>
                    <button class="btn btn-s2 btn-lg"><?php echo $section2_button; ?></button>
                    
                </div>
                <div class="block-left col-lg-1"></div>
                <div class="block-right col-lg-7 col-md-10 col-sm-10">
                    <h3><span class="black-text"><?php echo $section2_text_title; ?></span></h3>
				    <p class="lead"><?php echo $section2_text_area; ?></p>

				</div>
				<div class="k45"></div>
            </div>
        </div>
    </div>
</section>

<?php
$post_data = get_post( 77 );
global $post;
$post = $post_data;
setup_postdata($post);
$betweensection_cf      = get_field('betweensection_cf'); 
?>
<section id="cover2-3" style="background:url('<?php echo $betweensection_cf['url']; ?>') center center;background-size:cover"></section>