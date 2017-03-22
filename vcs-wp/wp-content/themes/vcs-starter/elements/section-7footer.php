<?php
$post_data = get_post( 92 );
global $post;
$post = $post_data;
setup_postdata($post);
$income_section7_title          = get_field('income_section7_title');
$income_section7_text           = get_field('income_section7_text');
$section7_list_title1           = get_field('section7_list_title1');
$section7_list_title2           = get_field('section7_list_title2');
?>



<section id="cover7">
		<div class="section-content6 col-lg-12">
			<div class="k45up"></div>
                <div class="container">
                    <div class="row">
                        
                        <div class="block-left col-lg-6 col-md-6 col-sm-10">
                            <h2><span class="organge-text"><?php echo $income_section7_title; ?></span></h2>
                            <p class="lead">Ben jij een vakman of vakvrouw en wil je investeren in je ontwikkeling? 
							Of ben je op zoek naar vakmensen? Neem dan contact met ons op via 
							<span class="organge-text">0341 424 080</span> of vul het contactformulier in.
                            </p>
							</div>
							<div class="block-right col-lg-3 col-md-3 col-sm-5">
                            <h2><span class="organge-text"><?php echo $section7_list_title1; ?></span></h2>
                                
                            
							<ul class="lead">
                                

								<li>Middelerf 14b</li>
								<li>3851 SP Ermelo</li>
								<li>Tel.: 0341 424 080</li>
								<li>Privacy statement</li>

							</ul>
							</div>
							<div class="block-right col-lg-3 col-md-3 col-sm-5">
                            <h2><span class="organge-text"><?php echo $section7_list_title2; ?></span></h2>
							<ul class="lead">
								<li>Postadres:</li>
								<li>Postbus 473</li>
								<li>3840 AL Harderwijk</li>
								<li>E-mail: <span class="organge-text">contact@temphory.com</span></li>
							</ul>
                            
                        </div>
                        
                    </div>	
                </div>
			</div>
	</section>
<?php endif; ?>