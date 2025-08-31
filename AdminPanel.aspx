<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="FinalProject.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <section>
            <div class="container">
                <h1 class="display-4">Admin Panel</h1>
                <hr class="my-4">
                <a class="btn btn-primary btn-lg" href="#" role="button">Saved </a>
            </div>


            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Page title -->
                        <div class="my-5">
                            <h3>Account Setting</h3>
                            <hr>
                        </div>
                        <!-- Form START -->
                        <form class="file-upload" id="UpdateProfileSection">
                            <div class="row mb-5 gx-5">
                                <!-- Contact detail -->
                                <div class="col-xxl-8 mb-5 mb-xxl-0">
                                    <div class="bg-secondary-soft px-4 py-5 rounded">
                                        <div class="row g-3">
                                            <h4 class="mb-4 mt-0">User detail</h4>
                                            <!-- User Name -->
                                            <div class="col-md-6">
                                                <asp:Label ID="Label1" runat="server" Text="Admin User Name" class="form-label"></asp:Label>
                                                <asp:TextBox ID="Adminname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <!-- Mail -->
                                            <div class="col-md-6">
                                                <asp:Label ID="Label2" runat="server" Text="Password" class="form-label"></asp:Label>
                                                <asp:TextBox ID="AdminPswrd" runat="server" class="form-control"></asp:TextBox>

                                            </div>

                                        </div>
                                        <!-- Row END -->
                                    </div>
                                </div>

                                <!-- Row END -->


                                <!-- button -->
                                <div class="gap-3 d-md-flex justify-content-md-end text-center">
                                    <asp:Button ID="GetAdminData" runat="server" Text="Get Data" class="btn btn-secondary btn-lg" OnClick="GetAdminData_Click" />
                                    <asp:Button ID="UpdateAdminProfile" runat="server" Text="Update Profile" class="btn btn-primary btn-lg" OnClick="UpdateAdminProfile_Click" />
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
