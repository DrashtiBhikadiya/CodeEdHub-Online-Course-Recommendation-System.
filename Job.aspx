<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="FinalProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


 <div class="container" style="margin-left:200px; margin-bottom:200px; margin-top:50px;">
   <h2>Best Jobs for 2024-25</h2>
    <div class="card" style="max-width:30rem; padding:15px;">
 <div class="card-body" >
        <asp:Label ID="Label1" runat="server" Text="Job ID : "></asp:Label><asp:Button ID="Button1" runat="server" Text="Go" CssClass="btn btn-outline-dark" OnClick="Button1_Click" /><br /><br />
        <asp:TextBox ID="txtJobID" runat="server" class="form-control input-lg"></asp:TextBox ><br />
        
        <asp:Label ID="Label2" runat="server" Text="Title : "></asp:Label><br /><br />
        <asp:TextBox ID="txtJobTitle" runat="server" class="form-control input-lg"></asp:TextBox><br />

        <asp:Label ID="Label3" runat="server" Text="Salary : "></asp:Label><br /><br />
        <asp:TextBox ID="txtJobSal" runat="server" class="form-control input-lg"></asp:TextBox><br />

        <asp:Label ID="Label5" runat="server" Text="Scope: "></asp:Label><br /><br />
        <asp:TextBox ID="txtJobScope" runat="server" class="form-control input-lg"></asp:TextBox><br />

        <asp:Label ID="Label4" runat="server" Text="Description: "></asp:Label><br /><br />
        <asp:TextBox ID="txtJobDes" runat="server" class="form-control input-lg"></asp:TextBox><br />
        <br /><br />
        <asp:Button ID="JobInsert" runat="server" Text="Insert"  class=" btn btn-primary  btn-lg " OnClick="JobInsert_Click"/>
        <asp:Button ID="JobUpdate" runat="server" Text="Update"  class="btn btn-secondary btn-lg " OnClick="JobUpdate_Click" />
        <asp:Button ID="JobDelete" runat="server" Text="Delete"  class="btn btn-danger   btn-lg " OnClick="JobDelete_Click"/>

    </div>
   </div>
        
    
   
</div>



</asp:Content>
