<%-- 
    Document   : index
    Created on : Aug 5, 2021, 10:32:08 PM
    Author     : vongovantien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div class="container-fluid">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active">
                <img src="<c:url value="/images/banner/banner1.jpg"/>" alt="Los Angeles" style="width:100%;">
            </div>

            <div class="item">
                <img src="<c:url value="/images/banner/banner2.jpg"/>" alt="Chicago" style="width:100%;">
            </div>

            <div class="item">
                <img src="<c:url value="/images/banner/banner3.jpg"/>" alt="New York" style="width:100%;">
            </div>
        </div>
    </div>
</div>

<div class="container">      
    <div class="row space-100 justify-content-center">
        <div class="col-lg-10 col-md-12 col-xs-12">
            <div class="contents">
                <h2 class="head-title">Find the job that fits your life</h2>
                <p>Aliquam vestibulum cursus felis. In iaculis iaculis sapien ac condimentum. Vestibulum congue posuere lacus, <br> id tincidunt nisi porta sit amet. Suspendisse et sapien varius, pellentesque dui non.</p>
                <div class="job-search-form">
                    <form>
                        <div class="row">
                            <div class="col-lg-5 col-md-6 col-xs-12">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Job Title or Company Name">
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-xs-12">
                                <div class="form-group">
                                    <div class="search-category-container">
                                        <label class="styled-select">
                                            <select>
                                                <option value="none">Locations</option>
                                                <option value="none">New York</option>
                                                <option value="none">California</option>
                                                <option value="none">Washington</option>
                                                <option value="none">Birmingham</option>
                                                <option value="none">Chicago</option>
                                                <option value="none">Phoenix</option>
                                            </select>
                                        </label>
                                    </div>
                                    <i class="lni-map-marker"></i>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-xs-12">
                                <div class="form-group">
                                    <div class="search-category-container">
                                        <label class="styled-select">
                                            <select>
                                                <c:forEach var="c" items="${categories}" >
                                                    <option>${c.name}</option>
                                                </c:forEach>
                                            </select>
                                        </label>
                                    </div>
                                    <i class="lni-layers"></i>
                                </div>
                            </div>
                            <div class="col-lg-1 col-md-6 col-xs-12">
                                <button type="submit" class="button"><i class="lni-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div> 
</div>  
<!-- Category Section Start -->
<section class="category section bg-gray">
    <div class="container">
        <div class="section-header">  
            <h2 class="section-title">Browse Categories</h2>
            <p>Most popular categories of portal, sorted by popularity</p>
        </div>
        <div class="row">   
            <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-1">
                        <i class="lni-home"></i>
                    </div>
                    <h3>Finance</h3>
                    <p>(4286 jobs)</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-2">
                        <i class="lni-world"></i>
                    </div>
                    <h3>Sale/Markting</h3>
                    <p>(2000 jobs)</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12 f-category">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-3">
                        <i class="lni-book"></i>
                    </div>
                    <h3>Education/Training</h3>
                    <p>(1450 jobs)</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12 f-category border-right-0">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-4">
                        <i class="lni-display"></i>
                    </div>
                    <h3>Technologies</h3>
                    <p>(5100 jobs)</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-5">
                        <i class="lni-brush"></i>
                    </div>
                    <h3>Art/Design</h3>
                    <p>(5079 jobs)</p>
                </a>
            </div>            
            <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-6">
                        <i class="lni-heart"></i>
                    </div>
                    <h3>Healthcare</h3>
                    <p>(3235 jobs)</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12 f-category border-bottom-0">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-7">
                        <i class="lni-funnel"></i>
                    </div> 
                    <h3>Science</h3>
                    <p>(1800 jobs)</p> 
                </a>
            </div>            
            <div class="col-lg-3 col-md-6 col-xs-12 f-category border-right-0 border-bottom-0">
                <a href="browse-jobs.html">
                    <div class="icon bg-color-8">
                        <i class="lni-cup"></i>
                    </div>
                    <h3>Food Services</h3>
                    <p>(4286 jobs)</p>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- Category Section End -->  

