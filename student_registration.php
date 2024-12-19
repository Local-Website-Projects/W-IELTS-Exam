<?php
session_start();
require_once('config/dbConfig.php');
$db_handle = new DBController();
date_default_timezone_set("Asia/Dhaka");
$inserted_at = date("Y-m-d H:i:s");
$today = date("Y-m-d");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ielts Online Exam</title>
    <?php include ('include/css.php');?>
    <link rel="stylesheet" href="vendor/toastr/css/toastr.min.css">
    <script src="vendor/toastr/js/toastr.min.js"></script>
    <style>
        .inline-alert {
            font-size: 12px;
            color: red;
            margin-top: 3px;
            position: relative;
            bottom: -18px;
            left: 0;
        }
    </style>

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
                    <h4 class="title">Sign Up to Your Account👋</h4>
                    <form action="Insert" method="post">
                        <div class="single-input-wrapper">
                            <label for="name">Your Name*</label>
                            <input id="name" type="text" placeholder="Enter Your Name" name="name" required>
                        </div>
                        <div class="single-input-wrapper">
                                <label for="email">Email*</label>
                                <input id="email" type="email" placeholder="Enter Your Email" name="email" required>
                        </div>
                        <div class="single-input-wrapper">
                            <label for="phone">Phone*</label>
                            <input id="phone" type="text" placeholder="Enter Your Phone Number" name="phone" required>
                        </div>
                        <div class="half-input-wrapper">
                            <div class="single-input-wrapper">
                                <label for="password">Your Password</label>
                                <input id="password" type="password" placeholder="Password" name="password" required>
                                <span id="password-alert" class="inline-alert"></span>
                            </div>
                            <div class="single-input-wrapper">
                                <label for="repassword">Re-Password</label>
                                <input id="repassword" type="password" placeholder="Re-Password" name="retype_password" required>
                                <span id="repassword-alert" class="inline-alert"></span>
                            </div>
                        </div>
                        <div class="single-input-wrapper">
                            <select id="country" name="country">
                                <option selected>Choose your country</option>
                                <?php
                                $fetch_country = $db_handle->runQuery("SELECT * FROM countries");
                                foreach ($fetch_country as $country) {
                                    ?>
                                    <option value="<?php echo $country['id']; ?>"><?php echo $country['country_name']; ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                        <div class="single-checkbox-filter">
                            <div class="check-box">
                                <input type="checkbox" id="type-1" required>
                                <label for="type-1">Accept the Terms and Privacy Policy</label><br>
                            </div>
                        </div>
                        <button class="rts-btn btn-primary" type="submit" name="student_signup">SignUp</button>
                        <p>Already Have an account? <a href="Student-Login">Login</a></p>
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


<script>
    // Get input fields and alert elements
    const passwordInput = document.getElementById('password');
    const repasswordInput = document.getElementById('repassword');
    const passwordAlert = document.getElementById('password-alert');
    const repasswordAlert = document.getElementById('repassword-alert');

    // Function to validate password length
    function validatePasswordLength(password) {
        return password.length >= 8;
    }

    // Function to validate if passwords match
    function validatePasswordsMatch(password, retypePassword) {
        return password === retypePassword;
    }

    // Event listener for password field
    passwordInput.addEventListener('input', () => {
        const password = passwordInput.value;

        // Show password length error only while typing
        if (!validatePasswordLength(password)) {
            passwordAlert.textContent = 'Password must be at least 8 characters.';
        } else {
            passwordAlert.textContent = ''; // Clear alert when valid
        }

        // Check for password match if retype password is already filled
        if (repasswordInput.value) {
            if (!validatePasswordsMatch(password, repasswordInput.value)) {
                repasswordAlert.textContent = 'Passwords do not match.';
            } else {
                repasswordAlert.textContent = '';
            }
        }
    });

    // Event listener for re-password field
    repasswordInput.addEventListener('input', () => {
        const password = passwordInput.value;
        const retypePassword = repasswordInput.value;

        // Show error only while typing
        if (!validatePasswordsMatch(password, retypePassword)) {
            repasswordAlert.textContent = 'Passwords do not match.';
        } else {
            repasswordAlert.textContent = ''; // Clear alert when valid
        }
    });
</script>



</body>

</html>