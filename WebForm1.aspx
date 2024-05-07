<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppEHR.WebForm1" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Al-Shifa Medical Complex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
   


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">


  <!-- Template Main CSS File -->
   
  <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">alshifa@gmail.com</a>
        <i class="bi bi-phone"></i> 042-37492005
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Al-Shifa</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link scrollto" href="#departments">Departments</a></li>
          <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
        <%--  <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>--%>
             <%-- <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Mental Farheen</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                 
                </ul>--%>
          <%--    </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>--%>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#appointment" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h1>Welcome to Al-Shifa</h1>
      <h2>Your Health is our Priority.</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="row">
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="content">
              <h3>Why Choose Al-Shifa?</h3>
              <p>
               We are a team of excellent staff and experienced doctors entitled to serve you and give you the best treatment possible.
              </p>
              <div class="text-center">
                <a href="#" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-8 d-flex align-items-stretch">
            <div class="icon-boxes d-flex flex-column justify-content-center">
              <div class="row">
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-heart"></i>
                  <h4>Welcome to Our Hospital</h4>
<p>Discover a compassionate and dedicated team committed to your well-being. We provide comprehensive healthcare services tailored to meet your unique needs.</p>
                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-receipt"></i>
                   <h4>Billing</h4>
<p>For billing purposes kindly contact your healthcare provider.</p>

                  </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box mt-4 mt-xl-0">
                    <i class="bx bx-first-aid"></i>
                   <h4>Pharmacy</h4>
<p>Welcome to Al-Shifa's Pharmacy, where your health and well-being are our top priorities. As an integral part of Al-Shifa, our pharmacy plays a crucial role in providing high-quality care and medication services to our patients. Location: 27-H Model Town, lhr.</p>

                  </div>
                </div>
              </div>
            </div><!-- End .content-->
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">
          <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="glightbox play-btn mb-4"></a>
          </div>

          <div class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
            <h3>Our Mission</h3>
            <p>At Al-Shifa, our mission is to provide compassionate, high-quality healthcare services to our community, delivered with integrity and excellence.Founded in 2004, Al-Shifa has been serving our community for 20 years. Over the decades, we have grown and evolved, expanding our services and facilities to meet the changing needs of our patients.</p>



          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container">

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="fas fa-user-md"></i>
              <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1" class="purecounter"></span>
              <p>Doctors</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="far fa-hospital"></i>
              <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1" class="purecounter"></span>
              <p>Departments</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="fas fa-flask"></i>
              <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1" class="purecounter"></span>
              <p>Research Labs</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="fas fa-award"></i>
              <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1" class="purecounter"></span>
              <p>Awards</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

   <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title">
          <h2> Our Services</h2>
          <p>Our hospital provides a wide range of medical services to meet the diverse needs of our patients. Whether you require routine check-ups, specialized treatments, or emergency care, our dedicated team of healthcare professionals is here to provide you with exceptional medical care.</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-heartbeat"></i></div>
              <h4><a href="">Primary Care</a></h4>
              <p> Our primary care services focus on preventive care, health maintenance, and treatment of common medical conditions. Our team provide comprehensive healthcare services for patients of all ages.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-pills"></i></div>
              <h4><a href="">Specialty Care</a></h4>
              <p>Our hospital offers a wide range of specialty care services, including cardiology, neurology, oncology, orthopedics, and more.</p>

            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-hospital-user"></i></div>
              <h4><a href="">Emergency Services</a></h4>
              <p>Our emergency department is staffed 24/7 with highly trained physicians, nurses, and support staff to provide immediate medical care for patients with serious injuries or illnesses.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-dna"></i></div>
              <h4><a href="">Diagnostic Imaging</a></h4>
              <p> Our state-of-the-art imaging center offers a range of diagnostic services, including X-rays, MRIs, CT scans, ultrasounds, and mammograms.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-wheelchair"></i></div>
              <h4><a href="">Surgery</a></h4>
              <p> Our surgical team consists of skilled surgeons, nurses, and support staff who specialize in a wide range of surgical procedures, from routine surgeries to complex, minimally invasive surgeries.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
            <div class="icon-box">
              <div class="icon"><i class="fas fa-notes-medical"></i></div>
              <h4>Rehabilitation Services</h4>
              <p>Our rehabilitation services help patients regain strength, mobility, and independence following illness, injury, or surgery.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->
