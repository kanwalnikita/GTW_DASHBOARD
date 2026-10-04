<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="PVSA.aspx.cs" Inherits="GAGEtrak_WebReports.DueReports.PVSA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/1.8.7_chosen.jquery.min.js"></script>
    <link href="../css/1.8.7_chosen.min.css" rel="stylesheet" />
    <link href="~/css/4.6.1_dist_css_bootstrap.min.css" rel="stylesheet" />
        <script src="~/js/3.6.0_dist_jquery.slim.min.js"></script>
    <script src="~/js/1.16.1_dist_umd_popper.min.js"></script>
    <script src="~/js/4.6.1_dist_js_bootstrap.bundle.min.js"></script>
    <link href="~/css/all.min.css" rel="stylesheet" />
    <link href="~/css/fontawesome.min.css" rel="stylesheet" />
    <style>
        
.modal-dialog-full-width {
        width: 98% !important;
        height: 60% !important;
        margin-left: 1% !important;
        margin-right: 1% !important;
        padding: 0 !important;
        max-width:none !important;

    }

    .modal-content-full-width  {
        height: auto !important;
        min-height: 50% !important;
        border-radius: 0 !important;
        background-color: #ececec !important 
    }

    .modal-header-full-width  {
        border-bottom: 1px solid #9ea2a2 !important;
    }

    .modal-footer-full-width  {
        border-top: 1px solid #9ea2a2 !important;
    }        
   .scrolling {  
                position: absolute;  
            }  
              
            .gvWidthHight {  
                overflow: scroll;  
                height: 500px;
                width: 100%;  
            }  
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 850px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
   <div class="container-fluid " style="text-align:center;font-family:'Microsoft YaHei UI', Arial, sans-serif; margin-top: 30px;margin-left:-5%;">      
    <div class="row">
        <div class="col-lg-2">
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fa fa-circle-left" style=" font-size:20pt;float:left;margin-left:-2%;" aria-hidden="true"></i></asp:LinkButton>
        </div>
       <div class="col-lg-8" style="align-content:center;text-align:center;">
        <div class="heading" style="font-size:30pt;width:100%;"> 
            <h4 class="display-5"><b>Plan / Actual Report</b></h4>
         </div>
       </div>
        <div class="col-lg-2">
          <div class="heading" style="font-size:20pt;width:100%;text-align:right;"> 
            <i class="fa fa-user m-1 p-2" aria-hidden="true" style="font-size:15pt;float:left;"></i>
          <h4 class="display-5 m-1 p-1" style="float:right;"><b><asp:Label ID="User3" runat="server"></asp:Label></b></h4>
         </div>
       </div>
     </div>     
    </div>
    <div class="container card-body border shadow-lg" style="width:800px;margin-top:2%;margin-left:12%;font-family:'Montserrat', Arial, sans-serif; text-align:left; ">
      <table style="width:140%; margin-left: 1%;">
          <tr>
              <td colspan="3">
                  <div class="container"  width="100%;" style=" margin-top:1%;margin-bottom:1%;">
                      <div class="row ">
                          <div class="col-md-4" >
                              <h6 style="float:left; margin:1% 0 0 3%;">From Plan Date:</h6><asp:TextBox runat="server" ID="Datefrom" TextMode="Date" Style=" float:left; margin:0 0 0 3%; text-align: center;"></asp:TextBox>
                          </div>
                         <div class="col-md-5">
                             <h6 style="float:left; margin: 1% 0 0 10%;">To Plan Date:</h6>&nbsp;<asp:TextBox runat="server" ID="DateTo" TextMode="Date" style="float:left; margin:0 0 0 3%;text-align: center;"></asp:TextBox>
                             <asp:Button ID="CheckBtn" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px;float:left; margin-left: 12%; " OnClick="CheckBtn_Click"></asp:Button>
                          </div>
                      </div>
                  </div>
              </td>
          </tr>
          <tr>
    <td colspan="3">
        <div class="container"  width="100%;" style=" margin-top:1%;margin-bottom:1%;">   
            <div class="row ">
                <div class="col-md-4" >
                    <h6 style="float:left; margin:1% 0 0 3%;">From Actual Date:</h6><asp:TextBox runat="server" ID="ActDateFrom" TextMode="Date" Style=" float:left; margin:0 0 0 3%; text-align: center;"></asp:TextBox>
                </div>
               <div class="col-md-5" style="align-items:flex-start">
                   <h6 style="float:left; margin: 1% 0 0 10%;">To Actual Date:</h6>&nbsp;<asp:TextBox runat="server" ID="ActDateTo" TextMode="Date" style="float:left; margin:0 0 0 3%;text-align: center;"></asp:TextBox>
                   <asp:Button ID="Btn_Cancel" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px;float:left; margin-left: 12%; " OnClick="CancelBtn_Click"></asp:Button>
                </div>
            </div>
        </div>
    </td>
