<%@ Page Title="" Language="C#" MasterPageFile="~/DueReports/DueReports.Master" AutoEventWireup="true" CodeBehind="DisplayUsersPage.aspx.cs" Inherits="GAGEtrak_WebReports.AdminPage.DisplayUsersPage" %>
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
         .message-container {
            display: none; /* Hidden initially */
            padding: 15px;
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            margin-top: 10px;
            position: relative;
            width: fit-content;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table container-fluid">
        <header style=" text-align:center" >
            <div class="container-fluid" >
               <div class="row">
                
                <div class="col-1">
                <asp:LinkButton ID="Logout" runat="server" OnClick="Logout_Click" style="font-size:24px" ToolTip="Logout"><b><i class="fa fa-sign-in" style="transform: rotate(180deg);height:40px;width:40px;"></i></b></asp:LinkButton>
                </div>
                   <div class="col-11">

                </div>
                   </div> 
            </div>
            <h2 style="font-weight: bold;">Admin&nbsp;Panel</h2>
        </header>
    </div> 
    <div class="tablecontainer"  Width="70%">
          <table class="table table-borderless" style="width:70%; margin-left:15%;margin-right:30%;">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass=" table table-border-dark table-striped" style=" border:1px;text-align:center;text-decoration:none; align-content:center;border:1px solid #d6d6ca;box-shadow: 1px 1px 1px 1px #e7e7e4;" OnSelectedIndexChanged="OnSelectedIndexChanged" OnRowCommand="Gridview1_RowCommand" >
                        <Columns>
                            <asp:ButtonField CommandName="Select" ButtonType="Link"  Text="&lt;i style=&quot;font-size:24px&quot; class=&quot;fa&quot;&gt;&amp;#xf152;&lt;/i&gt;" />
                            <asp:BoundField DataField="UserID" HeaderText="User Name" >
                            <ControlStyle Font-Size="Large" />
                            <HeaderStyle Font-Bold="True" Font-Size="Large" />
                            <ItemStyle Font-Bold="True" Font-Size="Medium" VerticalAlign="Middle" />
                            </asp:BoundField>
             
                            <asp:BoundField DataField="FullName" HeaderText="Access">
                            <HeaderStyle Font-Bold="True" Font-Size="Large" />
                                
                            <ItemStyle Font-Bold="True" Font-Size="Medium" VerticalAlign="Middle" />
                            </asp:BoundField>    
                            <asp:TemplateField HeaderText="Password">
                                <ItemTemplate>
                                      <asp:LinkButton ID="btnSubmit" runat="server" CssClass="btn" CommandName="ShowPassword"  CommandArgument="<%# Container.DataItemIndex %>">
                                           <i class="fa fa-key"></i>
                                          </asp:LinkButton>

                                </ItemTemplate>
                                 
                                <HeaderStyle Font-Size="Large" />
                                 
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#B1A998" Font-Bold="True" Font-Size="Medium" />
                    </asp:GridView>

                    <div id="messageContainer" class="message-container" runat="server">
                            <asp:Button ID="ClsBtn" runat="server" Text="×" OnClick="ClsBtn_Click" />
                            <asp:Label ID="ShowPass" runat="server"></asp:Label>
                    </div>
                </td>
             </tr>
          </table>
         <div class="container-fluid justify-content-between" style="height:60px;width:50%;">
            <div class="row">
                <div class="col-3" style="align-content:center;">
                   <!-- Add new button -->
                    <button id="modalActivate" type="button" class="btn" data-toggle="modal" data-target="#AddUserPreview" style="background-color: #009900;font-weight:bold; color:white;" runat="server" AutopostBack="True">
                     Add&nbsp;New</button>
                </div>
                <div class="col-3">
                    <!-- Update button -->
                     <button id="modalActivat" type="button" class="btn" data-toggle="modal" data-target="#UpdatePreview" style="background-color: #FF6600;font-weight:bold; color:white;" runat="server" AutopostBack="True">
                     Update</button>
                </div>
                <div class="col-3">
                    <!-- Delete button -->
                     <button id="modalActive" type="button" class="btn" data-toggle="modal" data-target="#DeletePreview" style=" background-color: #ff0000;font-weight:bold; color:white;" runat="server" AutopostBack="True">
                     Delete</button>
                </div>
                <div class="col-3">
                    <!-- Reset button -->
                    <asp:Button ID="Button4" runat="server" Text="Refresh" CssClass="btn" BackColor="#003399" ForeColor="White" Font-Bold="True" OnClick="Button4_Click"/>
                </div>
            </div>
         </div>
   </div>
    <div class="container-fluid">
        <asp:Label ID="ErrorText" runat="server" ></asp:Label>
    </div>
     <div class="container-fluid" style="width:100%;">
             <div class="table table-striped">
                 <div class="row">
                     <div class="col-3">          
                     </div>
                     <div class="col-6">
                           
                          <div class="modal fade right" id="AddUserPreview" tabindex="-1" role="dialog" aria-labelledby="AddUserPreviewabel" aria-hidden="true">
                            <div class="modal-dialog-full-width modal-dialog momodel modal-fluid" role="document" style="margin-top: 150px;margin-left:40%;">
                             <div class="modal-content-full-width modal-content " style="width:300px;">
                               <div class=" modal-header-full-width modal-header text-center">
                                 <h4 class="modal-title w-100" id="exampleModalPreviewLabel">Add Users</h4>
                                 <button type="button" class="btn btn-danger btn-md " data-dismiss="modal" style=" border-radius:0px;">X</button>
                               </div>
                                 <div class="modal-body">
                                     <div class="table table-striped justify-content-center align-content-center" style=" width:100%;height:200px;align-content:center;">
                                         <div class="row align-content-center">
                                             <div class="col-1"></div>
                                             <div class="col-10"><asp:TextBox ID="UserN" runat="server" CssClass="text-center" placeholder="Username"></asp:TextBox></div>
                                             <div class="col-1"></div>
                                         </div>
                                         <br />
                                         <div class="row">
                                              <div class="col-1"></div>
                                              <div class="col-10"><asp:TextBox ID="Pswd" runat="server" CssClass="text-center" placeholder="Password"></asp:TextBox></div>
                                              <div class="col-1"></div>
                                         </div>
                                         <br />
                                         <div class="row">
                                              <div class="col-1"></div>
                                              <div class="col-10 justify-content-between">
                                                  <asp:DropDownList ID="Auth" runat="server" Width="90%" style="text-align:center;">
                                                 <asp:ListItem Value="0">Admin</asp:ListItem>
                                                 <asp:ListItem Value="1">Issue</asp:ListItem>
                                                 <asp:ListItem Value="2">User</asp:ListItem>
                                             </asp:DropDownList></div>
                                              <div class="col-1"></div>
                                         </div>
                                         <br />
                                         <div class="row">
                                                    <div class="col-1"></div>
                                                    <div class="col-10 justify-content-between" style="">
                                                    <asp:Button ID="Enter" runat="server" Text="Add" OnClick="Enter_Click" style=" border-radius: 0px;background-color: #009900;font-weight:bold; color:white; width:60%;" CssClass="text-center btn"/>
                                                    </div>
                                                    <div class="col-1"></div>
                                         </div>
                                         <div class="row">
                                             <div class="col">
                                                 <asp:Label ID="result" runat="server" Font-Size="Small" style="text-wrap:inherit"></asp:Label>
                                             </div>
                                         </div>
                                     </div>
                                </div>
                          </div>
                       </div>
                     </div>
                         <div class="modal fade right" id="UpdatePreview" tabindex="-1" role="dialog" aria-labelledby="UpdatePreviewlabel" aria-hidden="true">
                            <div class="modal-dialog-full-width modal-dialog momodel modal-fluid" role="document" style="margin-top: 150px;margin-left:40%;">
                             <div class="modal-content-full-width modal-content " style="width:300px;">
                               <div class=" modal-header-full-width modal-header text-center">
                                 <h4 class="modal-title w-100" id="UpdateModalPreviewLabel">Update Password</h4>
                                 <button type="button" class="btn btn-danger btn-md " data-dismiss="modal" style=" border-radius:0px;">X</button>
                               </div>
                                 <div class="modal-body">
                                     <div class="table table-striped justify-content-center align-content-center" style=" width:100%;height:60px;align-content:center;">
                                         <div class="row align-content-center">
                                             <div class="col-1"></div>
                                             <div class="col-10"><asp:TextBox ID="PassUp" runat="server" CssClass="text-center" placeholder="Password"></asp:TextBox></div>
                                             <div class="col-1"></div>
                                         </div>
                                         </div>
                                       <div class="row">
                                                    <div class="col-1"></div>
                                                    <div class="col-10 justify-content-between">
                                                    <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" style=" border-radius: 0px;background-color: #FF6600;font-weight:bold; color:white; width:60%;" CssClass="text-center btn"/>
                                                    </div>
                                                    <div class="col-1"></div>
                                         </div>
                                         <div class="row">
                                             <div class="col">
                                                 <asp:Label ID="result1" runat="server" EnableViewState="true"></asp:Label>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                                </div>
                             </div>
                         <div class="modal fade right" id="DeletePreview" tabindex="-1" role="dialog" aria-labelledby="DeletePreviewlabel" aria-hidden="true">
                            <div class="modal-dialog-full-width modal-dialog momodel modal-fluid" role="document" style="margin-top: 150px;margin-left:40%;">
                             <div class="modal-content-full-width modal-content " style="width:300px;">
                               <div class=" modal-header-full-width modal-header text-center">
                                 <h4 class="modal-title w-100" id="DeleteModalPreviewLabel">Delete User</h4>
                                 <button type="button" class="btn btn-danger btn-md " data-dismiss="modal" style=" border-radius:0px;">X</button>
                               </div>
                                 <div class="modal-body">
                                     <div class="table table-striped justify-content-center align-content-center" style=" width:100%;height:60px;align-content:center;">
                                         <div class="row align-content-center">
                                             <div class="col-1"></div>
                                             <div class="col-10"><asp:Label ID="Delete1" runat="server" EnableViewState="true" Text="Are your sure to delete?"></asp:Label></div>
                                             <div class="col-1"></div>
                                         </div>
                                           <div class="row">
                                                    <div class="col-1"></div>
                                                    <div class="col-10 justify-content-between" >
                                                    <asp:Button ID="DeleteUser" runat="server" Text="Delete" OnClick="DeleteUser_Click" style=" border-radius: 0px;background-color: #FF0000;font-weight:bold; color:white; width:60%;" CssClass="text-center btn"/>
                                                    </div>
                                                    <div class="col-1"></div>
                                         </div>
                                         <div class="row">
                                             <div class="col">
                                                 <asp:Label ID="result2" runat="server" EnableViewState="true"></asp:Label>
                                             </div>
                                         </div>
                                         </div>
                                     
                                     </div>
                                 </div>
                                </div>
                             </div>
                           <div class="modal fade right" id="DeleteDonePreview" tabindex="-1" role="dialog" aria-labelledby="DeletePreviewlabel" aria-hidden="true">
                            <div class="modal-dialog-full-width modal-dialog momodel modal-fluid" role="document" style="margin-top: 150px;margin-left:40%;">
                              <div class="modal-content-full-width modal-content " style="width:300px;">
                               <div class=" modal-header-full-width modal-header text-center">
                                 <h4 class="modal-title w-100" id="DeleteDoneModalPreviewLabel">Delete User</h4>
                                    <button type="button" class="btn btn-danger btn-md " data-dismiss="modal" style=" border-radius:0px;">X</button>
                                      </div>
                                   <div class="modal-body">
                                     <div class="row align-content-center">
                                                <div class="col">
                                                 <asp:Label ID="result3" runat="server" EnableViewState="true"></asp:Label>
                                             </div>
                                       </div> 
                                 </div>
                               </div>
                              </div>
                             </div>
                           </div>
                          </div>
                        </div>
       
      </div>
  
</asp:Content>
