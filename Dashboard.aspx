<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GAGEtrak_WebReports.Dashboard" EnableViewState="true"  ViewStateMode="Enabled"%>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="css/5.15.4.all.min.css" rel="stylesheet"/>
    <link href="css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="css/fonts.googleapis.css" rel="stylesheet"/>
    <script nonce="undefined" src="//www.zingchart.com/scripts/zcDocs.js"></script>
    <script src="js/zcDocs.js"></script>
    <link href='//www.zingchart.com/css/zcDocs.css' rel='stylesheet' type='text/css'>
    <link href="css/zcDocs.css" rel="stylesheet"/>
    <link href="css/sb-admin-2.min.css" rel="stylesheet"> 
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/4.5.2.bootstrap.min.css" rel="stylesheet"/>
    <script nonce="undefined" src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script src="js/zingchart.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet" />
    <link href="css/5.15.4.all.min.css" rel="stylesheet" />

    <style>
        #myChart1 {
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;

        }
        #myChart2 {
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;
        }  
        #myChart3 {
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;
        }

          #myChart21,#myChart22 {
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;

        }
         #myChart31,#myChart32,#myChart33{
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;
        }   
         #Overdue_M,#Overdue_TTL,#Overdue_W,#Overdue_Y,#Overdue_YLY{
      height: 110px;
      width: 130px;
      min-height: 15px;
      align-content:center;
        } 
           #myChart41,#myChart42 {
      height: 130px;
      width: 130px;
      min-height: 15px;
      align-content:center;
         }
           #myChart51,#myChart52{
                height: 130px;
      width: 130px;
      min-height: 15px; 
      align-content:center;
           }
           #myPie1{
       height: 200px;
      width: 300px;
      min-height: 15px;
      align-content:center;
           }
           #myChart61{ 
       height: 130px; 
      width: 130px;
      min-height: 15px;
      align-content:center;
           }
           myChart10_1{ 
       height: 100px; 
      width: 130px;
      min-height: 15px;
      align-content:center;
           }
              #myChart71,#myChart72{ 
       height: 150px; 
      width: 130px;
      min-height: 15px;
      align-content:center;
      margin-left: -20px;
           }
               #myChart81,#myChart82,#myChart83,#myChart91,#myChart92,#myChart93{ 
       height: 120px; 
      width: 140px;
      min-height: 15px;
      align-content:center;
      margin-left: -20px;
           }

  .zc-ref,
[id$="-license-text"] {
    display: none !important;
    visibility: hidden !important;
    opacity: 0 !important;
    pointer-events: none !important;
}

        .btn3d.btn-magick {
	color: #fff;
	box-shadow: 0 0 0 1px #9a00cd inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #9823d5, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
	background-color: #bb39d7;
}

.btn3d.btn-magick:active,
.btn3d.btn-magick.active {
	box-shadow: 0 0 0 1px #9a00cd inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
	background-color: #bb39d7;
}
.btn3d {
	position: relative;
	top: -6px;
	border: 0;
	transition: all 40ms linear;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 2px;
	margin-right: 2px;
}

.btn3d:active:focus,
.btn3d:focus:hover,
.btn3d:focus {
	outline: medium none;
}

.btn3d:active,
.btn3d.active {
	top: 2px;
}

          .Spaceline {
              width: 100%;
              height: 20px;
              margin-left: auto;
              margin-right: auto;
              padding-left: 15px;
              padding-right: 15px;
          }

            .dropdown-menu .small {
            max-height: 200px; /* Maximum height of the dropdown list */
            overflow-y: auto; /* Enable vertical scrollbar when needed */
        }
        .auto-style8 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
            .chartTitle {
        font-size: 12px;
        font-weight: bold;
    }
    .legendText {
        font-size: 10px;
        font-weight: bold;
    }
    .dataPointText {
        font-size: 8px;
        font-weight: bold;
    }
        .myDropDown::selection{
            outline:none;
            box-shadow:none;
        }
        .myDropDown,drp1::after{
            outline:none;
            box-shadow:none;
        }
        .myDropDown::after{
            outline:none;
            box-shadow:none;
        }
     #printHeader { display: none; }

/*@media print {
    #printHeader { display: block !important; }
    #LinkButton1, #btnDownloadDashboard, .btn, select, .myDropDown { display: none !important; }
    .sidenav, nav.navbar-fixed-top, .Spaceline, .developed-by { display: none !important; }
    .container-lg { width: 100% !important; margin-left: 0 !important; margin-top: 0 !important; }
    body { -webkit-print-color-adjust: exact; print-color-adjust: exact; }
}*/
@media print {

    .container-fluid { height: auto !important; }
    #printHeader { display: block !important; }
    #LinkButton1, #btnDownloadDashboard, .btn, select, .myDropDown { display: none !important; }
    .sidenav, nav.navbar-fixed-top, .Spaceline, .developed-by { display: none !important; }
    .container-lg { width: 100% !important; margin-left: 0 !important; margin-top: 0 !important; }
    #Wholepage { width: 100% !important; margin-left: 0 !important; margin-top: 10px !important; }
    body { -webkit-print-color-adjust: exact; print-color-adjust: exact; }
    .heading { margin-top: 18px !important; }
        #customLegend { width: 110px !important; min-width: 110px !important; }
    /* Let the chart images (Issued/Calibration Persons, Gages Status donut) shrink to fit their column */
    #Wholepage .card img { max-width: 100% !important; height: auto !important; }

    /* Narrow the Gages Status legend a bit in print so donut + legend both fit */
    #customLegend { width: 110px !important; min-width: 110px !important; }
}
    </style>
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid"  style="width:110%;margin-left: -25px; height: 30px; font-family: 'Microsoft YaHei UI',Arial, Helvetica, sans-serif; ">
        <div class="row"> 
        <div class="col-lg-2">
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fa fa-circle-left" style=" font-size:30px;" aria-hidden="true"></i></asp:LinkButton>
            </div>
            
           <div class="col-lg-8" style="align-content:center;text-align:center;">
           </div>
           
                 <div class="col-lg-2" style="position:relative;">
    <button type="button" id="btnDownloadDashboard" class="btn" title="Download Dashboard"
        style="background:none;border:none;padding:0;position:absolute;left:-10px;top:4px;font-size:15pt;z-index:5;"
        onclick="printDashboard()">
        <i class="fa fa-download" aria-hidden="true"></i>
    </button>
    <div class="heading" style="font-size:20pt;width:100%;text-align:right;">
        <i class="fa fa-user m-1 p-2" aria-hidden="true" style="font-size:15pt;float:left;"></i>
        <h4 class="display-5 m-1 p-1" style="float:left;"><b><asp:Label ID="User3" runat="server"></asp:Label></b></h4>
        <asp:Label ID="MachineName" runat="server" style="display:none;"></asp:Label>
    </div>
