<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet" />

    <title>EduPredict</title>
    <!-- Favicon icon -->
    <link rel="icon" id="dynamic-favicon" type="image/png" sizes="16x16" href="" class="rounded" />

    <script>
        function createFavicon() {
            // Create a canvas element
            var canvas = document.createElement('canvas');
            canvas.width = 64;
            canvas.height = 64;
            var ctx = canvas.getContext('2d');

            // Apply border-radius using canvas clipping
            ctx.beginPath();
            ctx.arc(32, 32, 32, 0, Math.PI * 2); // Circular clipping for the border radius
            ctx.clip();

            // Fill background with #6b51df color
            ctx.fillStyle = "#7a6ad8";
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            // Set the text properties and draw "E" in white at the center
            ctx.font = "bold 45px Arial";
            ctx.fillStyle = "#ffffff";
            ctx.textAlign = "center";
            ctx.textBaseline = "middle";
            ctx.fillText("E", canvas.width / 2, canvas.height / 2);

            // Create a data URL and set it as the favicon
            var link = document.getElementById('dynamic-favicon');
            link.href = canvas.toDataURL("image/png");
        }

        // Call the function to create the favicon
        createFavicon();
    </script>
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('user/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="{{ asset('user/assets/css/fontawesome.css') }}" />
    <link rel="stylesheet" href="{{ asset('user/assets/css/templatemo-scholar.css') }}" />
    <link rel="stylesheet" href="{{ asset('user/assets/css/owl.css') }}" />
    <link rel="stylesheet" href="{{ asset('user/assets/css/animate.css') }}" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!--

TemplateMo 586 Scholar

https://templatemo.com/tm-586-scholar

-->
    <style>
        .tableau-dashboard .tableau-embed iframe {
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body>
    <!-- ***** Preloader Start ***** -->
    <!-- <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div> -->
    <!-- ***** Preloader End ***** -->

    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="" class="logo" style="display: flex">
                            <img src="{{ asset('user/assets/images/logo.png') }}" alt="EduPredict Logo"
                                style="height: 50px; width: auto; margin-right: 10px;" />

                            <h1 style="font-size: 24px; margin-top: 10px">EduPredict</h1>
                        </a>

                        <!-- ***** Logo End ***** -->

                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section">
                                <a href="#top" class="active">Home</a>
                            </li>
                            <li class="scroll-to-section">
                                <a href="#services">Services</a>
                            </li>
                            <li class="scroll-to-section">
                                <a href="#about-us">About</a>
                            </li>
                            <li class="scroll-to-section"><a href="#dashboard">Dashboard</a></li>
                            <li class="scroll-to-section"><a href="#contact">Contact</a></li>
                            <li class="scroll-to-section">
                                <a href="{{ route('login') }}">Login</a>
                            </li>
                        </ul>
                        <a class="menu-trigger">
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <div class="main-banner" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="owl-carousel owl-banner">
                        <!-- Slide 1: Diverse Courses -->
                        <div class="item item-1">
                            <div class="header-text">
                                <span class="category">Diverse Courses</span>
                                <h2>Expand Your Knowledge with Our Expert-Led Programs</h2>
                                <p>
                                    Explore a wide range of subjects with courses designed by industry leaders and top
                                    educators.
                                    Gain in-depth knowledge and practical skills to advance your learning journey.
                                </p>
                            </div>
                        </div>
                        <!-- Slide 2: Achieve Your Goals -->
                        <div class="item item-2">
                            <div class="header-text">
                                <span class="category">Achieve Success</span>
                                <h2>Turn Your Ambitions into Achievements</h2>
                                <p>
                                    With our structured courses and dedicated support, reach your academic and career
                                    goals.
                                    Let us guide you every step of the way towards your aspirations.
                                </p>
                            </div>
                        </div>
                        <!-- Slide 3: Flexible Learning -->
                        <div class="item item-3">
                            <div class="header-text">
                                <span class="category">Flexible Learning</span>
                                <h2>Learn on Your Schedule, Anytime, Anywhere</h2>
                                <p>
                                    Access quality education at your convenience. Our online platform is available
                                    whenever you are,
                                    making learning flexible and accessible for everyone.
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="services section" id="services">
        <div class="container">
            <div class="row">
                <!-- Service 1: Online Degrees -->
                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon">
                            <img src="{{ asset('user/assets/images/service-01.png') }}" alt="online degrees" />
                        </div>
                        <div class="main-content">
                            <h4>Online Degrees</h4>
                            <p>
                                Earn recognized degrees from top institutions at your own pace.
                                Access comprehensive programs designed to advance your career and knowledge.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Service 2: Short Courses -->
                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon">
                            <img src="{{ asset('user/assets/images/service-02.png') }}" alt="short courses" />
                        </div>
                        <div class="main-content">
                            <h4>Short Courses</h4>
                            <p>
                                Boost your skills quickly with our curated short courses, covering
                                a wide range of topics from digital marketing to programming.
                            </p>
                        </div>
                    </div>
                </div>
                <!-- Service 3: Expert Guidance -->
                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon">
                            <img src="{{ asset('user/assets/images/service-03.png') }}" alt="expert guidance" />
                        </div>
                        <div class="main-content">
                            <h4>Expert Guidance</h4>
                            <p>
                                Learn from experienced mentors and industry experts who provide
                                valuable insights and personalized support to enhance your learning experience.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section about-us" id="about-us">
        <div class="container">
            <div class="row">
                <!-- Accordion Section -->
                <div class="col-lg-6 offset-lg-1">
                    <div class="accordion" id="accordionExample">
                        <!-- Accordion Item 1: Starting with EduPredict -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    How does EduPredict support your learning journey?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show"
                                aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    At EduPredict, we believe in personalized learning paths to help you achieve
                                    your goals. Our expert instructors and adaptive learning resources ensure
                                    you get the support you need every step of the way.
                                </div>
                            </div>
                        </div>
                        <!-- Accordion Item 2: Collaboration Process -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    What does the EduPredict experience look like?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Our platform combines interactive lessons, real-world projects, and peer support
                                    to create an immersive learning experience. You’ll collaborate, connect, and
                                    grow within a community of motivated learners.
                                </div>
                            </div>
                        </div>
                        <!-- Accordion Item 3: EduPredict Advantage -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseThree" aria-expanded="false"
                                    aria-controls="collapseThree">
                                    Why choose EduPredict?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse"
                                aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    EduPredict offers curated courses developed by leading educators and industry
                                    experts. Our flexible, engaging programs help learners stay motivated and
                                    achieve meaningful outcomes at their own pace.
                                </div>
                            </div>
                        </div>
                        <!-- Accordion Item 4: Support and Resources -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseFour" aria-expanded="false"
                                    aria-controls="collapseFour">
                                    How can EduPredict help you succeed?
                                </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    With 24/7 access to resources, personalized feedback, and mentorship from
                                    professionals, EduPredict ensures you have the tools to thrive in any field.
                                    We’re committed to helping you unlock your full potential.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- About Us Text Section -->
                <div class="col-lg-5 align-self-center">
                    <div class="section-heading">
                        <h6>About Us</h6>
                        <h2>Why EduPredict is your ideal online learning partner</h2>
                        <p>
                            EduPredict is more than an online academy—it’s a community designed to help you
                            excel. We offer accessible, high-quality education for students and professionals
                            seeking to grow and make an impact.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section fun-facts">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-lg-3 col-md-6">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="150" data-speed="1000"></h2>
                                    <p class="count-text">Happy Students</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="804" data-speed="1000"></h2>
                                    <p class="count-text">Course Hours</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="counter">
                                    <h2 class="timer count-title count-number" data-to="50" data-speed="1000"></h2>
                                    <p class="count-text">Employed Students</p>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="counter end">
                                    <h2 class="timer count-title count-number" data-to="15" data-speed="1000"></h2>
                                    <p class="count-text">Years Experience</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container pt-4 px-4">
        <div class="row">
            <div class="col-lg-12 text-center">
                <!-- Centered Section Heading -->
                <div class="section-heading">
                    <h6>Data Insights</h6>
                    <h2>Explore Our Interactive Dashboard</h2>
                    <p>
                        Dive into data-driven insights to track progress, analyze trends,
                        and explore key metrics that drive academic success and improvement.
                    </p>
                </div>
            </div>
        </div>

        <!-- Charts Grid -->
        <div class="row g-4">
            <!-- User Distribution Pie Chart -->
            <div class="col-sm-12 col-xl-6">
                <div class="bg-light rounded p-4">
                    <h6 class="mb-4">User Distribution</h6>
                    <canvas id="userDistributionChart"></canvas>
                </div>
            </div>

            <!-- Campus Distribution Bar Chart -->
            <div class="col-sm-12 col-xl-6">
                <div class="bg-light rounded p-4">
                    <h6 class="mb-4">Campus-wise Student Distribution</h6>
                    <canvas id="campusDistributionChart"></canvas>
                </div>
            </div>
        </div>

        <div class="row g-4 mt-4">
            <!-- Student Trends Line Chart -->
            <div class="col-sm-12 col-xl-6">
                <div class="bg-light rounded p-4">
                    <h6 class="mb-4">Campus-wise Student Trends</h6>
                    <canvas id="studentTrendsChart"></canvas>
                </div>
            </div>

            <!-- Freeze Students Stacked Bar Chart -->
            <div class="col-sm-12 col-xl-6">
                <div class="bg-light rounded p-4">
                    <h6 class="mb-4">Active vs Freeze Students by Campus</h6>
                    <canvas id="freezeStudentsChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <!-- Add Chart.js -->
    <!-- Add Chart.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // User Distribution Pie Chart with updated colors and hover effects
            new Chart(document.getElementById('userDistributionChart'), {
                type: 'pie',
                data: {
                    labels: ['Admin', 'Principal', 'Teachers', 'Students'],
                    datasets: [{
                        data: [
                            {{ $total_admin }},
                            {{ $total_principle }},
                            {{ $total_teacher }},
                            {{ $total_student }}
                        ],
                        backgroundColor: [
                            '#4A90E2', // Blue for Admin
                            '#50E3C2', // Teal for Principal
                            '#F5A623', // Orange for Teachers
                            '#7ED321' // Green for Students
                        ],
                        borderWidth: 2,
                        borderColor: '#ffffff'
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                padding: 20,
                                font: {
                                    size: 12
                                }
                            }
                        },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    let label = context.label || '';
                                    let value = context.raw || 0;
                                    let total = context.dataset.data.reduce((a, b) => a + b, 0);
                                    let percentage = ((value * 100) / total).toFixed(1);
                                    return `${label}: ${value} (${percentage}%)`;
                                }
                            }
                        }
                    }
                }
            });

            // Campus Distribution Bar Chart with gradient
            const barCtx = document.getElementById('campusDistributionChart').getContext('2d');
            const barGradient = barCtx.createLinearGradient(0, 0, 0, 400);
            barGradient.addColorStop(0, '#36A2EB');
            barGradient.addColorStop(1, '#87CEEB');

            new Chart(barCtx, {
                type: 'bar',
                data: {
                    labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                    datasets: [{
                        label: 'Number of Students',
                        data: [
                            {{ $total_korangi_students }},
                            {{ $total_munawar_students }},
                            {{ $total_online_academy_students }},
                            {{ $total_Islamabad_students }}
                        ],
                        backgroundColor: barGradient,
                        borderRadius: 5
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: {
                                drawBorder: false
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });

            // Student Trends Line Chart with smooth curves
            new Chart(document.getElementById('studentTrendsChart'), {
                type: 'line',
                data: {
                    labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                    datasets: [{
                        label: 'Students per Campus',
                        data: [
                            {{ $total_korangi_students }},
                            {{ $total_munawar_students }},
                            {{ $total_online_academy_students }},
                            {{ $total_Islamabad_students }}
                        ],
                        borderColor: '#36A2EB',
                        backgroundColor: 'rgba(54, 162, 235, 0.1)',
                        tension: 0.4,
                        fill: true,
                        pointBackgroundColor: '#ffffff',
                        pointBorderColor: '#36A2EB',
                        pointBorderWidth: 2,
                        pointRadius: 4
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // New Freeze Students Stacked Bar Chart
            new Chart(document.getElementById('freezeStudentsChart'), {
                type: 'bar',
                data: {
                    labels: ['Korangi', 'Munawar', 'Online Academy', 'Islamabad'],
                    datasets: [{
                        label: 'Active Students',
                        data: [
                            {{ $total_korangi_students - ($freeze_korangi_students ?? 0) }},
                            {{ $total_munawar_students - ($freeze_munawar_students ?? 0) }},
                            {{ $total_online_academy_students - ($freeze_online_academy_students ?? 0) }},
                            {{ $total_Islamabad_students - ($freeze_Islamabad_students ?? 0) }}
                        ],
                        backgroundColor: '#4BC0C0'
                    }, {
                        label: 'Freeze Students',
                        data: [
                            {{ $freeze_korangi_students ?? 0 }},
                            {{ $freeze_munawar_students ?? 0 }},
                            {{ $freeze_online_academy_students ?? 0 }},
                            {{ $freeze_Islamabad_students ?? 0 }}
                        ],
                        backgroundColor: '#FF6384'
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        x: {
                            stacked: true
                        },
                        y: {
                            stacked: true,
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    let label = context.dataset.label || '';
                                    let value = context.raw || 0;
                                    return `${label}: ${value}`;
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>

    <div class="contact-us section" id="contact">
        <div class="container">
            <div class="row">
                <!-- Contact Info Section -->
                <div class="col-lg-6 align-self-center">
                    <div class="section-heading">
                        <h6>Contact Us</h6>
                        <h2>We're Here to Help You</h2>
                        <p>
                            Reach out to us for any inquiries, support, or to learn more about how EduPredict can
                            support your learning journey.
                            Our team is available to provide you with the guidance and resources you need to excel.
                        </p>
                    </div>
                </div>

                <!-- Contact Form Section -->
                <div class="col-lg-6">
                    <div class="contact-us-content">
                        <form id="contact-form" action="" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="text" name="name" id="name" placeholder="Your Name"
                                            autocomplete="on" required />
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <input type="email" name="email" id="email" pattern="[^ @]*@[^ @]*"
                                            placeholder="Your E-mail" required />
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <textarea name="message" id="message" placeholder="Your Message" required></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="orange-button">
                                            Send Message
                                        </button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>

        <div class="container">
            <div class="col-lg-12">
                <p>
                    Copyright © 2024 EduPredict. All rights reserved.

                </p>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="{{ asset('user/vendor/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('user/vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('user/assets/js/isotope.min.js') }}"></script>
    <script src="{{ asset('user/assets/js/owl-carousel.js') }}"></script>
    <script src="{{ asset('user/assets/js/counter.js') }}"></script>
    <script src="{{ asset('user/assets/js/custom.js') }}"></script>

</body>

</html>
