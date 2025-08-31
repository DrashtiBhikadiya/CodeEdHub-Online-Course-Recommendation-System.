<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="FinalProject.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



                <main aria-labelledby="title">
       <title>Welcome - User</title>
       <link href="Content/assets/css/UserLogin.css" rel="stylesheet" /> 
    
           
       <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form>
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" id="lbl">
            <p class="lead fw-normal mb-0 me-3">Register </p>
            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="bi bi-facebook"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="bi bi-twitter"></i>
            </button>

            <button type="button" class="btn btn-primary btn-floating mx-1">
              <i class="bi bi-linkedin"></i>
            </button>
          </div>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Or</p>
          </div>

          <!-- user input -->
          <div class="form-outline mb-4">
              <asp:TextBox ID="usrnm" placeholder="User name"  CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"  ForeColor="Red" ControlToValidate="usrnm"></asp:RequiredFieldValidator>
          </div>

            <!-- Email input -->
            <div class="form-outline mb-4">
            <asp:TextBox ID="mail" placeholder="Mail Id"  CssClass="form-control form-control-lg" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="mail"></asp:RequiredFieldValidator>
                </div>

            <!-- password input -->
            <div class="form-outline mb-4">
            <asp:TextBox ID="psswrd" placeholder="Password"  CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="psswrd"></asp:RequiredFieldValidator>
            </div>

            <!-- Confirm input -->
            <div class="form-outline mb-4">
            <asp:TextBox ID="Cnfrmpswrd" placeholder=" Confirm Password"  CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Cnfrmpswrd"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password must be same"  ForeColor="Red" Font-Italic="true" ControlToCompare="psswrd" ControlToValidate="Cnfrmpswrd"></asp:CompareValidator>
                </div>
            
         

          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>
            <a href="#!" class="text-body">Forgot password?</a>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
              <asp:Button ID="UserRegister" runat="server" Text="Register" class="btn btn-primary btn-lg"  style="padding-left: 2.5rem; padding-right: 2.5rem;" OnClick="UserRegister_Click" />
              
            <p class="small fw-bold mt-2 pt-1 mb-0">Already have an account? <a href="UserLogin.aspx"
                class="link-danger">Login</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
 

  
 
</section>

    </main>

</asp:Content>