</div>
</div>
        <div class="container-fluid" style="height:20px;">
                        <h4><b>Total&nbsp;Gages&nbsp;count:&nbsp;<asp:Label runat="server" ID="Gages_Count"></asp:Label></b></h4>
        </div>
        </div>
    <div id="printHeader">
    <table style="width:100%;font-size:11pt;margin-bottom:12px;border-bottom:2px solid #000;padding-bottom:6px;">
        <tr>
            <td style="text-align:left;"><b>Date &amp; Time:</b> <span id="printDateTime"></span></td>
            <td style="text-align:center;"><b>System:</b> <span id="printMachine"></span></td>
            <td style="text-align:right;"><b>User:</b> <span id="printUser"></span></td>
        </tr>
    </table>
</div>
        <div id="Wholepage" class="container-fluid" style="width:120%;margin-left: -5%;margin-top:50px; font-family: 'Roboto',Arial, Helvetica, sans-serif; ">
               <!-- Content Row -->
                <div class="row">
                     <!-- Area Chart -->
                        <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4 border-bottom-success mt-3">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 14pt; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Planned Calibrations</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body py-3 d-flex flex-row align-items-center justify-content-between">
                                       <!--<canvas id="myAreaChart"></canvas> <div id="myChart" class=" align-items-center"></div>
                                        Daily--> 
                                 <div class="row align-items-center justify-content-between ml-1" style="font-weight:bold;">
                                 <div class="col"><div id="myChart1" class=" align-items-start"></div></div>
                                 <div class="col"> <div id="myChart2" class=" align-items-start"></div></div>
                                 <div class="col"> <div id="myChart3" class=" align-items-start"></div></div>
                                 <div class="w-100"></div>
                                 <div class="col text-center" style="margin-top:-30px; margin-left:-4%; font-size: 12pt;">
                                    Daily
                                 </div>
                                <div class="col text-center" style="margin-top:-30px;margin-left:-4%; font-size: 12pt;">
                                    Weekly
                                </div>
                                <div class="col text-center" style="margin-top:-30px;margin-left:-4%; font-size: 12pt;">
                                    Monthly
                                </div>
                                </div>
                                </div>
                        </div>
                        </div>
                        <!-- Pie Chart -->
                       <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4 border-bottom-success mt-3">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-success" style="font-size: 14pt;color:#2eb82e; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Actual Calibrations</h6>
                                   
                                </div>
                                <!-- Card Body -->
                                 <div class="card-body py-3 d-flex flex-row align-items-center justify-content-between">
                                       <!--<canvas id="myAreaChart"></canvas> <div id="myChart" class=" align-items-center"></div>
                                        Daily-->
                                    <div class="row align-items-center justify-content-between ml-1" style="font-weight:bold;">
                                  <div class="col"><div id="myChart31" class=" align-items-start"></div></div>
                                 <div class="col"> <div id="myChart32" class=" align-items-start"></div></div>
                                 <div class="col"> <div id="myChart33" class=" align-items-start"></div></div>
                                 <div class="w-100"></div>
                                 <div class="col text-center" style="margin-top:-30px;margin-left:-3.5%;">
                                    Daily
                                 </div>
                                 <div class="col text-center" style="margin-top:-30px;margin-left:-3.5%;">
                                    Weekly
                                 </div>
                                <div class="col text-center" style="margin-top:-30px;margin-left:-3.5%;">
                                    Monthly
                                </div>
                                </div>
                                </div>
                        </div>
                        </div>
                    </div>

   
          <div class="row">
      <!-- Area Chart -->
         <div class="col-xl-12 col-lg-12">
             <div class="card shadow mb-4 border-bottom-success mt-3">
                 <!-- Card Header - Dropdown -->
                 <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                     <h6 class="m-0 font-weight-bold text-danger" style="font-size: 14pt; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Overdue Gauges</h6>
                 </div>
                 <!-- Card Body -->
                 <div class="card-body py-3 d-flex flex-row align-items-center justify-content-between">
                        <!--<canvas id="myAreaChart"></canvas> <div id="myChart" class=" align-items-center"></div>
                         Daily--> 
                  <div class="row align-items-center justify-content-between ml-2" style="font-weight:bold;">
                      <div class="col" style="margin-left:3%;"><div id="Overdue_Y" class=" align-items-start"></div></div>
                      <div class="col" style="margin-left:3%;"><div id="Overdue_W" class=" align-items-start"></div></div>
                      <div class="col" style="margin-left:3%;"><div id="Overdue_M" class=" align-items-start"></div></div>
                      <div class="col" style="margin-left:3%;"><div id="Overdue_YLY" class=" align-items-start"></div></div>
                      <div class="col" style="margin-left:3%;"><div id="Overdue_TTL" class=" align-items-start"></div></div>
                  <div class="w-100"></div>
                  <div class="col text-center" style="margin-top:-30px; margin-left:0%; font-size: 12pt;">
                     Yesterday 
                  </div>
                 <div class="col text-center" style="margin-top:-30px;margin-left:0%; font-size: 12pt;">
                     Weekly
                 </div>
                 <div class="col text-center" style="margin-top:-30px;margin-left:0%; font-size: 12pt;">
                     Monthly
                 </div>
                 <div class="col text-center" style="margin-top:-30px;margin-left:0%; font-size: 12pt;">
                     Yearly
                 </div>
                 <div class="col text-center" style="margin-top:-30px;margin-left:0%; font-size: 12pt;">
                     Total
                 </div>
                 </div>
                 </div>
         </div>
         </div>
         <!-- Pie Chart -->
    
     </div>

            <div class="row flex-nowrap align-items-start">

    <!-- Issued Gages (small) -->