<!-- Listings Section Start -->
<section id="job-listings" class="section">
    <div class="container text-center wow  wow fadeInUp">
        <h1 class="section-title">sdfafasdasdddddddddddddddddddddddddd</h1>
        <h6>Purchase Full Version to Get All Pages, Features, Docs and Support!</h6></br>
        <a href="https://rebrand.ly/jobx-gg" target="_blank" rel="nofollow" class="btn btn-common btn-lg"><span class="lni-pointer-right"></span> Purchase Now!</a>
    </div>
</section>
<!-- Listings Section End -->

<!-- Browse jobs Section Start -->
<div id="browse-jobs" class="section bg-gray">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="text-wrapper">
                    <div>
                        <h3>7,000+ Browse Jobs</h3>
                        <p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide. The right job is out there.</p>
                        <a class="btn btn-common" href="#">Search jobs</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="img-thumb">
                    <img class="img-fluid" src="assets/img/search.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Browse jobs Section End -->   

<!-- How It Work Section Start -->
<section class="how-it-works section">
    <div class="container">
        <div class="section-header">  
            <h2 class="section-title">How It Works?</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>      
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="work-process">
                    <span class="process-icon">
                        <i class="lni-user"></i>
                    </span>
                    <h4>Create an Account</h4>
                    <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="work-process step-2">
                    <span class="process-icon">
                        <i class="lni-search"></i>
                    </span>
                    <h4>Search Jobs</h4>
                    <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="work-process step-3">
                    <span class="process-icon">
                        <i class="lni-cup"></i>
                    </span>
                    <h4>Apply</h4>
                    <p>Post a job to tell us about your project. We'll quickly match you with the right freelancers find place best.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- How It Work Section End -->

<!-- Latest Section Start -->
<section id="latest-jobs" class="section bg-gray">
    <div class="container">
        <div class="section-header">  
            <h2 class="section-title">Latest Jobs</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>       
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">UX Designer</a></h3>
                        <p class="brand">MagNews</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="full-time">Full Time</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-2.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">UI Designer</a></h3>
                        <p class="brand">Hunter Inc.</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="part-time">Part Time</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-3.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">Web Developer</a></h3>
                        <p class="brand">MagNews</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="full-time">Full Time</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-4.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">UX Designer</a></h3>
                        <p class="brand">AmazeSoft</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="full-time">Full Time</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-2.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">Digital Marketer</a></h3>
                        <p class="brand">Bingo</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="part-time">Part Time</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-xs-12">
                <div class="jobs-latest">
                    <div class="img-thumb">
                        <img src="assets/img/features/img-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><a href="job-details.html">Web Developer</a></h3>
                        <p class="brand">MagNews</p>
                        <div class="tags">  
                            <span><i class="lni-map-marker"></i> New York</span>  
                            <span><i class="lni-user"></i>  John Smith</span> 
                        </div>
                        <div class="tag mb-3"><i class="lni-tag"></i> #Html #Css #PHP</div>
                        <span class="full-time">Full Time</span>
                    </div>
                </div>
            </div>
            <div class="col-12 text-center mt-4">
                <a href="job-page.html" class="btn btn-common">Browse All Jobs</a>
            </div>
        </div>
    </div>
</section>
<!-- Latest Section End -->

