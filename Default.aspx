<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GAGEtrak_WebReports.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
     <style type="text/css">
        
        .auto-style5 {
            height: 29px;
            text-align:left;
        }

        .auto-style6 {
            height: 29px;
            width: 80px;
            align-items:flex-start;
        }
        .auto-style7 {
            width: 100px;
            align-items:flex-start;
       }
         .auto-style9 {
             position: relative;
             width: 100%;
             -ms-flex: 0 0 75%;
             flex: 0 0 75%;
             max-width: 75%;
             left: 0px;
             top: 0px;
             padding-left: 15px;
             padding-right: 15px;
         }
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style=" padding-bottom: 15px;">
        <div class="row">
            <div class="col-xl-6">    
            <div class="heading" style="font-size:20pt;width:100%;text-align:right;"> 
            <i class="fa fa-user m-1 p-2" aria-hidden="true" style="font-size:15pt;float:left;"></i>
            <h4 class="display-5 m-1 p-1" style="float:left;"><b><asp:Label ID="User2" runat="server"></asp:Label></b></h4>
            </div>
            </div>
            <div class="col-xl-3" style=" text-align:left;"> 
            </div>
            <div class="col-xl-3">
                <asp:Button CssClass="btn" ID="Logout" runat="server" Text="LogOut" style="background-color:aqua; float:right; border: 1px solid black; font-weight:bold;" OnClick="Logout_Click" />
            </div>
        </div>
    </div>
       <table class=" table table-hover table-bordered shadow p-3 mb-5 bg-body rounded" style="text-align:center; font-family: 'Microsoft YaHei UI',Arial, Helvetica, sans-serif; font-weight: bold; ">
  <thead class="thead-dark">
    <tr>
      <th scope="col" class="auto-style6">Sr.&nbsp;No.</th>
      <th scope="col" class="auto-style5">Reports</th>
    </tr>
  </thead>
  <tbody>
  
      <tr>
      <td scope="row" class="auto-style7">1</td>
      <td  style="text-align:left;">
      <a href="http://localhost:44366/GTWAuthLicTest/" style="text-decoration:none;">GAGEtrak Web Reports</a>
      </tr>
      <tr id="Row1" runat="server">
      <td scope="row" class="auto-style7">2</td>
      <td  style="text-align:left;">
      <a href="http://192.168.0.25:81/GTIRAuthLicTest/" style="text-decoration:none;">GAGEtrak Issue & Return Web Utility</a>
          </td>
      </tr>
       <tr>
      <td scope="row" class="auto-style7">3</td>
      <td  style="text-align:left;">
      <a href="..\DueReports\PVSA.aspx" style="text-decoration:none; ">Plan vs Actual Report</a>
      </td>
      </tr>


  </tbody>
</table>

      <%--  <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script>

            /*$.ajax({
                type: "POST",
                url: "..\EndSessionHandler.ashx", // Change to the actual URL of your handler
                async: false // Use synchronous request to ensure it completes before unloading
            });*/
            window.onbeforeunload = (event) => {

                event.preventDefault();
                event.returnValue = "Kindly logout, do not leave abruptly.";
                return "Kindly logout, do not leave abruptly.";
            }
            $(function () {
                $("a, input").on("click", function () {
                    window.onbeforeunload = null;
                });
            });
        </script>--%>

</asp:Content>