<div class="col-auto">
    <div class="card shadow mb-4 border-bottom-success mt-4">
        <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary text-left"
                style="font-size: 12pt; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Issued&nbsp;Gages&nbsp;</h6>
            <asp:DropDownList runat="server" id="IssuedGagesDp" CssClass="dropdown-toggle mr-1 drp1" style="background-color:#F7F7F7;color:black; border:none; border-radius:55px; padding-right:10px;text-align:center;max-height:100px;" OnSelectedIndexChanged="IssuedGagesDp_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="1">Daily</asp:ListItem>
                <asp:ListItem Value="2" Selected="True">Weekly</asp:ListItem>
                <asp:ListItem Value="3">Monthly</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="card-body py-3 px-2 d-flex flex-row align-items-center justify-content-between" style="font-weight:bold;">
            <div class="row">
                <div class="col">
                    <div id="myChart61" class="align-items-center" style="margin-left:20%;"></div>
                </div>
                <div class="w-100"></div>
                <div class="col text-center px-0" style="margin-top:-30px; margin-left:0; margin-right:0; background-color:transparent; position:relative; z-index:2;">
                    Total Issued
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Returned Gages (small) -->
<div class="col"  >
        <div class="card shadow mb-4 border-bottom-success mt-4">
            <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary"
    style="font-size: 12pt; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Returned&nbsp;Gages&nbsp;</h6>
<asp:DropDownList runat="server" id="ReturnedGagesDp" CssClass="dropdown-toggle mr-1 drp2" style="background-color:#F7F7F7;color:black; border:none; border-radius:55px; padding-right:10px;text-align:center;max-height:100px;" OnSelectedIndexChanged="ReturnedGagesDp_SelectedIndexChanged" AutoPostBack="true">
    <asp:ListItem Value="1">Daily</asp:ListItem>
    <asp:ListItem Value="2" Selected="True">Weekly</asp:ListItem>
    <asp:ListItem Value="3">Monthly</asp:ListItem>
</asp:DropDownList>
            </div>
            <div class="card-body py-3 px-2 d-flex flex-row align-items-center justify-content-between" style="font-weight:bold;">
<div class="d-flex flex-row justify-content-around w-100" style="font-weight:bold;">
    <div class="text-center">
        <div id="myChart51" class="align-items-center"></div>
        <div style="margin-top:-25px; position:relative; z-index:2; background-color:white;">Total Returned</div>
    </div>
    <div class="text-center">
        <div id="myChart52" class="align-items-center"></div>
        <div style="margin-top:-25px; position:relative; z-index:2; background-color:white;">Not Returned</div>
    </div>
</div>

            </div>
        </div>
    </div>

    <!-- Gages Status (right side) -->
    <div class="col-auto ml-auto">
        <div class="card shadow border-bottom-success mb-4 mt-4">
            <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary"
                    style="font-size: 12pt; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Gages&nbsp;Status&nbsp;</h6>
            </div>
            <div class="card-body py-2 px-2 d-flex flex-row align-items-start justify-content-start">

                <!-- Legend (left, scrollable) -->
                <div id="customLegend" runat="server"
                     style="height:200px; overflow-y:auto; width:140px; min-width:140px; margin-right:4px; padding-right:6px;">
                </div>

                <!-- Donut (right) -->
                <asp:Chart ID="ChartPie" runat="server" Width="370px" Height="200px"
                    style="font-family: Montserrat,'Lato';"
                    class="chart-css"
                    BackHatchStyle="LightHorizontal" BackGradientStyle="LeftRight"
                    BorderlineColor="#003300" EnableTheming="True" OnLoad="ChartPie_Load1" Palette="None">
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <Area3DStyle Enable3D="true" Inclination="35" Rotation="90" />
                            <AxisY Enabled="false" />
                            <AxisX LineWidth="0" />
                            <Position Height="100" Width="100" Y="0" X="0" />
                        </asp:ChartArea>
                    </ChartAreas>
                    <Series>
                        <asp:Series Name="Series1" ChartType="Doughnut"
                            CustomProperties="PieStartAngle=0, PieEndAngle=360, PieLabelStyle=Outside, PieDrawingStyle=Concave"
                            Font="Montserrat, 9pt, style=Bold">
                        </asp:Series>
                    </Series>
                </asp:Chart>

            </div>
        </div>
    </div>

