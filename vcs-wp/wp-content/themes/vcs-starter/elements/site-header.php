<?php
$post_data = get_post( 29 );
global $post;
$post = $post_data;
setup_postdata($post);
$main_button      = get_field('main_button'); 
?>

<section id="cover">
        <div id="cover-caption">
            <div class="container">
                <div class="col-md-10 col-sm-9 col-xs-12 col-sm-offset-1">
                    <div class="row">
<!--                        <h1 class="display-3">“temphory <span class="organge-text">werkt snel en slagvaardig,</span> maar altijd op een betrouwbare manier.” <span class="h-3main">(Hans van Doren, Van Doren engineers)</span></h1>-->
                        
                       
                          <?php $sub_title_white = get_post_meta($post->ID,'subtitle_white',true);   $sub_title = get_post_meta($post->ID,'subtitle_orange',true); $sub_title_white2 = get_post_meta($post->ID,'subtitle_white2',true); $sub_title_2 = get_post_meta($post->ID,'subtitle2',true);
                          if($sub_title) { 
                          echo '<h1 class="display-3">' . $sub_title_white . '<span class="organge-text">' . ' ' . $sub_title . ' ' . '</span>' . $sub_title_white2 . '<span class="h-3main">' .' '. $sub_title_2 .'</span></h1>'; 
                          } else { 
                          echo '<h1>'. get_the_title() .'</h1>'; 
                          } 
                          ?>
                    </div>
                    <div class="row b-left">
                        
                        <button class="btn btn-s btn-lg"><?php echo $main_button; ?></button>
                    </div>
                    <div class="">
                         <a href="#cover2" class="awesome btn btn-lg" role="button"><span class="fa fa-angle-down" aria-hidden="true"></span></a>
                    </div>
                </div>
            </div>
            <div class="bottom-nav">
                <nav id="nav" class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only"><?php _e('Toggle navigation', 'vcs-starter'); ?></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<?php bloginfo( 'http://localhost/vcs-wp' ); ?>"><img class="logo-a" src="<?php echo get_template_directory_uri() . '/assets/img/logo-temphory.png'; ?>"></a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                           
                        <?php navbar_menu('primary-navigation', 'nav navbar-nav navbar-right') ?>
                            
<!--
                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item">
                                    <a class="nav-link" href="waarom.html">waarom temphory<span class="sr-only"></span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="over.html">over temphory</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="vacatures.html">vacatures</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled" href="contact.html">contact</a>
                                </li>
                                <li class="nav-item iconned">
                                    <a class="nav-link disabled" href="#"><span class="fa fa-user" aria-hidden="true"></span></a>
                                </li>
                            </ul>
-->
                            
                            
                            
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </div>
    </section>
    




    <?php wp_reset_postdata(); ?>

