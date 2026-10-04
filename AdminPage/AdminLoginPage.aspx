<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="GAGEtrak_WebReports.AdminPage.AdminLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height:100%;width:100%;">
        <table class="table  table-bordered shadow p-3 mb-5 bg-body rounded" style="height:100%;width:40%;margin-left:30%;margin-top:5%;">
          <thead class="thead-dark">
    <tr>
      <th scope="col" style="text-align:center;font-size:15pt;">Admin Panel Login</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td style="text-align:center;">
          <br />
          <asp:TextBox ID="Username" runat="server" float="left" placeholder="Username"></asp:TextBox>
          <br />
          <br />
          <asp:TextBox ID="Password" runat="server" float="left" placeholder="Password" TextMode="Password"></asp:TextBox>
          <br />
          <br />
          <asp:Button CssClass="btn" ID="Login1" runat="server" Text="Login" style="background-color:darkgray;font-weight:bold;border:1px solid lightgrey;border-radius:0;" OnClick="Login1_Click"/>
          <br />
          <asp:Label ID="result" runat="server" EnableViewState="true"></asp:Label>
          <br />
          <br />
       </td>
    </tr>
   </tbody>
  </table>
 <br />
 <br />
 </div>
</asp:Content>