</div>
       <div class="row">
               <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4 border-bottom-success" style="font-weight:bold;"> 
                                 <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 14pt;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Issued&nbsp;Persons&nbsp;</h6>
                               <asp:DropDownList runat="server" id="IssueDp" CssClass="dropdown-toggle mr-1 drp1" style="background-color:#F7F7F7;color:black; border:none; border-radius:55px; padding-right:10px;text-align:center;max-height:100px;" DataTextField="Year" DataValueField="Year" EnableViewState="true" OnSelectedIndexChanged="IssueDp_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="1">Daily</asp:ListItem>
                                        <asp:ListItem Value="2">Weekly</asp:ListItem>
                                        <asp:ListItem Value="3">Monthly</asp:ListItem>
                               </asp:DropDownList> 
                                </div> 
                                 <div class="card-body py-3 d-flex flex-row" style=" font-family:'Plus Jakarta Sans,sans-serif'; height:150px;overflow-y:auto;margin-top:0;align-content: flex-start;">
                              <asp:Chart ID="IssueToChart" runat="server" Height="150px"  Width="540px" style="font-weight:bold;margin-top: -4%; margin-left: -4%; margin-bottom:0; margin-right: 0;  text-align:left; font-family: Montserrat,'Lato';
                                font-weight:bold;" class=" chart-css" Palette="Bright">
                                 
                             <Series>
                                <asp:Series Name="Series1" ChartType="Bar" IsVisibleInLegend="true" Palette="None" Color="#99cc66" IsXValueIndexed="true">
                                </asp:Series>
                                <asp:Series Name="Series2" ChartType="Bar" IsVisibleInLegend="true" Palette="None" Color="#6eea8e"  IsXValueIndexed="true">
                                </asp:Series>
                            </Series> 
                            
                            <ChartAreas>    
                                <asp:ChartArea Name="ChartArea2">
                                    <AxisY Enabled="false" />
                                    <AxisX LabelStyle-Interval="1" LineWidth="0">
                                        <MajorGrid LineWidth="0" />
                                    </AxisX> 
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                      </div>
                     </div>
                    </div>
                      <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4 border-bottom-success" style="font-weight:bold;"> 
                                 <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 14pt;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"> Calibration&nbsp;Persons&nbsp;</h6>
                                    <asp:DropDownList runat="server" id="CalbyDp" CssClass="dropdown-toggle mr-1 drp2" style="background-color:#F7F7F7;color:black; border:none; border-radius:55px; padding-right:10px;text-align:center;max-height:100px;"  
                                        EnableViewState="true" OnSelectedIndexChanged="CalbyDp_SelectedIndexChanged" AutoPostBack="true" Height="21px">
                                        <asp:ListItem Value="1">Daily</asp:ListItem>
                                        <asp:ListItem Value="2">Weekly</asp:ListItem>
                                        <asp:ListItem Value="3">Monthly</asp:ListItem> 
                                    </asp:DropDownList> 
                                </div>
                                 <div class="card-body py-3 d-flex flex-row justify-content-between ml-3" style="height:150px;margin-top:0px;overflow-y:auto; font-family:'Plus Jakarta Sans,sans-serif'">
                              <asp:Chart ID="CalbyChart" runat="server"  Width="550px" Height="150px" style="margin-top: -5%; margin-left: -4%; margin-right: -1%; align-content: flex-start; text-align:left; font-family: Montserrat,'Lato';
                                font-weight:bold;" class=" chart-css" Palette="Bright">
                             <Series>
                                <asp:Series Name="Series1" ChartType="Bar" IsVisibleInLegend="False" IsXValueIndexed="true" Palette="None" CustomProperties="PointWidth=.6" Color="#027c68">
                                </asp:Series>                                
                            </Series>
                            <ChartAreas>  
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Enabled="false" />
                                    <AxisX LabelStyle-Interval="1" LineWidth="0">
                                        <MajorGrid LineWidth="0" />
                                    </AxisX> 
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                                </div>
                            </div>
                        </div>
                    </div>
   
        
        <div class="row" > 
            <div class="auto-style8" style="padding-bottom: 20px;">
                <div class="card shadow border-bottom-success h-100 w-100 " style="font-weight:bold;">
                 <div class="card-header py-2"> 
                   <h6 class="mt-1 font-weight-bold text-primary" style="font-size: 14pt; width:50%; float:left;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Plan&nbsp;vs&nbsp;Actual&nbsp;</h6>
                <div class="d-flex align-content-center justify-content-end" style=" width:20%; float:right;">
                  <!--  <span><img src="images/calicon.png" style="width:40px;"/> </span> -->
                <asp:DropDownList runat="server" id="Ddp1" CssClass="dropdown-toggle mr-1 myDropDown" style="background-color:#F7F7F7;color:black; text-align:right; border:none; border-radius:55px; padding-right:10px;text-align:center;max-height:80px; width:80px;" DataTextField="Year" DataValueField="Year" EnableViewState="true" OnSelectedIndexChanged="Ddp1_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
               </asp:DropDownList> 
                 <asp:LinkButton ID="Filter" runat="server" class="btn border-none mr-1"  style=" color:black; border-radius: 10px; width: 45px; font-weight: bold; " OnClick="Filter_Click"><i class="fa fa-sliders" aria-hidden="true"></i></asp:LinkButton>
                </div>
              </div>
            <div class="card-body d-flex flex-row align-items-center h-100 justify-content-between " style="width:100%;" id="test">
           <div class="row" style="width:100%;">
           <div class="container align-items-center" style="width:100%; height: 100%; align-content:center;margin-top:-3%;margin-left:1%;" id="contentToPrint">
                            <canvas id="canvas"></canvas>
                           </div> 
                       </div>
                    </div>
                 </div>
            </div>
        </div>
    
    </div>
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="js/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.4.5.2.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="js/jquery-3.7.1.js"></script>
      
      <script>
//              function printDashboard() {
//     var now = new Date();
//              var dateStr = now.toLocaleDateString('en-GB') + '  ' +
//              now.toLocaleTimeString('en-US', {hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true });

//              document.getElementById('printDateTime').innerText = dateStr;
//              document.getElementById('printMachine').innerText = document.getElementById('<%= MachineName.ClientID %>').innerText;
//     document.getElementById('printUser').innerText = document.getElementById('<%= User3.ClientID %>').innerText;

//              window.print();
// }
function printDashboard() {
    var now = new Date();
    var dateStr = now.toLocaleDateString('en-GB') + '  ' +
        now.toLocaleTimeString('en-US', { hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true });

    document.getElementById('printDateTime').innerText = dateStr;
    document.getElementById('printMachine').innerText = document.getElementById('<%= MachineName.ClientID %>').innerText;
    document.getElementById('printUser').innerText = document.getElementById('<%= User3.ClientID %>').innerText;

    // Chart.js doesn't auto-resize the canvas for @media print, so the Plan vs Actual
    // bar chart can render blank unless we force a resize right before printing.
    if (window.myBar) {
        window.myBar.resize();
    }

    setTimeout(function() {
        window.print();
    }, 150);
}
     
