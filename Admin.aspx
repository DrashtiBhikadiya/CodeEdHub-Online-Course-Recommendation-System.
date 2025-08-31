<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <main aria-labelledby="title">
     <title>CodeEdHub - Admin Login</title>



     <section class="vh-100">
         <div class="container-fluid h-custom">
             <div class="row d-flex justify-content-center align-items-center h-100">
                 <div class="col-md-9 col-lg-6 col-xl-5">
                     <img src="Content/assets/img/admin.png" class="img-fluid" alt="Sample image" />
                 </div>
                 <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                     <form>
                         <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" id="lbl">
                             <p class="lead fw-normal mb-0 me-3">Admin Login</p>

                         </div>
                         <hr />
                         <br />
                         <!-- user input -->
                         <div class="form-outline mb-4">
                             <asp:TextBox ID="txtadusrnm" placeholder="Admin user" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Username mandatory" ForeColor="Red" Font-Italic="true" ControlToValidate="txtadusrnm"></asp:RequiredFieldValidator>
                         </div>
                         <!-- password input -->
                         <div class="form-outline mb-4">
                             <asp:TextBox ID="txtadpsswrd" placeholder="Password" CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password mandatory" ForeColor="Red" Font-Italic="true" ControlToValidate="txtadpsswrd"></asp:RequiredFieldValidator>
                         </div>
                         <asp:Label ID="lblvalidate" runat="server" Visible="False" ForeColor="Red" Font-Italic="True"></asp:Label>



                         <div class="text-center text-lg-start mt-4 pt-2">
                             <asp:Button ID="LoginBtn" runat="server" Text="Login"  class="btn btn-primary btn-lg" OnClick="LoginBtn_Click" />
                             <!--  <asp:Button ID="Button1" runat="server" Text="Login"  
           style="padding-left: 2.5rem; padding-right: 2.5rem;"  /> -->
                         </div>

                     </form>
                 </div>
             </div>
         </div>

     </section>

 </main>

</asp:Content>
