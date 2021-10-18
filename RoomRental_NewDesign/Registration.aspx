<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
   
    <tr>
            <td bgcolor="#336699">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/web_img/registration.png" 
                    Width="40px" />
            </td>
            <td bgcolor="#336699">
                <asp:Label ID="Label1" runat="server" Text="New User Registration" Font-Size="Large" 
                    ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 22px" bgcolor="#009999" colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" 
                    Text="Personal Details"></asp:Label>
            </td>
        </tr>

    <tr>
        <td>
            UserType</td>
        <td>
            <asp:DropDownList ID="ddlType" runat="server">
                <asp:ListItem>Select User Type</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
                <asp:ListItem>Builder</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>

    <tr>
        <td>
            Name</td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtname" ErrorMessage="RegularExpressionValidator" 
                ForeColor="#FF3300" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td>
            City</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Mobile</td>
        <td>
            <asp:TextBox ID="txtmob" runat="server" Width="300px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtmob" Display="Dynamic" 
                ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                ValidationExpression="\d{10}">Must be proper format</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Address</td>
        <td>
            <asp:TextBox ID="txtadd" runat="server" Height="47px" TextMode="MultiLine" 
                Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Occupation</td>
        <td>
            <asp:TextBox ID="txtocc" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#009999" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
                Text="Authentication Details"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Username</td>
        <td>
            <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtusername" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtpwd" Display="Dynamic" 
                ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Photo</td>
        <td>
            <asp:FileUpload ID="fuphoto" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:ImageButton ID="btnsubmit" runat="server" 
                ImageUrl="~/web_img/regi.png" onclick="btnsubmit_Click" Height="40px" Width="100px" />
        </td>
    </tr>
    <tr>
        <td class="style1" style="height: 22px">
            </td>
        <td class="style1" style="height: 22px">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            <asp:SqlDataSource ID="SqlDataInsert" runat="server" 
                ConnectionString="<%$ ConnectionStrings:REAL_ESTATEConnectionString %>" 
                DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [Registration] ([name], [city], [mobile], [email], [address], [occupation], [username], [pwd], [regdate], [photo],[usertype]) VALUES (@name, @city, @mobile, @email, @address, @occupation, @username, @pwd, @regdate, @photo,@usertype)" 
                SelectCommand="SELECT * FROM [Registration]" 
                
                
                UpdateCommand="UPDATE [Registration] SET [name] = @name, [city] = @city, [mobile] = @mobile, [email] = @email, [address] = @address, [occupation] = @occupation, [username] = @username, [pwd] = @pwd, [regdate] = @regdate, [photo] = @photo WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtname" Name="name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtcity" Name="city" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtmob" Name="mobile" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtemail" Name="email" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtadd" Name="address" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtocc" Name="occupation" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtusername" Name="username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtpwd" Name="pwd" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="hfDate" Name="regdate" PropertyName="Value" Type="String" />
                    <asp:ControlParameter ControlID="fuphoto" Name="photo" PropertyName="FileName" Type="String" />
                    <asp:ControlParameter ControlID="ddlType" Name="usertype" 
                        PropertyName="SelectedValue" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="occupation" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="pwd" Type="String" />
                    <asp:Parameter Name="regdate" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:HiddenField ID="hfDate" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style1">
        </td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