<%--
   



        window.onbeforeunload = (event) => {

            event.preventDefault();
            event.returnValue = "Kindly logout, do not leave abruptly.";
            return "Kindly logout, do not leave abruptly.";
        }
        $(function () {
            $("a, input, .myDropDown, .drp1, .drp2").on("click change", function () {
                window.onbeforeunload = null;
            });
        });

    --%>
        // script.js
          ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "b55b025e438fa8a98e32482b5f768ff5"];
        function printDiv(divId) {
            // Get the HTML content of the specified div
            var content = document.getElementById(divId).innerHTML;

            // Create a new window
            var printWindow = window.open('', '', 'width=600,height=400');

            // Write the content to the new window
            printWindow.document.write('<html><head><title>Print</title></head><body>');
            printWindow.document.write(content);
            printWindow.document.write('</body></html>');

            // Print the window
            printWindow.document.close(); // necessary for IE >= 10
            printWindow.focus(); // necessary for IE >= 10*/
            printWindow.print();
        }
            
        var P1 = <%=P1%>;
        var P2 = <%=P2%>;
        var P3 = <%=P3%>;
        var P4 = <%=P4%>;
        var P5 = <%=P5%>;
        var P6 = <%=P6%>;
        var P7 = <%=P7%>;
        var P8 = <%=P8%>;
        var P9 = <%=P9%>;
        var P10 = <%=P10%>;
        var P11 = <%=P11%>;
        var P12 = <%=P12%>;

        var A1 = <%=A1%>;
        var A2 = <%=A2%>;
        var A3 = <%=A3%>;
        var A4 = <%=A4%>;
        var A5 = <%=A5%>;
        var A6 = <%=A6%>;
        var A7 = <%=A7%>;
        var A8 = <%=A8%>;
        var A9 = <%=A9%>;
        var A10 = <%=A10%>;
        var A11 = <%=A11%>;
        var A12 = <%=A12%>;


        var barChartData = {
            labels: [
                "Jan",
                "Feb",
                "Mar",
                "Apr",  
                "May",
                "Jun",
                "July",
                "Aug",
                "Sept",
                "Oct",
                "Nov",
                "Dec"
            ],
            datasets: [ 
                {
                    label: "Plan",
                    backgroundColor: "#5bc0de",
                    borderColor: "black",
                    borderWidth: 1,
                    data: [P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12]
                },
                {
                    label: "Actual",
                    backgroundColor: "seagreen", 
                    borderColor: "black",
                    borderWidth: 1,
               //     minBarLength: 6,
                    data: [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12]
                }
            ]
        };
         