</tr>
           <tr>
              <td colspan="3">
                  <div class="container">
                      <div class="row">
                          <div class="col-sm-3">
                              <h6 style="float:left;  margin:0 0 0 4%;" >Gage Type:</h6>
                              <div class="container" style="width:2%;margin-right:1%;"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                          </div>   
                         <div class="col-sm-6"> 
                             <div class="container" style="width:100%; float:left;">
                               <div class="container" style="width:80%;float:left;">  
                                 <asp:DropDownList ID="GageidList" runat="server" DataSourceID="SqlDataSource1" DataTextField="GM_Type" DataValueField="GM_Type" AutoPostBack="True" class="form-control" Height="40px" Width="100%" style="float:left;"  AppendDataBoundItems="True" OnSelectedIndexChanged="GageidList_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Select </asp:ListItem>
                                </asp:DropDownList>
                              </div>    
                   <div class="container" style="width:10%;float:left;">   
                       <asp:Button ID="Button1" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px; float:left; " OnClick="Button1_Click"></asp:Button>
                   </div>
                </div> 
            </div>
           </div>
         </div>
       </td>
     </tr>
            <tr>
              <td colspan="3">
                  <div class="container">
                      <div class="row">
                          <div class="col-sm-3">
                              <h6 style="float:left; margin:1% 0 0 4%;">Current Location:</h6>
                              <div class="container" style="width:2%;margin-right:1%;"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                          </div> 
                         <div class="col-sm-6">
                                <div class="container" style="width:100%; float:left;">
                             <div class="container" style="width:80%;float:left;">  
                               <asp:DropDownList ID="CurrLocationList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Current_Location" DataValueField="Current_Location" AutoPostBack="True" class="form-control" Height="40px" Width="100%" style="float:left;"  AppendDataBoundItems="True" OnSelectedIndexChanged="CurrLocationList_SelectedIndexChanged" >
                                       <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                            </asp:DropDownList>
                               </div>  
                               <div class="container" style="width:10%;float:left;">   
                                   <asp:Button ID="CurLocBtn" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px; float:left; " OnClick="CurLocBtn_Click"></asp:Button>
                               </div>
                            </div> 
                         </div>
                      </div>
                  </div>
              </td>
          </tr>
          <tr>
              <td colspan="3">
                  <div class="container">
                      <div class="row">
                          <div class="col-sm-3">
                              <h6 style="float:left; margin:2% 0 0 4%;">Storage Location:</h6>
                              <div class="container" style="width:2%;margin-right:1%;"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                          </div> 
                         <div class="col-sm-6">
                             <div class="container" style="width:100%; float:left;">
              <div class="container" style="width:80%;float:left;">  
                   <asp:DropDownList ID="StgLocDdpl" runat="server" DataSourceID="SqlDataSource3" DataTextField="Storage_Location" DataValueField="Storage_Location" AutoPostBack="True" class="form-control" Height="40px" Width="100%" style="float:left;"  AppendDataBoundItems="True" OnSelectedIndexChanged="StgLocDdpl_SelectedIndexChanged" >
                           <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                   </div>  
                   <div class="container" style="width:10%;float:left;">   
                       <asp:Button ID="StgLocBtn" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px; float:left; " OnClick="StgLocBtn_Click"></asp:Button>
                   </div>
                </div> 
                         </div>
                      </div>
                  </div>
              </td>
          </tr>
           
          <tr>
              <td colspan="3">
                  <div class="container">
                      <div class="row">
                          <div class="col-sm-3">
                              <h6 style="float:left; margin:1% 0 0 4%;">Calibrator:</h6>
                              <div class="container" style="width:2%;margin-right:1%;"><i class="fa fa-arrow-right" aria-hidden="true"></i></div>
                          </div> 
                         <div class="col-sm-6">
                             <div class="container" style="width:100%; float:left;">
              <div class="container" style="width:80%;float:left;">  
                   <asp:DropDownList ID="CalList" runat="server" DataSourceID="SqlDataSource4" DataTextField="Calibrator" DataValueField="Calibrator" AutoPostBack="True" class="form-control" Height="40px" Width="100%" style="float:left;"  AppendDataBoundItems="True" OnSelectedIndexChanged="CalList_SelectedIndexChanged" >
                           <asp:ListItem Selected="True" Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                   </div>  
                   <div class="container" style="width:10%;float:left;">   
                       <asp:Button ID="calBtn" runat="server" Text="&times;" class=" close border-0 " style=" text-align:center; width:30px; float:left; " OnClick="calBtn_Click"></asp:Button>
                   </div>
                </div> 
                         </div>
                      </div>
                  </div>
              </td>
          </tr>

          <tr>
              <td colspan="3">
                  <div class="row">
                      <div class="col-md-2">

                      </div>
                      <div class="col-md-8">
                           <div class="row" style=" margin-top: 10px;">
                                <div class=" col-md-2">

                                </div>
                                <div class="col-md-2" style="align-items:end;">
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </div>
                                <div class="col-md-5" style="text-align:left;">
                                    <h6 style="margin-left: -60px;"><b>Show Summary Report</b></h6>
                                </div>
                            </div>
                      </div>
                  </div>
              </td>
          </tr>

          <tr>
              <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT DISTINCT GM_Type FROM GAGEMGR65.Gage_Master Order by GM_Type asc"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT Distinct Current_Location FROM GAGEMGR65.Gage_Master Order by Current_Location asc"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT Distinct Storage_Location FROM GAGEMGR65.Gage_Master Order by Storage_Location asc"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT Distinct Calibrator FROM GAGEMGR65.Gage_Master Order by Calibrator asc"></asp:SqlDataSource>
  
              </td>
              <td colspan="2">
                  <div class="container" style="margin-top:2%;margin-bottom:2%;margin-left:-13%;" align="center">
               <asp:Button id="Generate" type="button" class="btn btn-outline-primary" style=" border-radius: 0px;" runat="server" AutopostBack="True" Text="Generate Report" OnClick="Generate_Click" >
                 </asp:Button> 
               
               <asp:Button id="Full" type="button" class="btn btn-outline-success" style=" border-radius: 0px;" runat="server" AutopostBack="True" Text="All Details" OnClick="Full_Click">
                 </asp:Button> 
               <button id="modalActivate" type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModalPreview" style=" border-radius: 0px;" runat="server" AutopostBack="True">
                <i class="fa fa-fw fa-file"></i>View Report</button>
               </div>
               </td>
          </tr>
          </table>
         </div> 
    <div class="container-fluid " style="width: 108%" >
        <div class="table table-striped">
            <div class="row">
               
                <div class="auto-style5" >
                     <div class="modal fade right" id="exampleModalPreview" tabindex="-1" role="dialog" aria-labelledby="exampleModalPreviewLabel" aria-hidden="true">
    <div class="modal-dialog-full-width modal-dialog momodel modal-fluid" role="document">
      <div class="modal-content-full-width modal-content ">
        <div class=" modal-header-full-width   modal-header text-center">
          
            <div>
                <img src="../images/Customer_Logo.png" /></div>
         <h1 class="modal-title w-100" id="exampleModalPreviewLabel">Plan / Actual Report</h1>
             <button type="button" class="btn btn-danger btn-md " data-dismiss="modal" style=" border-radius:0px;">Close</button>
          
 
        </div>  
        <div class="modal-body">
            <div class="container-fluid">
                <h4>Total No. of
                <asp:Label runat="server" id="Records" Font="Microsoft Yahei UI, 12pt"></asp:Label>
                    Records

                </h4>
                <div class="row">
                    <div class="col-4"></div>
                <div class="col-2">
                <h5>
                     From:
                    <asp:Label runat="server" id="Datefrom_text"></asp:Label>
                </h5>
                </div>
                    <div class="col-4">
                <h5>
                     To:
                    <asp:Label runat="server" id="DateTo_text"></asp:Label>
                </h5>
                        </div>
                    <div class="col-2"></div>
                </div>
            </div>

            <div class="container-fluid">
              <asp:GridView ID="ReportView" runat="server" AutoGenerateColumns="False" CssClass=" table table-border-dark table-striped" style=" border:1px solid black; font-weight:bold; text-align:center; font-family: 'Microsoft Sans Serif'; ">
