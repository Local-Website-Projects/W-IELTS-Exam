<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ielts Online Exam</title>
    <?php include ('include/css.php');?>
</head>

<body>

<!-- header style one -->
<?php include ('include/header.php');?>
<!-- header style end -->
<div class="login-registration-wrapper">
    <div class="container">
        <div class="row g-0">
            <div class="col-lg-6">
                <div class="login-page-form-area">
                    <h4 class="title">Login to Your Teacher Account👋</h4>
                    <form action="Insert" method="post">
                        <div class="single-input-wrapper">
                            <label for="email">Your Email</label>
                            <input id="email" type="email" placeholder="Enter Your Email" name="email" required>
                        </div>
                        <div class="single-input-wrapper">
                            <label for="password">Your Password</label>
                            <input id="password" type="password" placeholder="Password" name="password" required>
                        </div>
                        <button class="rts-btn btn-primary" name="teacher_login">Login</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="contact-thumbnail-login-p mt--100">
                    <img src="assets/images/banner/login-bg.png" width="600" height="495" alt="login-form">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- header style two -->
<?php include ('include/header_2.php');?>
<!-- header style two End -->



<!-- rts backto top start -->
<div class="progress-wrap">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;"></path>
    </svg>
</div>
<!-- rts backto top end -->

<div id="anywhere-home" class="">
</div>

<!-- all scripts -->
<?php include ('include/js.php');?>

</body>

</html>