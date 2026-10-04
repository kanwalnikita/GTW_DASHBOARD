<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="GAGEtrak_WebReports.LogOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            .tablecontainer {
            width: 29%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="width:50%;">
        <div class="row">
         
        </div>
            <div class="container w-100" style=" text-align:center;">
            <h6 style="color:red;font-size:9pt;">*Logout user action is given for user which has failed to logout.</h6>
        </div>
    </div>
    <div class="tablecontainer"  Width="70%">
        <table class="table table-borderless" style="width:80%; margin-left:15%;margin-right:30%;">
            <tr>
                <td >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass=" table table-border-dark table-striped" style=" border:1px;" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="Users" />
                            <asp:BoundField DataField="OperatorStamp" HeaderText="Status" />
                        
                            <asp:BoundField HeaderText="Date" DataField="DateTimeStamp" DataFormatString="{0:MM/dd/yyyy}"/>
                            <asp:BoundField DataField="DateTimeStamp" HeaderText="Time" DataFormatString="{0:HH:mm:ss}"  />
                            <asp:BoundField DataField="OpenForm" HeaderText="IP Address" />
                     
                            <asp:ButtonField HeaderText="Submit" CommandName="Select" Text="&lt;i style=&quot;font-size:24px&quot; class=&quot;fa&quot;&gt;&amp;#xf011;&lt;/i&gt;" ItemStyle-CssClass=" text-decoration-none"/>
                        </Columns>
                    </asp:GridView>
                </td>

            </tr>
          
        </table>
      
    </div>
</asp:Content>
