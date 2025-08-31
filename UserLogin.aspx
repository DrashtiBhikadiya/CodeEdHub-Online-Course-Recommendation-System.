<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="FinalProject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>

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
                        <p class="lead fw-normal mb-0 me-3">Login with</p>
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
                        <asp:TextBox ID="lgnusrnm" placeholder="User name" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="lgnusrnm"></asp:RequiredFieldValidator>
                    </div>
                    <!-- password input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox ID="lgnpsswrd" placeholder="Password" CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="lgnpsswrd"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Red" Font-Italic="true" Font-Bold="true"></asp:Label>

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
                        <asp:Button ID="UserLoginEvnt" runat="server" Text="Login" OnClick="LoginUser_Click" CssClass="btn btn-primary btn-lg" />
                        <p class="small fw-bold mt-2 pt-1 mb-0">
                            Don't have an account? <a href="#!"
                                class="link-danger">Register</a>
                        </p>
                    </div>

                </form>
            </div>
        </div>
    </div>

</section>

    </main>


</asp:Content>
