<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientData.aspx.cs" Inherits="FinalProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container" style="margin-left:200px;" >
     
 <h2>Client Data</h2>

     <asp:Button ID="client" runat="server" Text="Client Messages" CssClass="btn btn-primary" OnClick="client_Click" />
     <asp:Button ID="Register" runat="server" Text="Registered User" CssClass="btn btn-primary" OnClick="Register_Click" />
     <br /><br />


<asp:GridView ID="GridView1" class="table table-bordered table-striped"  Visible="False" runat="server" AutoGenerateColumns="False" DataKeyNames="ClientId"  Width="940px" DataSourceID="SqlDataSource1" >
     <Columns>
         <asp:BoundField DataField="ClientId" HeaderText="ClientId" ReadOnly="True" SortExpression="ClientId" InsertVisible="False" />
         <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
         <asp:BoundField DataField="ClientMail" HeaderText="ClientMail" SortExpression="ClientMail" />
         <asp:BoundField DataField="ClientNumber" HeaderText="ClientNumber" SortExpression="ClientNumber" />
         <asp:BoundField DataField="ClientMsgs" HeaderText="ClientMsgs" SortExpression="ClientMsgs" />
     </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
 <br />
 <br />
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RegisterId" DataSourceID="SqlDataSource2" Width="931px">
         <Columns>
             <asp:BoundField DataField="RegisterId" HeaderText="RegisterId" ReadOnly="True" SortExpression="RegisterId" InsertVisible="False" />
             <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
             <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
             <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
             <asp:BoundField DataField="ConfirmPassword" HeaderText="ConfirmPassword" SortExpression="ConfirmPassword" />
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
 </div>

</asp:Content>
