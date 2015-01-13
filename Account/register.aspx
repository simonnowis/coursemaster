<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Account_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
      <div class="pages_title">
  <h2>Register <span>Page</span></h2>
  </div> 

        <table class="videocontainer">
        <tr>
            <td style="width: 178px; text-align: right">&nbsp;</td>
            <td>
                <asp:Label ID="ErrorMSG" runat="server" Text="" ForeColor="Red"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right">User Name:</td>
            <td>
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="User name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please input valid user name." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right; height: 12px">E-mail:</td>
            <td style="height: 12px">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Not valid Email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 12px"></td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right; height: 12px">Password:</td>
            <td style="height: 12px">
                <asp:TextBox ID="TextBoxPW" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Please input valid password. only charecters and numbers allowed." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 12px"></td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right; height: 25px;">Confirm Password:</td>
            <td style="height: 25px">
                <asp:TextBox ID="TextBoxConfirmPW" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxConfirmPW" ErrorMessage="Please re-enter password." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxConfirmPW" ErrorMessage="Password does not match." ForeColor="Red"></asp:CompareValidator>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right; height: 12px;">PSU ID(xyz1234):</td>
            <td style="height: 12px">
                <asp:TextBox ID="TextBoxPSUID" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPSUID" ErrorMessage="PSUID is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxPSUID" ErrorMessage="Please input valid PSU ID." ForeColor="Red" ValidationExpression="^[\w]{1,10}$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 12px"></td>
        </tr>
        <tr>
            <td style="width: 168px; text-align: right; height: 12px;">PSU Password:</td>
            <td style="height: 12px">
                <asp:TextBox ID="TextBoxPSUPW" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPSUPW" ErrorMessage="PSU Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxPSUPW" ErrorMessage="Please input valid password." ForeColor="Red" ValidationExpression="^[\S]{1,20}$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 12px"></td>
        </tr>
        <tr>
            <td style="width: 138px; text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
                <input id="Reset1" style="width: 100px" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <div>
        <h3 align="center"> Already got an account? <a href="login.aspx">Log in</a> </h3>
    </div>
    
    
</asp:Content>

