<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Account_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <div class="pages_title">  
    <h2>Log in <span>Page</span></h2>
    </div>
    <div class="slider_container">
    <asp:Label ID="ErrorMSG" runat="server" Text="" ForeColor="Red" align="center"></asp:Label>
    <div>
        <table class="content"align="center">
            <tr>
                <td style="text-align: right">User Name:</td>
                <td style="width: 190px">
                    <asp:TextBox ID="TextBoxLoginUserName" runat="server" style="text-align: left; margin-left: 0px" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLoginUserName" ErrorMessage="Please input user name." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxLoginUserName" ErrorMessage="Please input valid user name." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">Password:</td>
                <td style="width: 190px">
                    <asp:TextBox ID="TextBoxLoginPW" runat="server" style="text-align: left" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLoginUserName" ErrorMessage="Please input password." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxLoginPW" ErrorMessage="Please input valid password." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 190px">
                    <asp:Button ID="Button2" runat="server" Text="Log in" Width="140px" OnClick="Button2_Click" />
                </td>
                <td style="text-align: left">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 190px">&nbsp;</td>
                <td style="text-align: left">&nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <h2 align="center"> Haven't got an account yet? <a href="register.aspx"> Register</a> </h2>
    </div>
        </div>
</asp:Content>