<!-- ======= Appointment Section ======= -->

    <form id="form1" runat="server">
      <section id="appointment" class="appointment section-bg">
        <div class="container">
          <div class="section-title">
            <h2>Make an Appointment</h2>
            <p>At our hospital, we understand the importance of timely access to healthcare services. That's why we offer convenient options for scheduling appointments with our healthcare providers.</p>
          </div>
          <div class="form-group">
            <asp:TextBox ID="nameField" runat="server" CssClass="form-control" placeholder="Your Name" Required="true"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:TextBox ID="emailField" runat="server" CssClass="form-control" placeholder="Your Email" Required="true"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:TextBox ID="appointmentDateField" runat="server" CssClass="form-control" placeholder="Appointment Date" Required="true"></asp:TextBox>
          </div>
          <div class="form-group">
            <asp:DropDownList ID="departmentSelectField" runat="server" CssClass="form-control" Required="true">
              <asp:ListItem Text="Select Department" Value=""></asp:ListItem>
              <asp:ListItem Text="Surgery" Value="Surgery"></asp:ListItem>
              <asp:ListItem Text="Cardiology" Value="Cardiology"></asp:ListItem>
              <asp:ListItem Text="Neurology" Value="Neurology"></asp:ListItem>
              <asp:ListItem Text="Oncology" Value="Oncology"></asp:ListItem>
              <asp:ListItem Text="Pedritician" Value="Pedritician"></asp:ListItem>


            </asp:DropDownList>
          </div>
          <div class="form-group">
            <asp:DropDownList ID="doctorSelectField" runat="server" CssClass="form-control" Required="true">
              <asp:ListItem Text="Select Doctor" Value="" Disabled="true"></asp:ListItem>
              <asp:ListItem Value="dr_smith">Dr. Smith</asp:ListItem>
                <asp:ListItem Value="dr_danish">Dr. Danish</asp:ListItem>
                <asp:ListItem Value="dr_david">Dr. David</asp:ListItem>
              <asp:ListItem Value="dr_jones">Dr. Jones</asp:ListItem>
              <asp:ListItem Value="dr_doe">Dr. Doe</asp:ListItem>
                <asp:ListItem Value="dr_farheen">Dr. Farheen</asp:ListItem>
                <asp:ListItem Value="dr_wania">Dr. Wania</asp:ListItem>
                <asp:ListItem Value="dr_hadi">Dr. Hadi</asp:ListItem>
                <asp:ListItem Value="dr_hannah">Dr. Hannah</asp:ListItem>
            </asp:DropDownList>
          </div>
          <div class="form-group">
            <asp:TextBox ID="messageField" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" placeholder="Message" Required="true"></asp:TextBox>
          </div>
          <div class="text-center">
            <asp:Button ID="submitbutton" runat="server" Text="Make Appointment" CssClass="appointmentbutton" OnClick="SubmitButton_Click" />
          </div>
        </div>
      </section>
      <div id="Div1" runat="server"></div>

      <!-- GridView Section -->
      <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
      </div>
    </form>
    <div id="confirmationMessage" runat="server"></div>
  </div>