var chartOptions = {
    responsive: true,
    tooltips: {
        mode: 'index',
                intersect: false
            },
            // legend: {
            //     position: "top",
            //     labels: {
            //         fontSize: 16,
            //         fontColor: "black",
            //         fontFamily: "Microsoft Yahei UI",
            //     }
            // },
            title: {
                display: true
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontSize: 14,
                        fontColor: "black",
                        fontFamily: "Microsoft Yahei UI",
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontSize: 14, // Set font size for x-axis
                        fontColor: "black",
                        fontFamily: "Microsoft Yahei UI",
                    }
                }]
            }
        }

        window.onload = function () {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: "bar",
                data: barChartData,
                options: chartOptions
            });
        };
     


        // Sample dynamic data
        var dynamicValues = [5, 10, 15, 20, 14, 17, 16];
        var dynamicStatus = ["Status1", "Status2", "Status3", "Status4"];

        // Define shades of blue and green
        var blueShades = ["#add8e6", "#87ceeb", "#4682b4", "#4169e1"];
        var greenShades = ["#98fb98", "#8fbc8f", "#3cb371", "#2e8b57"];

        // Generate series data and legend items
        var seriesData = dynamicValues.map(function (value, index) {
            var color = index < blueShades.length ? blueShades[index] : greenShades[index - blueShades.length];
            return {
                "values": [value],
                "text": dynamicStatus[index],
                "backgroundColor": color // Set background color
            };
        });

        var legendItems = dynamicValues.map(function (value, index) {
            var color = index < blueShades.length ? blueShades[index] : greenShades[index - blueShades.length];
            return {
                "text": "Label " + (index + 1) + ": " + value + " (" + dynamicStatus[index] + ")",
                "backgroundColor": color // Set background color for legend item
            };
        });

        var chartData = {
            "type": "pie",
            "series": seriesData,

            "legend": {
                "visible": true,
                "marker": {
                    "type": "circle"
                },
                "align": "center",
                "layout": "horizontal",
                "borderWidth": 0,
                "item": {
                    "fontColor": "#333",
                    "fontSize": 12
                },
                "data": legendItems // Dynamically set legend items
            },
            plotarea: {
                marginTop : 0
            },
            "tooltip": {
                "text": "%node-value", // %node-value represents the value of the data point
                "backgroundColor": "#fff",
                "fontColor": "#333",
                "borderColor": "#333"
            }
        };

        zingchart.render({
            id: 'chart',
            data: chartData,
            height: 130,
            width: 350
        });



        var dataM_2 = (parseInt(<%=Plan_Daily%>) + 1) * 1.5;
       var dataM2 = (parseInt(<%=Plan_Daily%>));
        var dataS_2 = parseInt(<%=Plan_Daily%>) / 2;


        var myConfig1 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontFamily: "Yahei UI, sans-serif",
                    fontSize: 16,
                    rules:  [{
                        rule: '%v >= 100'
                    },
                    {
                        rule: '%v < 60 && %v < 100'
                    },
                    {
                        rule: '%v < 30 && %v > 60'
                    },
                    {
                        rule: '%v <  30'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_2, // updated from 850
                step: dataS_2,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM2',
                        backgroundColor: '#33adff'
                    },
                    {
                        rule: '%v >= dataM2',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Plan_Daily%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 100
                },
            }]
        };


        zingchart.render({
            id: 'myChart1',
            data: myConfig1,
            height: 130,
            width: 130
        });

        var dataM_1 = (parseInt(<%=Plan_Weekly%>) + 1) *1.5;
        var dataM = parseInt(<%=Plan_Weekly%>);
        var dataS_1 = parseInt(<%=Plan_Weekly%>) / 2;

        var myConfig2 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontFamily: "Yahei UI, sans-serif",
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 100'
                    },
                    {
                        rule: '%v < 60 && %v < 100'
                    },
                    {
                        rule: '%v < 30 && %v > 60'
                    },
                    {
                        rule: '%v <  30'
                    }
                    ]
                }
            },
            
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_1, // updated from 850
                step: dataS_1,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM',
                        backgroundColor: '#33adff'
                    },
                    
                    { 
                        rule: '%v >= dataM',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Plan_Weekly%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                 backgroundColor: 'black',
                 indicator: [4, 1, 1, 1, 0.4],
                 animation: {
                     effect: 2,
                     method: 1,
                     sequence: 4,
                     speed: 900
                 },
             }]
         };


        zingchart.render({
            id: 'myChart2',
            data: myConfig2,
            height: 130,
            width: 130
        });

        var dataM = (parseInt(<%=Plan_Mthly%>) + 1) * 2;
        var dataPM = parseInt(<%=Plan_Mthly%>);
        var dataS = parseInt(<%=Plan_Mthly%>)/2;

        var myConfig3 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Yahei UI, sans-serif",
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 100'
                    },
                    {
                        rule: '%v < 60 && %v < 100'
                    },
                    {
                        rule: '%v < 30 && %v > 60'
                    },
                    {
                        rule: '%v <  30'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM, // updated from 850
                step: dataS,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataPM',
                        backgroundColor: '#33adff'
                    },
                    {
                        rule: '%v >= dataPM',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Plan_Mthly%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart3',
            data: myConfig3,
            height: 130,
            width: 130
        });


        var dataM_21 = (parseInt(<%=startFreq%>) +1) * 2;
        var dataM21 = parseInt(<%=startFreq%>);
        var dataS_21 = parseInt(<%=startFreq%>) / 2;

        var myConfig21= {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default

                    fontSize: 16,
                    fontFamily: "Yahei UI, sans-serif",
                    rules: [{
                        rule: '%v >= 100'
                    },
                    {
                        rule: '%v < 60 && %v < 100'
                    },
                    {
                        rule: '%v < 30 && %v > 60'
                    },
                    {
                        rule: '%v <  30'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_21, // updated from 850
                step: dataS_21,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM21',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM21',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{ 
                values: [parseInt(<%=startFreq%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [5, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart21',
            data: myConfig21,
            height: 130,
            width: 130
        });

        var dataM_22 = (parseInt(<%=EndFreq%>) +1) * 2;
        var dataM22 = parseInt(<%=EndFreq%>);
        var dataS_22 = parseInt(<%=EndFreq%>) / 2;

        var myConfig22 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 100'
                    },
                    {
                        rule: '%v < 60 && %v < 100'
                    },
                    {
                        rule: '%v < 30 && %v > 60'
                    },
                    {
                        rule: '%v <  30'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_22, // updated from 850
                step: dataS_22,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM22',
                        backgroundColor: '#5bc0de'
                    },
                    
                    {
                        rule: '%v >= dataM22',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=EndFreq%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [5, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                }, 
            }]
        };


        zingchart.render({
            id: 'myChart22',
            data: myConfig22,
            height: 160,
            width: 130
        });

        var dataM_31 = (parseInt(<%=Act_Daily%>) +1) * 2;
        var dataM31 = parseInt(<%=Act_Daily%>);
        var dataS_31 = parseInt(<%=Act_Daily%>) / 2;


        var myConfig31 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_31, // updated from 850
                step: dataS_31,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM31',
                        backgroundColor: '#2eb82e'
                    },
                    
                    {
                        rule: '%v >= dataM31',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Act_Daily%>)], 
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart31',
            data: myConfig31,
            height: 130,
            width: 130
        });


        var dataM_32 = (parseInt(<%=Act_Weekly%>) +1 ) * 2;
        var dataM32 = parseInt(<%=Act_Weekly%>);
        var dataS_32 = parseInt(<%=Act_Weekly%>) / 2;


        var myConfig32 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules:  [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_32, // updated from 850
                step: dataS_32,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM32',
                        backgroundColor: '#2eb82e'
                    },
                    {
                        rule: '%v >= dataM32',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Act_Weekly%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart32',
            data: myConfig32,
            height: 130,
            width: 130
        });


        var dataM_33 = (parseInt(<%=Act_Mthly%>) + 1) * 2;
        var dataM33 = parseInt(<%=Act_Mthly%>);
        var dataS_33 = parseInt(<%=Act_Mthly%>) / 2;


        var myConfig33 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_33, // updated from 850
                step: dataS_33,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM33',
                        backgroundColor: '#2eb82e'
                    },
                    {
                        rule: '%v >= dataM33',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Act_Mthly%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart33',
            data: myConfig33,
            height: 130,
            width: 130
        });

        var dataM_41 = (parseInt(<%=Send_List%>)+1) * 2;
        var dataM41 = parseInt(<%=Send_List%>);
        var dataS_41 = parseInt(<%=Send_List%>) / 2;


        var myConfig41 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_41, // updated from 850
                step: dataS_41,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }] 
                },
                ring: {  
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM41',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM41',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Send_List%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart41',
            data: myConfig41,
            height: 130,
            width: 130
        });

        //Overdue Yesterday

        var dataODY = (parseInt(<%=OD_Yest%>) + 1) * 2;
        var dataODY1 = parseInt(<%=OD_Yest%>);
        var dataODY2 = parseInt(<%=OD_Yest%>) / 2;

        var Overdue_Yt = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataODY, // updated from 850
                step: dataODY2,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataODY1',
                        backgroundColor: '#ff4d4d'
                    },

                    {
                        rule: '%v >= dataODY1',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=OD_Yest%>)],
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'Overdue_Y',
            data: Overdue_Yt,
            height: 130,
            width: 130
        });

        //Overdue Gages for Week

        var ODW1 = (parseInt(<%=OD_Weekly%>) + 1) * 2;
        var ODWK1 = parseInt(<%=OD_Weekly%>);
        var ODWKY1 = parseInt(<%=OD_Weekly%>) / 2;

        var Overdue_W = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: ODW1, // updated from 850
                step: ODWKY1,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= ODWK1',
                        backgroundColor: '#ff4d4d'
                    },

                    {
                        rule: '%v >= ODWK1',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=OD_Weekly%>)],
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'Overdue_W',
            data: Overdue_W,
            height: 130,
            width: 130
        });

        //Overdue Gages for Month


        var dataODM1 = (parseInt(<%=OD_Monthly%>) + 1) * 2;
        var dataODM2 = parseInt(<%=OD_Monthly%>);
        var dataODM3 = parseInt(<%=OD_Monthly%>) / 2;

        var Overdue_M = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataODM1, // updated from 850
                step: dataODM3,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataODM2',
                        backgroundColor: '#ff4d4d'
                    },

                    {
                        rule: '%v >= dataODM2',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=OD_Monthly%>)],
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'Overdue_M',
            data: Overdue_M,
            height: 130,
            width: 130
        });
    
        //Overdue for Yearly

        var dataODYL1 = (parseInt(<%=OD_Yearly%>) + 1) * 2;
        var dataODYL2 = parseInt(<%=OD_Yearly%>);
        var dataODYL3 = parseInt(<%=OD_Yearly%>) / 2;


        var Overdue_YLY = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataODYL1, // updated from 850
                step: dataODYL3,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataODYL2',
                        backgroundColor: '#ff4d4d'
                    },
                    {
                        rule: '%v >= dataODYL2',
                        backgroundColor: '#cdcdcd'
                    } 
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=OD_Yearly%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'Overdue_YLY',
            data: Overdue_YLY,
            height: 130,
            width: 130
        });

        //Overdue for Total

        var dataODTL1 = (parseInt(<%=OD_Total%>) + 1) * 2;
        var dataODTL2 = parseInt(<%=OD_Total%>);
        var dataODTL3 = parseInt(<%=OD_Total%>) / 2;


        var Overdue_TTL = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataODTL1, // updated from 850
                step: dataODTL3,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataODTL2',
                        backgroundColor: '#ff4d4d'
                    },
                    {
                        rule: '%v >= dataODTL2',
                        backgroundColor: '#cdcdcd'
                    } 
                    ]
                }
            },
            series: [{
                        values: [parseInt(<%=OD_Total%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                        backgroundColor: 'black',
                        indicator: [4, 1, 1, 1, 0.4],
                        animation: {
                            effect: 2,
                            method: 1,
                            sequence: 4,
                            speed: 900
                        },
                    }]
                };

                zingchart.render({
                    id: 'Overdue_TTL',
                    data: Overdue_TTL,
                    height: 130,
                    width: 130
                });




        var dataM_51 = (parseInt(<%=Ttl_Rtn%>) + 1) * 2;
        var dataM51 = parseInt(<%=Ttl_Rtn%>);
        var dataS_51 = parseInt(<%=Ttl_Rtn%>) / 2;


        var myConfig51 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_51, // updated from 850
                step: dataS_51,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM51',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM51',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Ttl_Rtn%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart51',
            data: myConfig51,
            height: 130,
            width: 130
        });

        var dataM_52 = (parseInt(<%=Not_Rtn%>) + 1) * 2;
        var dataM52 = parseInt(<%=Not_Rtn%>);
        var dataS_52 = parseInt(<%=Not_Rtn%>) / 2;


        var myConfig52 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },

            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_52, // updated from 850
                step: dataS_52,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM52',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM52',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Not_Rtn%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart52',
            data: myConfig52,
            height: 130,
            width: 130
        });


        var dataM_61 = (parseInt(<%=Issue_Gages%>) + 1) * 2;
        var dataM61 = parseInt(<%=Issue_Gages%>);
        var dataS_61 = parseInt(<%=Issue_Gages%>) / 2;


        var myConfig61 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_61, // updated from 850
                step: dataS_61,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM61',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM61',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Issue_Gages%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart61',
            data: myConfig61,
            height: 130,
            width: 130
        });

        var dataM_71 = (parseInt(<%=User_Active%>) + 1) * 2;
        var dataM71 = parseInt(<%=User_Active%>);
        var dataS_71 = parseInt(<%=User_Active%>) / 2;


        var myConfig71 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_71, // updated from 850
                step: dataS_71,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM71',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM71',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=User_Active%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

         
        zingchart.render({
            id: 'myChart71',
            data: myConfig71,
            height: 130,
            width: 130
        });


        var dataM_72 = (parseInt(<%=User_InActive%>) + 1) * 2;
        var dataM72 = parseInt(<%=User_InActive%>);
        var dataS_72 = parseInt(<%=User_InActive%>) / 2;


        var myConfig72 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_72, // updated from 850
                step: dataS_72,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 9',
                        offsetX: 9
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM72',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM72',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=User_InActive%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart72',
            data: myConfig72,
            height: 130,
            width: 130
        });

        var dataM_81 = (parseInt(<%=Closed_Cal%>) + 1)*1.2;
        var dataM81 = parseInt(<%=Closed_Cal%>);
        var dataS_81 = parseInt(<%=Closed_Cal%>) / 2;


        var myConfig81 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_81, // updated from 850
                step: dataS_81,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM81',
                        backgroundColor: '#5bc0de'
                    },
                    
                    {
                        rule: '%v >= dataM81',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Closed_Cal%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart81',
            data: myConfig81,
            height: 120,
            width: 160
        });

        var dataM_82 = (parseInt(<%=Closed_SR%>) + 1) * 1.2;
        var dataM82 = parseInt(<%=Closed_SR%>);
        var dataS_82 = parseInt(<%=Closed_SR%>) / 2;


        var myConfig82 = {
            type: "gauge",
         
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16, 
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_82, // updated from 850
                step: dataS_82,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM82',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM82',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Closed_SR%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };


        zingchart.render({
            id: 'myChart82',
            data: myConfig82,
            height: 120,
            width: 160
        });

        var dataM_83 = (parseInt(<%=Closed_RR%>) + 1) * 1.5;
        var dataM83 = parseInt(<%=Closed_RR%>);
        var dataS_83 = parseInt(<%=Closed_RR%>) / 2;


        var myConfig83 = {
            type: "gauge",
            plotarea: {
                marginTop: 0
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16, 
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_83, // updated from 850
                step: dataS_83,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [{
                        rule: '%v <= dataM83',
                        backgroundColor: '#5bc0de'
                    },
                    {
                        rule: '%v >= dataM83',
                        backgroundColor: '#cdcdcd'
                    }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Closed_RR%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart83',
            data: myConfig83,
            height: 120,
            width: 160
        });


        var dataM_91 = (parseInt(<%=Open_Cal%>) + 1) * 2.3;
        var dataM91 = parseInt(<%=Open_Cal%>);
        var dataS_91 = parseInt(<%=Open_Cal%>) / 2;

        var myConfig91 = {
            type: "gauge",
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plotarea: {
                marginTop: 0
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16, 
                    rules: [
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_91, // updated from 850
                step: dataS_91,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [
                        {
                            rule: '%v <= dataM91',
                            backgroundColor: '#5bc0de' // Red for lower values
                        },
                        {
                            rule: '%v >= dataM91',
                            backgroundColor: '#cdcdcd' // Green for higher values
                        }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Open_Cal%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

       

        zingchart.render({
            id: 'myChart91',
            data: myConfig91,
            height: 120,
            width: 130
        });

        var dataM_92 = (parseInt(<%=Open_SR%>) + 1) * 2;
        var dataM92 = parseInt(<%=Open_SR%>);
        var dataS_92 = parseInt(<%=Open_SR%>) / 2;

        var myConfig92 = {
            type: "gauge",
            globals: {
                fontSize: 0,

                fontFamily: "Arial, sans-serif"
            },
            plotarea: {
                marginTop: 0
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16, 
                    rules: [
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_92, // updated from 850
                step: dataS_92,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [
                        {
                            rule: '%v <= dataM92',
                            backgroundColor: '#5bc0de' // Red for lower values
                        },
                        {
                            rule: '%v >= dataM92',
                            backgroundColor: '#cdcdcd' // Green for higher values
                        }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Open_SR%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator: [4, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart92',
            data: myConfig92,
            height: 120,
            width: 130
        });

        var dataM_93 = (parseInt(<%=Open_RR%>) + 1) * 2;
        var dataM93 = parseInt(<%=Open_RR%>);
        var dataS_93 = parseInt(<%=Open_RR%>) / 2;

        var myConfig93 = {
            type: "gauge",
            globals: {
                fontSize: 0,

                fontFamily: "Arial, sans-serif"
            },
            plotarea: {
                marginTop: 0
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16, 
                    rules: [ 
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5

            },
            scaleR: {
                aperture: 210,
                minValue: 0, // updated from 300
                maxValue: dataM_93, // updated from 850
                step: dataS_93,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [
                        {
                            rule: '%v <= dataM93',
                            backgroundColor: '#5bc0de' // Red for lower values
                        },
                        {
                            rule: '%v >= dataM93',
                            backgroundColor: '#cdcdcd' // Green for higher values
                        }
                    ]
                } 
            },
            series: [{
                values: [parseInt(<%=Open_RR%>)], // Replace 'YourCSharpVariable' with your actual C# variable
                backgroundColor: 'black',
                indicator:[5,1,1,1,0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 900
                },
            }]
        };

        zingchart.render({
            id: 'myChart93',
            data: myConfig93,
            height: 120,
            width: 130
        }); 

        var dataM_10_1 = (parseInt(<%=Ttl_Parts%>) + 1) * 2;
        var data10_1 = parseInt(<%=Ttl_Parts%>);
        var dataS_10_1 = parseInt(<%=Ttl_Parts%>) / 2;

        var myConfig10_1 = {
            type: "gauge",
            plotarea: {
                marginTop: 0,
                marginBottom: 10
            },
            globals: {
                fontSize: 0,
                fontFamily: "Arial, sans-serif"
            },
            plot: {
                size: '100%',
                valueBox: {
                    placement: 'center',
                    text: '%v', //default
                    fontSize: 16,
                    rules: [{
                        rule: '%v >= 80'
                    },
                    {
                        rule: '%v < 60 && %v < 80'
                    },
                    {
                        rule: '%v < 20 && %v > 60'
                    },
                    {
                        rule: '%v < 20'
                    }
                    ]
                }
            },
            tooltip: {
                borderRadius: 5
            },
            scaleR: {
                aperture: 210,
                minValue: 0,
                maxValue: dataM_10_1,
                step: dataS_10_1,
                center: {
                    visible: false
                },
                tick: {
                    visible: false
                },
                item: {
                    offsetR: 0,
                    rules: [{
                        rule: '%i == 12',
                        offsetX: 15
                    }]
                },
                ring: {
                    size: 12,
                    rules: [
                        {
                            rule: '%v <= data10_1',
                            backgroundColor: '#5bc0de' // Red for lower values
                        },
                        {
                            rule: '%v >= data10_1',
                            backgroundColor: '#cdcdcd' // Green for higher values
                        }
                    ]
                }
            },
            series: [{
                values: [parseInt(<%=Ttl_Parts%>)],
                backgroundColor: '#2c3e50', // Dark background color
              indicator: [5, 1, 1, 1, 0.4],
                animation: {
                    effect: 2,
                    method: 1,
                    sequence: 4,
                    speed: 100
                },
            }]
        };

        zingchart.render({
            id: 'myChart10_1',
            data: myConfig10_1,
            height: 120,
            width: 180
        });
  
      </script>
</asp:Content>
