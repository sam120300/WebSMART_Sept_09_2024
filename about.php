<link rel="stylesheet" href="about.css">
<div class="container my-5" style="height: 1250px">
    <div class="row my-5">
        <div class="col-md-12">
            <div class="card rounded-0 card-outline card-green shadow">
                <div class="card-body rounded-0">
                    <!-- About Section -->
                    <h2 class="text-center">About</h2>
                    <center><hr class="bg-navy border-navy w-25 border-2"></center>
                    <div>
                        <center>
                            <?= file_get_contents("about_us.html") ?>
                        </center>
                    </div>
                    
                    <!-- Contact Section -->
                    <h2 class="text-center">Contact</h2>
                    <center><hr class="bg-navy border-navy w-25 border-2"></center>
                    <div class="card-body rounded-0">
                        <dl class="row text-center">
                            <dt class="col col-md-2 col-sm-6 text-muted"><i class="fa fa-envelope"></i> Email</dt>
                            <dd class="col col-md-2 col-sm-6"><?= $_settings->info('email') ?></dd>
                            <dt class="col col-md-2 col-sm-6 text-muted"><i class="fa fa-phone"></i> Contact #</dt>
                            <dd class="col col-md-2 col-sm-6"><?= $_settings->info('contact') ?></dd>
                            <dt class="col col-md-2 col-sm-6 text-muted"><i class="fa fa-map-marked-alt"></i> Location</dt>
                            <dd class="col col-md-2 col-sm-6"><?= $_settings->info('address') ?></dd>
                        </dl>
                    </div>

                    <!-- Meet Our Team Section -->
                    <h2 class="text-center">Meet Our Team</h2>
                    <center><hr class="bg-navy border-navy w-25 border-2"></center>
                    <div class="row justify-content-center">
                        <div class="col-md-4 mb-4">
                            <div class="card h-100">
                                <img src="./uploads/1.jpg" class="card-img-top" alt="Blossom">
                                <div class="card-body text-center">
                                    <p><strong>Blossom</strong></p>
                                    <p><i>BSIT</i></p>
                                    <p>BATCH 2024</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card h-100">
                                <img src="./uploads/2.jpg" class="card-img-top" alt="Bubbles">
                                <div class="card-body text-center">
                                    <p><strong>Bubbles</strong></p>
                                    <p><i>BSIT</i></p>
                                    <p>BATCH 2024</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card h-100">
                                <img src="./uploads/3.jpg" class="card-img-top" alt="Buttercup">
                                <div class="card-body text-center">
                                    <p><strong>Buttercup</strong></p>
                                    <p><i>BSIT</i></p>
                                    <p>BATCH 2024</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
