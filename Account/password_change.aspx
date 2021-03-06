﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="password_change.aspx.cs" Inherits="Account_password_change" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
            <div class="pages_title">  
    <h2 style="text-align: left">Password <span>Change
        </span></h2>
    </div>
    <table align="center" class="videocontainer" style="width: 70%">
                <tr>
                    <td style="width: 5%; height: 12px;"></td>
                    <td style="height: 12px"></td>
                    <td style="height: 12px">
                        <asp:Label ID="MSG" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="height: 12px"></td>
                </tr>
                <tr>
                    <td style="width: 5%">&nbsp;</td>
                    <td style="text-align: right">旧登陆密码：</td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBoxOldPW" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxOldPW" ErrorMessage="Required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxOldPW" ErrorMessage="Please input valid password. only charecters and numbers allowed." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 5%; height: 12px;"></td>
                    <td style="text-align: right; height: 12px">新登陆密码：</td>
                    <td style="height: 12px; text-align: left">
                        <asp:TextBox ID="TextBoxNewPW" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxNewPW" ErrorMessage="Required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxNewPW" ErrorMessage="Please input valid password. only charecters and numbers allowed." ForeColor="Red" ValidationExpression="^[\w]{1,20}$"></asp:RegularExpressionValidator>
                    </td>
                    <td style="height: 12px"></td>
                </tr>
                <tr>
                    <td style="width: 5%">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" style="text-align: left" Text="Submit" Width="115px" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
</asp:Content>

