<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="FinalProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!-- ======= Portfolio Section ======= -->
 <section id="portfolio" class="portfolio section-bg" style="margin-left:300px;">
    <div class="imageContainer">

   
    <div class="container">

        <div class="section-title">
            <h2>Portfolio</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row" data-aos="fade-up">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-app">Top Courses</li>
                    <li data-filter=".filter-card">UI/UX Design</li>
                    <li data-filter=".filter-job">Best Jobs for 2024-25</li>
                    <li data-filter=".filter-project">Projects Title</li>

                </ul>
            </div>
        </div>
        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="100">
        

            <asp:Repeater ID="imageRepeater" runat="server">
    <ItemTemplate>
        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
                <asp:Image ID="imgDisplay" runat="server" CssClass="img-fluid" 
                    ImageUrl='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("CourseImage")) %>' />
                <div class="portfolio-links">
                    <a data-gallery="portfolioGallery" class="portfolio-lightbox" title='<%# Eval("CourseTitle") %>'><i class="bx bx-plus"></i></a>
                    <a href='<%# Eval("CourseLink") %>' title="More Details"><i class="bx bx-link"></i></a>
               
                    </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
        
     
            </div>

            <!-- Project Titles-->
            <div class=" portfolio-item filter-project" class="table table-striped table-bordered">
                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="CProjectTitle" HeaderText="CProjectTitle" SortExpression="CProjectTitle" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CProjectTitle] FROM [CProject]"></asp:SqlDataSource>
                </div>

            <div class="portfolio-item filter-project">
                <asp:GridView ID="GridView2" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="JavaProjectTitle" HeaderText="JavaProjectTitle" SortExpression="JavaProjectTitle" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [JavaProjectTitle] FROM [JavaProjectTitleTable]"></asp:SqlDataSource>
            </div>

            <div class="portfolio-item filter-project">
                <asp:GridView ID="GridView3" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="PythonProjectTitle" HeaderText="PythonProjectTitle" SortExpression="PythonProjectTitle" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PythonProjectTitle] FROM [PythonProjectTitleTable]"></asp:SqlDataSource>
                </div>



        </div>

    </div>
         </div>
</section>
<!-- End Portfolio Section -->



</asp:Content>
