<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="GAGEtrak_WebReports.DueReports.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-2">

            </div>
            <div class="col-8">
                <div class="card">
                    <div class="card-header justify-content-center" style="text-align:center;"><h3>!!&nbsp;Error&nbsp;!!</h3></div>
                    <div class="card-body" style="align-content:center;">

                        <asp:Label ID="Errors" runat="server"></asp:Label>

                    </div>
                </div>
            </div>
            <div class="col-2">

            </div>
        </div>
    </div>
        
</asp:Content>
