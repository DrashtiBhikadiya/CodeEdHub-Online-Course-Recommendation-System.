<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDashBoard.aspx.cs" Inherits="FinalProject.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    <section>
        <div class="container">
            <h1 class="display-4">Dash Board</h1>
            <hr class="my-4">
    <a class="btn btn-primary btn-lg" href="#" role="button"> <i class="bi bi-substack"></i> Saved </a>
        </div>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Page title -->
                    <div class="my-5">
                        <h3>My Profile</h3>
                        <hr>
                    </div>
                    <!-- Form START -->
                    <form class="file-upload" id="UpdateProfileSection">
                        <div class="row mb-5 gx-5" >
                            <!-- Contact detail -->
                            <div class="col-xxl-8 mb-5 mb-xxl-0">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">User detail</h4>
                                        <!-- User Name -->
                                        <div class="col-md-6">
                                            <asp:Label ID="Label1" runat="server" Text="User Name" class="form-label"></asp:Label>
                                            <asp:TextBox ID="ProfileUname" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ProfileUname"></asp:RequiredFieldValidator>
                                        </div>
                                        <!-- Mail -->
                                        <div class="col-md-6">
                                            <asp:Label ID="Label2" runat="server" Text="Mail Id" class="form-label"></asp:Label>
                                            <asp:TextBox ID="ProfileUmail" runat="server" class="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                    <!-- Row END -->
                                </div>
                            </div>
                            <!-- Password -->
                            <div class="col-xxl-8 mb-5 mb-xxl-0">
                                <div class="bg-secondary-soft px-4 py-5 rounded">
                                    <div class="row g-3">
                                        <h4 class="mb-4 mt-0">Update Password</h4>
                                        <!-- Old Password -->
                                        <div class="col-md-6">
                                            <asp:Label ID="Label3" runat="server" Text="Old Password" class="form-label"></asp:Label>
                                            <asp:TextBox ID="ProfileUoldpswrd" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <!-- New psswrd -->
                                        <div class="col-md-6">
                                            <asp:Label ID="Label4" runat="server" Text="New Password" class="form-label"></asp:Label>
                                            <asp:TextBox ID="ProfileUnwpswrd" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <!-- Confirm psswrd -->
                                        <div class="col-md-6">
                                            <asp:Label ID="Label5" runat="server" Text="Confirm Password" class="form-label"></asp:Label>
                                            <asp:TextBox ID="ProfileUcnfrmpswrd" runat="server" class="form-control"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password must be same"  ForeColor="Red" ControlToCompare="ProfileUnwpswrd" ControlToValidate="ProfileUcnfrmpswrd"  ></asp:CompareValidator>
                                        </div>

                                    </div>
                                    <!-- Row END -->
                                </div>
                            </div>
                            <!-- Row END -->


                            <!-- button -->
                            <div class="gap-3 d-md-flex justify-content-md-end text-center">
                                <br />

                                <asp:Button ID="UpdateUserProfile" runat="server" Text="Update Profile" class="btn btn-primary btn-lg" OnClick="UpdateUserProfile_Click"  />                                
                                <asp:Button ID="DeleteUserProfile" runat="server" Text="Delete Profile" class="btn btn-danger btn-lg" OnClick="DeleteUserProfile_Click"  />
                            </div>



                        </div>
                    </form>
                    <!-- Form END -->
                </div>
            </div>
        </div>

    </section>


</main>


</asp:Content>
