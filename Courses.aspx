<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="FinalProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container" style="margin-left:300px; margin-top:100px">
<div class="row">
<h2><strong>Courses</strong> </h2>
    <div class="col-sm">
         <asp:Button ID="EditCourse" runat="server" Text="View Course" CssClass="btn btn-info btn-sm" OnClick="EditCourse_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
         </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CourseImage] FROM [Courses]"></asp:SqlDataSource>
        <br /><br />
        <div class="card" style="max-width: 50rem;padding:15px;" >
            <div class="contentbody"  >
                <br />
                <asp:Label ID="Label1" runat="server" Text="Image ID" ></asp:Label>
                <asp:TextBox ID="txtImgID" runat="server" ></asp:TextBox>
                <asp:Button ID="GoImgId" runat="server" Text="Go"  OnClick="GoImgId_Click"  CssClass="btn  btn-outline-dark"/><br /><br />
                <asp:Label ID="Label2" runat="server" Text="Browse Image" ></asp:Label>
               <asp:FileUpload ID="FileUpload1" runat="server"  /><br /><br />

                <asp:Label ID="Label3" runat="server" Text="Image Link" ></asp:Label>
                 <asp:TextBox ID="txtImgLink" runat="server" ></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="Image Description" ></asp:Label><br /><br />
                <asp:TextBox ID="txtTitle" runat="server" TextMode="MultiLine" ></asp:TextBox>
                <hr />
                <asp:Button ID="InsertImage" runat="server"  CssClass="btn btn-primary" Text="Insert" OnClick="InsertImage_Click"   />
                <asp:Button ID="UpdateImage" runat="server"  CssClass="btn btn-secondary" Text="Update" OnClick="UpdateImage_Click" />
                <asp:Button ID="DeleteImage" runat="server"  CssClass="btn btn-danger" Text="Delete" OnClick="DeleteImage_Click"     />
               
                <hr />
                <br />
                <asp:Image ID="Image1" runat="server" Width="500px" Height="500px" Visible="false" />
                <br /><br />
                </div>                    
        </div>
    </div>
    </div>
    </div>


</asp:Content>
