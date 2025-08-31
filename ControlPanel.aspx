<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="FinalProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container" style="margin-left:200px; margin-top:50px; margin-bottom:200px;">
        <div class="row">

            <div class="col-sm">
                <div class="card" style="max-width: 20rem;">
                    <div class="card-header">Top Courses</div>
                    <div class="card-body text-bg-light">
                        <asp:Button ID="CoursesCount" runat="server"  CssClass="btn btn-primary" Text="See Top Courses" OnClick="CoursesCount_Click" />
                    </div>                    
                </div>
            </div>

            <div class="col-sm">
                <div class="card" style="max-width: 20rem;">
                    <div class="card-header">UI/UX Templates</div>
                    <div class="card-body text-bg-light">
                     <asp:Button ID="UIUXCount" CssClass="btn btn-primary" runat="server" Text="See UI/UX Templates" OnClick="UIUXCount_Click" />
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <div class="card" style="max-width: 20rem;">
                    <div class="card-header">Job Alert</div>
                    <div class="card-body text-bg-light">
                       <asp:Button ID="JobCount" CssClass="btn btn-primary" runat="server" Text="See Job Alert" OnClick="JobCount_Click" />
                    </div>
                </div>
            </div>


        </div>
        <br /><br />

        <div class="row">
    <div class="col-sm">
        <div class="card" style="max-width: 20rem;">
            <div class="card-header">Project Titles</div>
            <div class="card-body text-bg-light">
               <asp:Button ID="ProjectCount" CssClass="btn btn-primary" runat="server" Text="See Project Titles" OnClick="ProjectCount_Click" />
            </div>
           
        </div>
    </div>

   
</div>
    </div>

</asp:Content>
