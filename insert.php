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


/*creating question sets*/
if(isset($_POST['create_question_set'])) {
    $exam_type = $db_handle->checkValue($_POST['exam_type']);
    $fetch_question_set = $db_handle->numRows("select * from question_sets where type = '$exam_type'");
    $set_name = $exam_type . '-' . ($fetch_question_set + 1);
    $insert_set = $db_handle->insertQuery("INSERT INTO `question_sets`(`teacher_id`, `type`, `set_name`, `inserted_at`) VALUES ('{$_SESSION['teacher_id']}','$exam_type','$set_name','$inserted_at')");
    if ($insert_set) {
        echo "<script>
                    document.cookie = 'alert = 3;';
                    window.location.href='Add-Audio';
                    </script>";
    } else {
        echo "<script>
                    document.cookie = 'alert = 5;';
                    window.location.href='Add-Audio';
                    </script>";
    }
}


/*uploading listening exam audio*/
if (isset($_POST['upload_audio'])) {
    // Sanitize and validate input
    $set_id = $db_handle->checkValue($_POST['set_id']);
    $audio = '';

    if (!empty($_FILES['audio']['name'])) {
        $RandomAccountNumber = mt_rand(1, 99999);
        $file_name = $RandomAccountNumber . "_" . basename($_FILES['audio']['name']);
        $file_size = $_FILES['audio']['size'];
        $file_tmp  = $_FILES['audio']['tmp_name'];
        $file_type = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

        // Allowed file types
        $allowed_types = ['mp3', 'wav', 'aac'];

        // Check for errors
        if ($_FILES['audio']['error'] !== UPLOAD_ERR_OK) {
            die("File upload error: " . $_FILES['audio']['error']);
        }

        if (!in_array($file_type, $allowed_types)) {
            echo "<script>
                    document.cookie = 'alert = 5;';
                    window.location.href='Add-Questions';
                  </script>";
        } else {
            // Attempt to move the uploaded file
            if (move_uploaded_file($file_tmp, "audio/" . $file_name)) {
                $audio = "audio/" . $file_name;

                // Insert into database
                $insert_audio = $db_handle->insertQuery("INSERT INTO `audio`(`file_name`, `set_id`, `inserted_at`) VALUES ('$audio', '$set_id', NOW())");

                if ($insert_audio) {
                    echo "<script>
                            document.cookie = 'alert = 3;';
                            window.location.href='Add-Questions';
                          </script>";
                } else {
                    echo "<script>
                            document.cookie = 'alert = 5;';
                            window.location.href='Add-Questions';
                          </script>";
                }
            } else {
                die("Failed to move uploaded file.");
            }
        }
    } else {
        die("No file selected.");
    }
}