<!-- Testimonial Section Start -->
<section id="testimonial" class="section">
    <div class="container">
        <div class="section-header">  
            <h2 class="section-title">Clients Review</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>      
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                <div id="testimonials" class="touch-slider owl-carousel">
                    <div class="item">
                        <div class="testimonial-item">
                            <div class="author">
                                <div class="img-thumb">
                                    <img src="assets/img/testimonial/img1.png" alt="">
                                </div>
                            </div>
                            <div class="content-inner">
                                <p class="description">Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui.</p>
                                <div class="author-info">
                                    <h2><a href="#">Jessica</a></h2>
                                    <span>Senior Accountant</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-item">
                            <div class="author">
                                <div class="img-thumb">
                                    <img src="assets/img/testimonial/img2.png" alt="">
                                </div>
                            </div>
                            <div class="content-inner">
                                <p class="description">Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui.</p>
                                <div class="author-info">
                                    <h2><a href="#">John Doe</a></h2>
                                    <span>Project Menager</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-item">
                            <div class="author">
                                <div class="img-thumb">
                                    <img src="assets/img/testimonial/img3.png" alt="">
                                </div>
                            </div>
                            <div class="content-inner">
                                <p class="description">Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui Morbi quam enim, cursus non erat pretium veh icula finibus ex stibulum venenatis viverra dui.</p>
                                <div class="author-info">
                                    <h2><a href="#">Helen</a></h2>
                                    <span>Engineer</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->  

<!-- Start Pricing Table Section -->
<div id="pricing" class="section bg-gray">
    <div class="container text-center wow  wow fadeInUp">
        <h1 class="section-title">You Using Free Lite Version :(</h1>
        <h6>Purchase Full Version to Get All Pages, Features, Docs and Support!</h6></br>
        <a href="https://rebrand.ly/jobx-gg" target="_blank" rel="nofollow" class="btn btn-common btn-lg"><span class="lni-pointer-right"></span> Purchase Now!</a>
    </div>
</div>
<!-- End Pricing Table Section -->

<!-- Blog Section -->
<section id="blog" class="section">
    <!-- Container Starts -->
    <div class="container">
        <div class="section-header">  
            <h2 class="section-title">Blog Post</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et <br> metus effici turac fringilla lorem facilisis.</p>      
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                <!-- Blog Item Starts -->
                <div class="blog-item-wrapper">
                    <div class="blog-item-img">
                        <a href="single-post.html">
                            <img src="assets/img/blog/img1.jpg" alt="">
                        </a>              
                    </div>
                    <div class="blog-item-text"> 
                        <h3><a href="single-post.html">Tips to write an impressive resume online for beginner</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                    </div>
                    <a class="readmore" href="#">Read More</a>
                </div>
                <!-- Blog Item Wrapper Ends-->
            </div>

            <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                <!-- Blog Item Starts -->
                <div class="blog-item-wrapper">
                    <div class="blog-item-img">
                        <a href="single-post.html">
                            <img src="assets/img/blog/img2.jpg" alt="">
                        </a>              
                    </div>
                    <div class="blog-item-text"> 
                        <h3><a href="single-post.html">Let's explore 5 cool new features in JobBoard theme</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                    </div>
                    <a class="readmore" href="#">Read More</a>
                </div>
                <!-- Blog Item Wrapper Ends-->
            </div>

            <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
                <!-- Blog Item Starts -->
                <div class="blog-item-wrapper">
                    <div class="blog-item-img">
                        <a href="single-post.html">
                            <img src="<c:url value="/images/client-4.jpg"/>" alt="">
                        </a>              
                    </div>
                    <div class="blog-item-text"> 
                        <h3><a href="#">How to convince recruiters and get your dream job</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.</p>
                    </div>
                    <a class="readmore" href="#">Read More</a>
                </div>
                <!-- Blog Item Wrapper Ends-->
            </div>
        </div>
    </div>
</section>
<!-- blog Section End -->

<!-- download Section Start -->
<section id="download" class="section bg-gray">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-8 col-xs-12">
                <div class="download-wrapper">
                    <div>
                        <div class="download-text">
                            <h4>Download Our Best Apps</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ellentesque dignissim quam et metus effici turac fringilla lorem facilisis, Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                        <div class="app-button">
                            <a href="#" class="btn btn-border"><i class="lni-apple"></i>Download <br> <span>From App Store</span></a>
                            <a href="#" class="btn btn-common btn-effect"><i class="lni-android"></i> Download <br> <span>From Play Store</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-4 col-xs-12">            
                <div class="download-thumb">
                    <img class="img-fluid" src="<c:url value="/images/app.png"/>" alt="logo-app">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- download Section Start -->