</section>
<!-- End Appointment Section -->

    <!-- ======= Departments Section ======= -->
    <section id="departments" class="departments">
      <div class="container">

        <div class="section-title">
          <h2>Departments</h2>
          <p>  We pride ourselves on providing comprehensive and specialized care across a wide range of medical disciplines. Whether you're seeking information about cardiology, neurology, oncology, pediatrics, or any other medical specialty, our Departments section offers a wealth of resources to help you navigate your healthcare journey with confidence and ease.</p>
        </div>

        <div class="row gy-4">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Cardiology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">Neurology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">Hepatology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">Pediatrics</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-5">Eye Care</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Cardiology</h3>
                    <p class="fst-italic"> Led by a team of highly skilled cardiologists, cardiac surgeons, nurses, and support staff, we strive to offer comprehensive services encompassing prevention, diagnosis, and treatment of heart-related disorders. </p>
                    <p> We provide state-of-the-art cardiac facilities, cutting-edge technologies, and specialized procedures available to address a wide range of cardiovascular issues. Whether you're seeking assistance with heart disease management, cardiac imaging, interventional cardiology, or electrophysiology, our team is here to provide personalized care tailored to your unique needs. </p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/departments-1.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Neurology</h3>
                    <p class="fst-italic">Led by a team of experienced neurologists, neurosurgeons, and specialized healthcare professionals, we are committed to offering comprehensive services encompassing the diagnosis, management, and treatment of various neurological conditions.</p>
                    <p>We have neurological services, advanced diagnostic technologies, and specialized treatment modalities available to address a wide spectrum of neurological disorders. Whether you're seeking assistance with conditions such as stroke, epilepsy, multiple sclerosis, or Parkinson's disease, our team is here to provide expert care tailored to your individual needs.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/departments-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Hepatology</h3>
                    <p class="fst-italic">Led by a team of hepatologists, gastroenterologists, liver transplant surgeons, and specialized healthcare professionals, we are committed to offering specialized services encompassing the prevention, diagnosis, and management of various liver conditions.</p>
                    <p> hepatology services, advanced diagnostic techniques, and innovative treatment modalities available to address a wide range of liver diseases such as hepatitis, cirrhosis, fatty liver disease, and liver cancer. Whether you require liver screening, medical management, or liver transplant evaluation, our team is here to provide expert care tailored to your individual needs.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/departments-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Pediatrics</h3>
                    <p class="fst-italic">Led by a team of dedicated pediatricians, pediatric specialists, nurses, and child life specialists, we offer a wide range of specialized medical services tailored to meet the unique needs of young patients and their families.</p>
                    <p>We provide child-friendly facilities, specialized pediatric clinics, and comprehensive services, including pediatric primary care, pediatric surgery, neonatal intensive care, and pediatric subspecialties such as pediatric cardiology, pediatric neurology, and pediatric oncology.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/departments-4.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-5">
                <div class="row gy-4">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Eye Care</h3>
                    <p class="fst-italic"> Eye care is the gateway to clarity. Through diligent attention, we unveil the beauty of sight. Every blink a testament to our commitment to clear vision. Trust in our expertise, for in the delicate art of eye care, we illuminate your world with precision and care</p>
                    <p>Our dedicated team of ophthalmologists and eye care specialists provides expert care for all your vision needs. From routine eye exams to advanced surgical procedures, we're here to help you see the world clearly.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="assets/img/departments-5.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Departments Section -->

    <!-- ======= Doctors Section ======= -->
    <section id="doctors" class="doctors">
      <div class="container">

        <div class="section-title">
          <h2>Doctors</h2>
          <p>Meet the dedicated and experienced medical professionals who form the backbone of our institution. Our team of doctors encompasses a diverse range of specialties, each committed to providing exceptional care and expertise to our patients. Get to know our compassionate physicians, surgeons, and specialists who are dedicated to your health and well-being.</p>
        </div>

        <div class="row">

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Lalat Rafay</h4>
                <span>Chief Medical Officer</span>
                <p>Meet our Chief Medical Officer: the guiding force behind our medical excellence.</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4 mt-lg-0">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Shifa Yousaf</h4>
                <span>Anesthesiologist</span>
                <p>Introducing our Anesthesiologist: your trusted guardian of comfort during medical procedures.</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Salar Sikandar</h4>
                <span>Cardiology</span>
                <p>Introducing our Cardiology Team: Your heart's dedicated caretakers.</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mt-4">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="assets/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
              <%--<div class="member-info">--%>
                <h4>Hisaan Sakhawat</h4>
                <span>Neurosurgeon</span>
                <p>Meet our Neurosurgeon: Your brain's skilled navigator.</p>
                <div class="social">
                  <a href=""><i class="ri-twitter-fill"></i></a>
                  <a href=""><i class="ri-facebook-fill"></i></a>
                  <a href=""><i class="ri-instagram-fill"></i></a>
                  <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                </div>
              </div>
            </div>
          </div>

        </div>

     
    </section><!-- End Doctors Section -->

   <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container">

        <div class="section-title">
          <h2>Frequently Asked Questions</h2>
          <p>here are the  few frequently asked questions</p>
        </div>

        <div class="faq-list">
          <ul>
            <li data-aos="fade-up">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse" data-bs-target="#faq-list-1">What are your visiting hours?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                <p>
                 Visiting hours are typically from 8 am to 10 pm. However,call or book appointment before coming, visiting policies may have changed.Please check with the front desk for the most up-to-date information.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="100">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-2" class="collapsed">Do I need to make an appointment? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-2" class="collapse" data-bs-parent=".faq-list">
                <p>
                 Yes,it is recommended to make an appointment to ensure that you can see a healthcare provider at a convenient time. Walk-in appointments may be available for urgent issues.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="200">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-3" class="collapsed">How do I pay for my visit? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-3" class="collapse" data-bs-parent=".faq-list">
                <p>
                  Payment methods vary, but most medical complexes accept cash, credit/debit cards, and some insurance plans. It's best to check with your insurance provider or the billing department for specific details.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="300">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-4" class="collapsed">Can I request my medical records?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-4" class="collapse" data-bs-parent=".faq-list">
                <p>
               Yes, you can request a copy of your medical records. There may be a process involved, so it's advisable to contact the medical records department for assistance.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="400">
              <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-5" class="collapsed">Are there any specific instructions I should follow before my appointment?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-5" class="collapse" data-bs-parent=".faq-list">
                <p>
                 Depending on the type of appointment, there may be specific instructions such as fasting before a blood test or bringing certain documents. You should receive these instructions when you schedule your appointment, but if not, feel free to ask.
                </p>
              </div>
            </li>

          </ul>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                  <h3>Saul Goodman</h3>
                  <h4>Ceo &amp; Founder</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    The way I see it, every life is a pile of good things and bad things. The good things don't always soften the bad things, but vice versa, the bad things don't always spoil the good things or make them unimportant.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                  <h3>Iram Taimoor</h3>
                  <h4>Entrepreneur</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 The staff at Shifa Medical Center showed exceptional professionalism. They were attentive, respectful, and made me feel valued as a patient.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                  <h3>Saira Shakra</h3>
                  <h4>Fashion Designer</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
             I received outstanding care at Shifa Medical Center. The treatment I received was effective, and I noticed an improvement in my condition quickly.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                  <h3>Umer Bilal</h3>
                  <h4>Business Tycoon </h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
               After my procedure at Shifa Medical Center, the staff followed up with me to ensure I was recovering well. They provided clear instructions for aftercare, which I found very helpful.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                  <h3>Abdullah Rizwan</h3>
                  <h4>Software Engineer</h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  My experience at Shifa Medical Center was excellent from start to finish. The staff went above and beyond to provide me with the best care possible, and I would highly recommend them to anyone in need of medical attention.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container">

        <div class="section-title">
          <h2>Gallery</h2>
          <p>The life of a doctor is a life of service. The profession calls for a commitment that extends far beyond the ordinary, a devotion to the welfare of others that knows no bounds.</p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-1.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-2.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-3.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-4.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-5.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-6.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-7.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-8.jpg" class="galelry-lightbox">
                <img src="assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2>Contact</h2>
          <p>In order to contact us</p>
        </div>
      </div>

      <div>
       <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3402.1210150906196!2d74.34366481464503!3d31.52174305553817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39191992bdcd9e47%3A0x6d73272a05877e58!2sModel%20Town%20H%20Block%2C%20Lahore%2C%20Punjab%2C%20Pakistan!5e0!3m2!1sen!2s!4v1648863860327!5m2!1sen!2s" frameborder="0" allowfullscreen></iframe>

      </div>

      <div class="container">
        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>27-H Model Town,Lahore,Pakistan</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>alshifa@gmail.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>042-111-234-543</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

          <%--  <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>--%>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Al-Shifa</h3>
            <p>
              27-H Model Town <br>
              Lahore, Punjab<br>
              Pakistan <br><br>
              <strong>Phone:</strong> 11 12 44 622<br>
              <strong>Email:</strong> alshifa@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Lab Testing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Disease Diagnosis</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Healthcare</a></li>