<Columns>
              <asp:BoundField DataField="Gage_ID" HeaderText="Gage_ID">
                      <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small" Width="15%"></ItemStyle>

                  </asp:BoundField>
                  <asp:BoundField DataField="Plan_Date" HeaderText="Planned Date" DataFormatString="{0:yyyy-MM-dd}">
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small" Width="15%"></ItemStyle>

                  </asp:BoundField>
                     <asp:BoundField DataField="Actual_Date" HeaderText="Actual Done Date" DataFormatString="{0:yyyy-MM-dd}">
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                   <asp:BoundField DataField="Current_Location" HeaderText="Current Location">
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                  <asp:BoundField DataField="Storage_Location" HeaderText="Storage Location">
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                   <asp:BoundField DataField="GM_Type" HeaderText="Gage Type" >
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                      <asp:BoundField DataField="Calibrated_By" HeaderText="Calibrated By" >
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                       <asp:BoundField DataField="Days" HeaderText="Days" >
                       <HeaderStyle Font-Size="Small"></HeaderStyle>
                      <ItemStyle Font-Size="Small"  Width="15%"></ItemStyle>
                         </asp:BoundField>
                  </Columns>
                     </asp:GridView>
                <asp:GridView ID="ReportView2" runat="server" CssClass=" table table-border-dark table-striped" style=" border:1px; font-weight:bold; text-align:center; font-family: 'Microsoft Sans Serif'; ">
                </asp:GridView>
            </div>

             </div>
            </div>
      </div>
    </div>
                     
  </div>   

            </div>
        </div>
    </div>
    <script src="../js/1.12.1_js_jquery.dataTables.min.js"></script>
    <link href="../css/buttons.dataTables.min.css" rel="stylesheet" />
    <link href="../css/1.12.1_css_jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../js/dataTables.buttons.min.js"></script>
    <script src="../js/1.4.1_js_buttons.flash.min.js"></script>
    <script src="../js/1.4.1_js_buttons.html5.min.js"></script>
    <script src="../js/1.4.1_js_buttons.print.min.js"></script>
   <script>
        
        $('#<%=GageidList.ClientID%>').chosen();
      
       $('#<%=CurrLocationList.ClientID%>').chosen();

       $('#<%=StgLocDdpl.ClientID%>').chosen();

       $('#<%=CalList.ClientID%>').chosen();

       $(document).ready(function () {
           $('#<%=ReportView.ClientID%>').DataTable({
               dom: 'Blfrtp',
               buttons: [
                   'csv', 'excel', 'pdf',
                   {
                       extend: 'print',
                       title: 'Plan / Actual Report'
                   }
               ]          
           });
       });
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
   </script>
</asp:Content>
