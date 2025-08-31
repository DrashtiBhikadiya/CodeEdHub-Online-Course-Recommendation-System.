<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  

         <!-- ======= Contact Section ======= -->
 <section id="contact" class="contact">
     <div class="container" >

         <div class="section-title">
             <h2>Contact</h2>
             <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
         </div>

         

             <div class="container-fluid h-custom">
  <div class="row d-flex justify-content-center align-items-center h-100">


    <div class="row" data-aos="fade-in">

    <div class="col-lg-5 d-flex align-items-stretch">
        <div class="info">
            <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>A108 Adam Street, New York, NY 535022</p>
            </div>

            <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>info@example.com</p>
            </div>

            <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+1 5589 55488 55s</p>
            </div>

            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen></iframe>
        </div>

    </div>
    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
      <form>
        <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" id="lbl">
          <p class="lead fw-normal mb-0 me-3">Message </p>
         
        </div>
          <hr /> <br />
       <!-- user input -->
          <div class="form-outline mb-4">
          <asp:TextBox ID="txtClntNm" placeholder="Name"  CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"  ForeColor="Red" Font-Italic="true" ControlToValidate="txtClntNm"></asp:RequiredFieldValidator>
          </div>
          <!-- email input -->
          <div class="form-outline mb-4">
          <asp:TextBox ID="txtClntMail" placeholder="Mail Id"  CssClass="form-control form-control-lg" runat="server" TextMode="Email"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" Font-Italic="true" ControlToValidate="txtClntMail"></asp:RequiredFieldValidator>
          </div>
          <!-- Number -->
          <div class="form-outline mb-4">
          <asp:TextBox ID="txtClntNmbr" placeholder="Contact Number"  CssClass="form-control form-control-lg" runat="server" TextMode="Phone"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" Font-Italic="true" ControlToValidate="txtClntNmbr"></asp:RequiredFieldValidator>
          </div>
          
          <div class="form-outline mb-4">
          <asp:TextBox ID="txtClntMsg" placeholder="Message"  CssClass="form-control form-control-lg" runat="server" TextMode="MultiLine"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" Font-Italic="true" ControlToValidate="txtClntMsg"></asp:RequiredFieldValidator>
          </div>
      

        <div class="text-center text-lg-start mt-4 pt-2">
            <asp:Button ID="LoginBtn" runat="server" Text="Send Message"  class="btn btn-primary btn-lg" OnClick="LoginBtn_Click" />
         
        </div>

      </form>
    </div>
  </div>
</div>

</div>

             
       

         </div>

    
 </section><!-- End Contact Section -->

</asp:Content>
