<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GAGEtrak_WebReports.Login" %>

<%-- 27.09.2026 -login isssue 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    var sessionTimeout;

    function startSessionTimeout() {
        sessionTimeout = setTimeout(logout, 5000); // 5 minutes in milliseconds
    }

    function resetSessionTimeout() {
        clearTimeout(sessionTimeout);
        startSessionTimeout();
    }

    function logout() {
        // Perform logout logic (call the server-side logout method)
        // For simplicity, we are using an imaginary method named serverLogout
        PageMethods.serverLogout();
    }

    // Reset the session timeout on user activity (e.g., button click)
    document.getElementById('<%= Login1.ClientID %>').onclick = resetSessionTimeout;
    document.getElementById('<%= LogOut.ClientID %>').onclick = resetSessionTimeout;
    </script>
</asp:Content>
    --%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height:100%;width:100%;">
        <table class="table  table-bordered shadow p-3 mb-5 bg-body rounded" style="height:100%;width:50%;margin-left:25%;margin-top:5%;">
          <thead class="thead-dark">
    <tr>
      <th scope="col" style="text-align:center;background-color:#003333;font-size:14.5pt;">GAGEtrak Web Login</th>
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
       <%--<asp:Button CssClass=" btn" ID="Login1" runat="server" Text="Login" style="background-color:#027c68;color:whitesmoke;font-weight:bold;" OnClick="Login1_Click"/> 
       --%>  
          <asp:HiddenField ID="ForceLogin" runat="server" Value="0" />
<asp:Button CssClass=" btn" ID="Login1" runat="server" Text="Login"
    style="background-color:#027c68;color:whitesmoke;font-weight:bold;" OnClick="Login1_Click"/>
          <br />
          <asp:Label ID="result" runat="server" ></asp:Label>
          <br />
          <asp:Button CssClass=" btn" ID="LogOut" runat="server" Text="Log Out" style="background-color:#027c68;color:whitesmoke;font-weight:bold;" OnClick="LogOut_Click"/>
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