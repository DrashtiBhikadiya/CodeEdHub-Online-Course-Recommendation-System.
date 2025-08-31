<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FinalProject.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <main aria-labelledby="title">


        <section id="contact" class="contact">
            <div class="container">

                <div class="section-title">
                    <h2>About Us</h2>
                </div>
            </div>

        </section>

        <!-- ======= Portfolio Details Section ======= -->
        <section id="portfolio-details" class="portfolio-details">
            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-8">
                        <div class="portfolio-details-slider swiper">
                            <div class="swiper-wrapper align-items-center">

                                <div class="swiper-slide">
                                    
                                    <img src="WebImage/Projecttitle.png" />

                                </div>

                                <div class="swiper-slide">
                                    
                                    <img src="WebImage/topcourses.png" />
                                </div>

                                <div class="swiper-slide">
                                   
                                    <img src="WebImage/UIUX.png" />

                                </div>

                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="portfolio-info">
                            <h3>WHAT WE PROVIDE</h3>
                            <ul>
                                <li><strong>UI/UX Design</strong> Web design & Mobile Apps</li>
                                <li><strong>Project Titles</strong>- Python, Java, C++, C & many more..</li>
                                <li><strong>Job Alert</strong>On demand of TOP COMPANY</li>
                                <li><strong>Top Courses</strong>On TREND</li>
                            </ul>
                        </div>
                        <div class="portfolio-description">
                            <h2>Empower your journey with us</h2>
                            <p>
                                – Explore in UI/UX design, curated job alerts, top courses, and inspiring project titles for your success.
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Portfolio Details Section -->


    </main>
    <!-- End #main -->




</asp:Content>
