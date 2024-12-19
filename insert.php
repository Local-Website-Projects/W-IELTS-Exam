<?php
session_start();
require 'PHPMailer.php';
require 'SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;

$mail = new PHPMailer();
require_once('config/dbConfig.php');
$db_handle = new DBController();
date_default_timezone_set("Asia/Dhaka");
$inserted_at = date("Y-m-d H:i:s");
$today = date("Y-m-d");

/*student registration*/
if(isset($_POST['student_signup'])){
$name = $db_handle->checkValue($_POST['name']);
$email = $db_handle->checkValue($_POST['email']);
$phone = $db_handle->checkValue($_POST['phone']);
$country = $db_handle->checkValue($_POST['country']);
$password = $db_handle->checkValue($_POST['password']);
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

$check_email = $db_handle->numRows("SELECT student_id FROM students WHERE student_email = '$email'");
if($check_email == 0){
    function GenerateCode($length = 6)
    {
        $code = 123456;
        return $code;
    }
    echo $code = GenerateCode();
    $insert_student = $db_handle->insertQuery("INSERT INTO `students`(`student_name`, `student_email`, `student_phone`, `password`, `country`, `inserted_at`,`student_v_code`)
    VALUES ('$name','$email','$phone','$hashed_password','$country','$inserted_at','$code')");
        if($insert_student){
            $email_to = $email;
            $mail->isSMTP();
            $mail->Host = 'mail.frogbid.com';  // Specify your SMTP server
            $mail->SMTPAuth = true;
            $mail->Username = 'test@frogbid.com';
            $mail->Password = 'I@}14Khs(3lc';
            $mail->Port = 465;
            $mail->SMTPSecure = 'tls';

    // Email content
            $mail->setFrom('test@frogbid.com', 'Toilet Conference Email Verification');
            $mail->addAddress($email_to);
            $mail->Subject = 'Verify your email.';
            $mail->isHTML(true);
            $mail->Body = "
                <html>
                    <body style='background-color: #eee; font-size: 16px;'>
                    <div style='max-width: 600px; min-width: 200px; background-color: #ffffff; padding: 20px; margin: auto;'>

                        <p style='text-align: center;color:green;font-weight:bold'>Thank you for reaching out to us!</p>

                        <p style='color:black;text-align: center'>
                            Your 6 digit email verification code is: <strong>$code</strong>
                        </p>
                    </div>
                    </body>
                </html>";
            if ($mail->send()) {

                exit;
            } else {
                echo "<script>
                    document.cookie = 'alert = 5;';
                    window.location.href='Student-Registration';
                    </script>";
            }
        } else{
            echo "<script>
                    document.cookie = 'alert = 5;';
                    window.location.href='Student-Registration';
                    </script>";
        }
    } else{
        echo "<script>
                    document.cookie = 'alert = 4;';
                    window.location.href='Student-Registration';
                    </script>";
    }
}


/*teacher login*/
if(isset($_POST['teacher_login'])){
    $email = $db_handle->checkValue($_POST['email']);
    $password = $db_handle->checkValue($_POST['password']);

    $fetch_pass = $db_handle->runQuery("select * from teacher_info where email = '$email'");
    if(password_verify($password, $fetch_pass[0]['password'])){
        $_SESSION['teacher_id'] = $fetch_pass[0]['teacher_id'];
        echo "<script>
                    document.cookie = 'alert = 1;';
                    window.location.href='Teacher-Dashboard';
                    </script>";
    }else {
        echo "<script>
                    document.cookie = 'alert = 1;';
                    window.location.href='Teacher-Login';
                    </script>";
    }
}