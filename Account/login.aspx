<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Account_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <div class="pages_title">  
    <h2>Log in <span>Page</span></h2>
    </div>
    <asp:Label ID="ErrorMSG" runat="server" Text="" ForeColor="Red"></asp:Label>
    <div>
        <table class="videocontainer">
            <tr>
                <td style="text-align: right">User Name:</td>
                <td style="width: 190px">
                    <asp:TextBox ID="TextBoxLoginUserName" runat="server" style="text-align: left; margin-left: 0px" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLoginUserName" ErrorMessage="Please input user name." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">Password:</td>
                <td style="width: 190px">
                    <asp:TextBox ID="TextBoxLoginPW" runat="server" style="text-align: left" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxLoginUserName" ErrorMessage="Please input password." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 190px">
                    <asp:Button ID="Button2" runat="server" Text="Log in" Width="140px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 190px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <h2> Haven't got an account yet? <a href="register.aspx"> Register</a> </h2>
    </div>
</asp:Content>

