<?php
session_start();
require_once('config/dbConfig.php');
$db_handle = new DBController();
date_default_timezone_set("Asia/Dhaka");
$inserted_at = date("Y-m-d H:i:s");
$today = date("Y-m-d");
if(!isset($_SESSION['teacher_id'])){
    echo "<script>
                    window.location.href='Teacher-Login';
                    </script>";
}

$fetch_teacher_info = $db_handle->runQuery("select * from teacher_info where teacher_id = {$_SESSION['teacher_id']}");
?>

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

<!-- dashboard banner area start -->
<?php include ('include/admin_dashboard_header.php');?>
<!-- dashboard banner area end -->


<!-- rts dahboard-area-main-wrapper -->
<div class="dashboard--area-main pt--100 pt_sm--50">
    <div class="container">
        <div class="row g-5">
            <?php include ('include/admin_menu.php');?>
            <div class="col-lg-9">
                <div class="right-sidebar-dashboard">
                    <div class="row g-5">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <form action="Add-Incomplete-Questions" method="post" class="contact-page-form">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="single-input">
                                            <label for="name">Select Form Created Question Sets</label>
                                            <select name="set_id" required>
                                                <option selected disabled>Select the Question Set You Want to Add Question</option>
                                                <?php
                                                $fetch_question_set = $db_handle->runQuery("SELECT * FROM `questions` JOIN `question_sets` ON questions.question_set_id = question_sets.set_id GROUP BY question_sets.set_id HAVING COUNT(questions.question_id) < 120 and question_sets.teacher_id = {$_SESSION['teacher_id']} ORDER BY question_sets.set_id DESC");
                                                $fetch_question_set_no = $db_handle->numRows("SELECT * FROM `questions` JOIN `question_sets` ON questions.question_set_id = question_sets.set_id GROUP BY question_sets.set_id HAVING COUNT(questions.question_id) < 120 and question_sets.teacher_id = {$_SESSION['teacher_id']} ORDER BY question_sets.set_id DESC");
                                                for ($i=0; $i<$fetch_question_set_no; $i++){
                                                    ?>
                                                    <option value="<?php echo $fetch_question_set[$i]['set_id'];?>"><?php echo $fetch_question_set[$i]['set_name'];?></option>
                                                    <?php
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" name="selected_question_set" class="rts-btn btn-primary mt--30">Send Message</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- rts dahboard-area-main-wrapper end -->


<div class="rts-section-gap">

</div>


<!-- footer call to action area start -->
<?php include ('include/footer.php');?>
<!-- footer call to action area end -->

<!-- cart area start -->


<!-- cart area edn -->

<!-- header style two -->
<div id="side-bar" class="side-bar header-two">
    <button class="close-icon-menu"><i class="far fa-times"></i></button>
    <!-- inner menu area desktop start -->
    <div class="inner-main-wrapper-desk">
        <div class="thumbnail">
            <img src="assets/images/banner/04.jpg" alt="elevate">
        </div>
        <div class="inner-content">
            <h4 class="title">We Build Building and Great Constructive Homes.</h4>
            <p class="disc">
                We successfully cope with tasks of varying complexity, provide long-term guarantees and regularly master new technologies.
            </p>
            <div class="footer">
                <h4 class="title">Got a project in mind?</h4>
                <a href="contact.html" class="rts-btn btn-primary">Let's talk</a>
            </div>
        </div>
    </div>
    <!-- mobile menu area start -->
    <div class="mobile-menu-main">
        <nav class="nav-main mainmenu-nav mt--30">
            <ul class="mainmenu metismenu" id="mobile-menu-active">
                <li class="has-droupdown">
                    <a href="#" class="main">Home</a>
                    <ul class="submenu mm-collapse">
                        <li><a class="mobile-menu-link" href="index.html">Main Home</a></li>
                        <li><a class="mobile-menu-link" href="index-two.html">Online Course</a></li>
                        <li><a class="mobile-menu-link" href="index-three.html">Course Hub</a></li>
                        <li><a class="mobile-menu-link" href="index-four.html">Distance Learning</a></li>
                        <li><a class="mobile-menu-link" href="index-five.html">Single Instructor</a></li>
                        <li><a class="mobile-menu-link" href="index-six.html">Language Academy</a></li>
                        <li><a class="mobile-menu-link" href="index-seven.html">Gym Instructor</a></li>
                        <li><a class="mobile-menu-link" href="index-eight.html">Kitchen Coach</a></li>
                        <li><a class="mobile-menu-link" href="index-nine.html">Course Portal</a></li>
                        <li><a class="mobile-menu-link" href="index-ten.html">Business Coach</a></li>
                    </ul>
                </li>
                <li class="has-droupdown">
                    <a href="#" class="main">Pages</a>
                    <ul class="submenu mm-collapse">
                        <li><a class="mobile-menu-link" href="about.html">About Us</a></li>
                        <li><a class="mobile-menu-link" href="about-two.html">About Us Two</a></li>
                        <li><a class="mobile-menu-link" href="instructor-profile.html">Profile</a></li>
                        <li><a class="mobile-menu-link" href="contact.html">Contact</a></li>
                        <li class="has-droupdown third-lvl">
                            <a class="main" href="#">Zoom</a>
                            <ul class="submenu-third-lvl mm-collapse">
                                <li><a href="zoom-meeting.html"></a>Zoom Meeting</li>
                                <li><a href="zoom-details.html"></a>Zoom Details</li>
                            </ul>
                        </li>
                        <li class="has-droupdown third-lvl">
                            <a class="main" href="#">Event</a>
                            <ul class="submenu-third-lvl mm-collapse">
                                <li><a href="event.html"></a>Event</li>
                                <li><a href="event-two.html"></a>Event Two</li>
                                <li><a href="event-details.html"></a>Event Details</li>
                            </ul>
                        </li>
                        <li class="has-droupdown third-lvl">
                            <a class="main" href="#">Shop</a>
                            <ul class="submenu-third-lvl mm-collapse">
                                <li><a href="shop.html"></a>Shop</li>
                                <li><a href="product-details.html"></a>Product Details</li>
                                <li><a href="checkout.html"></a>Checkout</li>
                                <li><a href="cart.html"></a>Cart</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="has-droupdown">
                    <a href="#" class="main">Course</a>
                    <ul class="submenu mm-collapse">
                        <li><a href="#" class="tag">Courses</a></li>
                        <li><a class="mobile-menu-link" href="course-one.html">Courses</a></li>
                        <li><a class="mobile-menu-link" href="course-two.html">Course List</a></li>
                        <li><a class="mobile-menu-link" href="course-three.html">Course Grid</a></li>
                        <li><a class="mobile-menu-link" href="course-four.html">Course List Two</a></li>
                        <li><a class="mobile-menu-link" href="course-five.html">Course Grid Two</a></li>
                        <li><a class="mobile-menu-link" href="course-six.html">Course Filter</a></li>
                    </ul>
                    <ul class="submenu mm-collapse">
                        <li><a href="#" class="tag">Courses Details</a></li>
                        <li><a class="mobile-menu-link" href="single-course.html">Courses Details</a></li>
                        <li><a class="mobile-menu-link" href="single-course-two.html">Courses Details V2</a></li>
                        <li><a class="mobile-menu-link" href="single-course-three.html">Courses Details V3</a></li>
                        <li><a class="mobile-menu-link" href="single-course-four.html">Courses Details V4</a></li>
                        <li><a class="mobile-menu-link" href="single-course-five.html">Courses Details V5</a></li>
                        <li><a class="mobile-menu-link" href="single-course-free.html">Courses Details Free</a></li>
                    </ul>
                    <ul class="submenu mm-collapse">
                        <li><a href="#" class="tag">Others</a></li>
                        <li><a class="mobile-menu-link" href="become-instructor.html">Become an Instructor</a></li>
                        <li><a class="mobile-menu-link" href="instructor-profile.html">Instructor Profile</a></li>
                        <li><a class="mobile-menu-link" href="instructor.html">Instructor</a></li>
                        <li><a class="mobile-menu-link" href="pricing.html">Membership Plan</a></li>
                        <li><a class="mobile-menu-link" href="log-in.html">Log In</a></li>
                        <li><a class="mobile-menu-link" href="registration.html">Registration</a></li>
                    </ul>
                </li>
                <li class="has-droupdown">
                    <a href="#" class="main">Dashboard</a>
                    <ul class="submenu mm-collapse">
                        <li class="has-droupdown third-lvl">
                            <a class="main" href="#">Instructor Dashboard</a>
                            <ul class="submenu-third-lvl mm-collapse">
                                <li><a href="dashboard.html"></a>Dashboard</li>
                                <li><a href="my-profile.html"></a>My Profile</li>
                                <li><a href="enroll-course.html"></a>Enroll Course</li>
                                <li><a href="wishlist.html"></a>Wishlist</li>
                                <li><a href="reviews.html"></a>Reviews</li>
                                <li><a href="quick-attempts.html"></a>Quick Attempts</li>
                                <li><a href="order-history.html"></a>Order History</li>
                                <li><a href="question-answer.html"></a>Question Answer</li>
                                <li><a href="calender.html"></a>Calender</li>
                                <li><a href="my-course.html"></a>My Course</li>
                                <li><a href="announcement.html"></a>Announcement</li>
                                <li><a href="assignments.html"></a>Assignments</li>
                                <li><a href="certificate.html"></a>Certificate</li>
                            </ul>
                        </li>
                        <li class="has-droupdown third-lvl">
                            <a class="main" href="#">Students Dashboard</a>
                            <ul class="submenu-third-lvl mm-collapse">
                                <li><a href="student-dashboard.html"></a>Dashboard</li>
                                <li><a href="student-profile.html"></a>My Profile</li>
                                <li><a href="student-enroll-course.html"></a>Enroll Course</li>
                                <li><a href="student-wishlist.html"></a>Wishlist</li>
                                <li><a href="student-reviews.html"></a>Reviews</li>
                                <li><a href="student-quick-attempts.html"></a>Quick Attempts</li>
                                <li><a href="student-order-history.html"></a>Order History</li>
                                <li><a href="student-question-answer.html"></a>Question Answer</li>
                                <li><a href="student-calender.html"></a>Calender</li>
                                <li><a href="student-settings.html"></a>Students Settings</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="has-droupdown">
                    <a href="#" class="main">Blog</a>
                    <ul class="submenu mm-collapse">
                        <li><a class="mobile-menu-link" href="blog.html">Blog</a></li>
                        <li><a class="mobile-menu-link" href="blog-grid.html">Blog Grid</a></li>
                        <li><a class="mobile-menu-link" href="blog-list.html">Blog List</a></li>
                        <li><a class="mobile-menu-link" href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                        <li><a class="mobile-menu-link" href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                        <li><a class="mobile-menu-link" href="blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <div class="buttons-area">
            <a href="#" class="rts-btn btn-border">Log In</a>
            <a href="#" class="rts-btn btn-primary">Sign Up</a>
        </div>

        <div class="rts-social-style-one pl--20 mt--50">
            <ul>
                <li>
                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa-brands fa-linkedin-in"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- mobile menu area end -->
</div>
<!-- header style two End -->

<!-- modal -->
<div id="myModal-1" class="modal fade" role="dialog">
    <div class="modal-dialog bg_image">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-bs-dismiss="modal"><i class="fa-light fa-x"></i></button>
            </div>
            <div class="modal-body text-center">
                <div class="inner-content">
                    <div class="title-area">
                        <span class="pre">Get Our Courses Free</span>
                        <h4 class="title">Wonderful for Learning</h4>
                    </div>
                    <form action="#">
                        <input type="text" placeholder="Your Mail.." required>
                        <button>Download Now</button>
                        <span>Your information will never be shared with any third party</span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


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