<a href="admin/admin.aspx">Admin Page</a>

           <%--   <li><i class="bx bx-chevron-right"></i> <a href="#"></a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>--%>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>For Frequent updates and Hospital promotions subscribe to our Newsletter</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4"/>

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Al-Shifa</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
        <%--  Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>--%>
           <%-- <button onclick="showAdminLogin()">Admin Login</button>--%>
        </div>
      <%--    
          <div id="adminModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <h2>Admin Login</h2>
    <form id="adminLoginForm">
      <label for="adminId">Admin ID:</label>
      <input type="text" id="adminId" name="adminId">
      <label for="adminPassword">Password:</label>
      <input type="password" id="adminPassword" name="adminPassword">
      <button type="submit">Login</button>
    </form>
  </div>
</div>--%>



<%--          <div id="adminModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h2>Admin Login</h2>
        <form id="adminLoginForm" runat="server" onsubmit="return false">
            <div>
                <label for="adminId">Admin ID:</label>
                <asp:TextBox ID="adminId" runat="server" CssClass="admin-input"></asp:TextBox>
            </div>
            <div>
                <label for="adminPassword">Password:</label>
                <asp:TextBox ID="adminPassword" runat="server" TextMode="Password" CssClass="admin-input"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="loginButton" runat="server" Text="Login" CssClass="login-btn" OnClick="LoginButton_Click" />
            </div>
        </form>
    </div>
</div>
      </div>--%>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
           <%-- <a href="admin-login.html">Admin </a>--%>
      </div>
    </div>
  </footer><!-- End Footer -->

<%--  <div id="preloader"></div>--%>
<%--  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>--%>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <%--<script src="assets/vendor/php-email-form/validate.js"></script>--%>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
    
</body>

</html>
