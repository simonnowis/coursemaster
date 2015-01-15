<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserStatus.aspx.cs" Inherits="UserStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <div class="pages_title">  
    <h2 style="text-align: left">User <span>Status
        </span></h2>
    </div>

    <div class ="slider_container">
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CourseMasterDBConnectionString %>" 
            SelectCommand="SELECT [CourseName], [ScheduleNumber], [AddedTime], [LastActionTime], [LastActionMessage], [ID] FROM [WatchingList] WHERE ([WatchingUser] = @WatchingUser)" 
            DeleteCommand="DELETE FROM [WatchingList] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [WatchingList] ([CourseName], [ScheduleNumber], [AddedTime], [LastActionTime], [LastActionMessage]) VALUES (@CourseName, @ScheduleNumber, @AddedTime, @LastActionTime, @LastActionMessage)" 
            UpdateCommand="UPDATE [WatchingList] SET [CourseName] = @CourseName, [ScheduleNumber] = @ScheduleNumber, [AddedTime] = @AddedTime, [LastActionTime] = @LastActionTime, [LastActionMessage] = @LastActionMessage WHERE [ID] = @ID"
            >
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="ScheduleNumber" Type="String" />
                <asp:Parameter Name="AddedTime" Type="DateTime" />
                <asp:Parameter Name="LastActionTime" Type="DateTime" />
                <asp:Parameter Name="LastActionMessage" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="WatchingUser" SessionField="New" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CourseName" Type="String" />
                <asp:Parameter Name="ScheduleNumber" Type="String" />
                <asp:Parameter Name="AddedTime" Type="DateTime" />
                <asp:Parameter Name="LastActionTime" Type="DateTime" />
                <asp:Parameter Name="LastActionMessage" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>

        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" 
            BorderStyle="None"    align="center"
            ForeColor="Black" GridLines="None" Height="248px" Width="95%" DataKeyNames="ID"
            >
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                
                <asp:BoundField DataField="CourseName" HeaderText="Course" SortExpression="CourseName" />
                <asp:BoundField DataField="ScheduleNumber" HeaderText="Number" SortExpression="ScheduleNumber" />
                <asp:BoundField DataField="AddedTime" HeaderText="Added" SortExpression="AddedTime" />
                <asp:BoundField DataField="LastActionTime" HeaderText="LastAction" SortExpression="LastActionTime" />
                <asp:BoundField DataField="LastActionMessage" HeaderText="Message" SortExpression="LastActionMessage" />
                <asp:CommandField ShowDeleteButton="True" HeaderText="Operation"/>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>

        </div>
     </div>
        </div>
        <div class="pages_title">  
    <h2 style="text-align: left">Manage <span>Course
        </span></h2>
    </div>

 
    <div class="slider_container">
    <table class="videocontainer">
        <tr>
            <td style="text-align: center; height: 12px; width: 150px">
                <asp:HyperLink ID="Notice" runat="server" NavigateUrl="/buy.aspx"></asp:HyperLink>
            </td>
            <td style="text-align: right; height: 12px">Course Name:</td>
            <td style="text-align: left; height: 12px">
                <asp:TextBox ID="TextBoxCourseName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCourseName" ErrorMessage="Please give the course a name. " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxCourseName" ErrorMessage="Please input a valid course name less than 10 character." ForeColor="Red" ValidationExpression="^[\w\s]{1,10}$"></asp:RegularExpressionValidator>
            </td>
            <td style="text-align: center; height: 12px"></td>
        </tr>
        <tr>
            <td style="text-align: center; height: 25px;"></td>
            <td style="text-align: right; height: 25px;">Schedule Number:</td>
            <td style="text-align: left; height: 25px;">
                <asp:TextBox ID="TextBoxScheduleNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxScheduleNumber" ErrorMessage="Please input schedule number. " ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxScheduleNumber" ErrorMessage="Please input a valid schedule number." ForeColor="Red" ValidationExpression="^[0-9]{6,6}$"></asp:RegularExpressionValidator>
            </td>
            <td style="text-align: center; height: 25px;"></td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">
                <asp:Button ID="Button1" runat="server" Text="add course" Width="93px" OnClick="Button1_Click" />
            </td>
            <td style="text-align: left">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
    </table>
        </div>
    <div class="pages_title">  
    <h2 style="text-align: left">Manage <span>User Account
        </span></h2>
    </div>
    <br/>
   <div class="slider_container">
     <br/>
    <br/>

    <table style="width: 70%; align-content:center">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td><a href="/Account/password_change.aspx" style="font-size:x-large">修改选课神器网登陆密码</a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><a href="/Account/password_change_psu.aspx" style="font-size:x-large">修改记录的PSU密码</a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
       </div>
</asp:Content>

