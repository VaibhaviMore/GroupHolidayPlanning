<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MembersProfileForAdmin.aspx.cs" Inherits="MembersProfileForAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
                <!--BEGIN CONTENT-->
                <div class="page-content">
                    <div id="tab-general">
                        <div class="row mbl">
                                  
                               <div class="col-md-12"><h2>Profile: <asp:Label ID="lblUsername" runat="server"></asp:Label></h2>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <div class="text-center mbl">
                                        <asp:Image ID="imgDP" runat="server" style="max-width: 300px; max-height: 300px" alt="Image"/></div>
                                   </div>
                                <table class="table table-striped table-hover">
                                    <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>
                                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td><asp:Label ID="lblEmailID" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td><asp:Label ID="lblAddres" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                         <tr>
                                        <td>City</td>
                                        <td><asp:Label ID="lblCity" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td><span class="label label-success">Active</span></td>
                                    </tr>
                                    <tr>
                                        <td>Member Since</td>
                                        <td> Jun 03, 2014</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-9">
                                        <div  class="form-horizontal">
                                            
                                            <div class="form-group"><label class="col-sm-3 control-label">Tours Attended</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="first name" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Last Name</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="last name" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Gender</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                                                      <%--  <div class="col-xs-9">
                                                            <div class="radio"><label class="radio-inline"><input type="radio" value="0" name="gender" checked="checked"/>&nbsp;
                                                                Male</label><label class="radio-inline"><input type="radio" value="1" name="gender"/>&nbsp;
                                                                Female</label></div>
                                                        </div>
 --%>                                                   </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Birthday</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-4"><input id="datepicker-normal" type="text" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Marital Status</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-4"><select class="form-control">
                                                            <option>Single</option>
                                                            <option>Married</option>
                                                        </select></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Position</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-4"><select class="form-control">
                                                            <option>CEO</option>
                                                            <option>Director</option>
                                                            <option>Manager</option>
                                                            <option>Staff</option>
                                                            <option>Office Boy</option>
                                                        </select></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">About</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><textarea rows="3" class="form-control"></textarea></div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Mobile Phone</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="mobile phone" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Website</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="website" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Facebook</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="facebook" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-3 control-label">Twitter</label>

                                                <div class="col-sm-9 controls">
                                                    <div class="row">
                                                        <div class="col-xs-9"><input type="text" placeholder="twitter" class="form-control"/></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr/>
                                        </div>
                                
                        </div>
                      </div>
                       </div>       
                                
                    </div>
                </div>
                <!--END CONTENT-->
          
    
   
</asp:Content>

