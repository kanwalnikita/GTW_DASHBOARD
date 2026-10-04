<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="GAGEtrak_WebReports.AboutUs" EnableViewState="true"  ViewStateMode="Enabled"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	    <title>GAGEtrak Web Applications | 3.0 </title>
    <style> 
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container shadow p-3 mb-5 bg-body rounded" Width="100%" Height="80%"> 
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; font-family:'Microsoft YaHei UI',sans-serif,'Segoe UI'; font-size:12pt; color:#222020;" bordercolor="#111111" Width="80%" Height="80%"> 
      <tr> 
        <td width="8px">&nbsp;</td> 
        <td colspan="6" valign="top"><img src="images/favicon.ico" style="margin:4px; vertical-align:middle; border:1px solid gray;"/>&nbsp;<b>GAGEtrak Web Reports.</b></td> 
      </tr>
      
      <tr>
        <td>&nbsp;</td>
        <td><i>Version 3.1</i>&nbsp;&nbsp;&nbsp;for MS SQL Server</td>
      </tr>
	
	<tr style="border-bottom:1px solid black;">
        <td>&nbsp;</td>
		<td>&nbsp;<b>Release Date&nbsp;:&nbsp;</b><b><i>&nbsp;&nbsp;JUN&nbsp;-&nbsp;2024&nbsp;</i></b></td>
	</tr>

		<tr style="color:gray;"> 
			<td>&nbsp;</td> 
			<td><b>Designed For :</b> GAGEtrak 6.80 Build 021 - Standard Installation, running MS SQL Server</td> 
		</tr> 
		
		<tr style="border-bottom:1px solid black;">
			<td>&nbsp;</td> 
			<td>&nbsp;<b>CALIBRATION MANAGEMENT SOFTWARE</b></td> 
		</tr> 
		
		 
		<tr style="color:gray;"> 
			<td colspan="2">
			<table cellpadding="0" cellspacing="0" border="0" style="border-collapse:collapse;" class="db_details">
				<tr valign="top">
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>DBMS :</b>&nbsp;</td>
					<td>&nbsp;Microsoft SQL Server(<asp:Label ID="DBMS" runat="server" ></asp:Label>)&nbsp;</td>
					<td>&nbsp;<b>Version :</b>&nbsp;</td>
					<td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Wrap="False" BackColor="#EEEEEE" BorderColor="#EEEEEE" ForeColor="#3399FF" ></asp:TextBox>&nbsp;</td>
				</tr>
				
				<tr valign="top">
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Database :</b>&nbsp;</td>
					<td>&nbsp;<asp:Label ID="sql" runat="server" ></asp:Label>&nbsp;</td>
					<td>&nbsp;<b>on :</b>&nbsp;</td>
					<td>&nbsp;<asp:Label ID="DB" runat="server" ></asp:Label>&nbsp;</td>
				</tr>
				<tr valign="top">
					<td colspan="2" style="font-weight:bold;text-align: center;">IIS SERVER MAC ADDRESS:</td>
					<td colspan="2">
						<asp:Label ID="MAC" runat="server" Text="Label"></asp:Label>
					</td>
				</tr>
			</table>
                </td>
            </tr>
             	<tr style="border-bottom:1px solid black;">
		<td>&nbsp;</td>
		<td>Recommended Browsers : <b><a href="http://www.mozilla.org/" target="_getF">Firefox</a>, <a href="https://www.google.com/chrome/" target="_getC">Chrome</a></b> &nbsp; Javascript is required<div id="javascript_avail" style="display:inline;">&nbsp;(enabled)</div><noscript>&nbsp;(not enabled!)</noscript>. &nbsp; Cookies are required<div id="cookies" style="display:inline;"></div>. &nbsp; </td>
	</tr>
	
	<tr>
        <td>&nbsp;</td>
              <td><b style="position:absolute; padding-top:5px; height:32px;">Made By:</b><a href="http://keshrup.com/" target="_kspl">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img style="position:absolute; margin-left:50px;height:30px;" src="../images/logo.jpg" /><b style="position:absolute; padding-top:5px; margin-left:80px; height:32px;">&nbsp;&nbsp;Keshrup Systems</b></a><br/>
        	<p>Unit-1, Neminath Industrial Estate - 3, <font color="gray">Navghar, Vasai - East,</font> Palghar - 401 210, <font color="gray">&#9743; 0250-2391365 / 66 &#9993; sales@keshrup.com</font></p>
    </td>
                  </tr>
	
             </table>
        </div> 
</asp:Content>
