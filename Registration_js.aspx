<%@ Page Title="" Language="C#" MasterPageFile="~/MainUser.master" AutoEventWireup="true" CodeFile="Registration_js.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 171px;
            font-size: large;
            text-align: left;
        }
        .auto-style9 {
            width: 219px;
        }
        .auto-style10 {
            height: 23px;
            text-align: left;
        }
        .auto-style11 {
            width: 171px;
            height: 23px;
            text-align: left;
        }
        .auto-style12 {
            width: 219px;
            height: 23px;
        }
        .auto-style13 {
            width: 32px;
        }
        .auto-style14 {
            height: 23px;
            width: 32px;
        }
        .auto-style19 {
            width: 32px;
            height: 26px;
        }
        .auto-style20 {
            width: 171px;
            height: 26px;
            text-align: left;
        }
        .auto-style21 {
            width: 219px;
            height: 26px;
        }
        .auto-style22 {
            height: 26px;
            text-align: left;
        }
        .auto-style23 {
            width: 32px;
            height: 24px;
        }
        .auto-style24 {
            width: 171px;
            font-size: large;
            height: 24px;
            text-align: left;
        }
        .auto-style25 {
            width: 219px;
            height: 24px;
        }
        .auto-style26 {
            height: 24px;
            text-align: left;
        }
        .auto-style27 {
            width: 32px;
            height: 35px;
        }
        .auto-style28 {
            width: 171px;
            font-size: large;
            height: 35px;
            text-align: left;
        }
        .auto-style29 {
            width: 219px;
            height: 35px;
        }
        .auto-style30 {
            height: 35px;
            text-align: left;
        }
        .auto-style31 {
            text-align: left;
        }
        .auto-style32 {
            text-align: left;
            color: #FF0000;
        }
        .auto-style33 {
            height: 24px;
            text-align: left;
            color: #FF0000;
        }
        .auto-style34 {
            color: #FF0000;
        }
        .auto-style35 {
            height: 23px;
            text-align: left;
            color: #FF0000;
        }
        .auto-style36 {
            width: 171px;
            font-size: large;
            text-align: left;
            height: 26px;
        }
        .auto-style37 {
            width: 171px;
            height: 24px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="First Name"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtfname" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" CssClass="auto-style34" ErrorMessage="Enter Firstname !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Middle Name"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtmname" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname" CssClass="auto-style34" ErrorMessage="Enter Middle Name !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Last Name"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtlname" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname" CssClass="auto-style34" ErrorMessage="Enter Last Name !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:RadioButton runat="server" Text="Male" ID="Male" GroupName="gender" ValidateRequestMode="Enabled" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="Female" runat="server" OnCheckedChanged="Female_CheckedChanged" Text="Female" GroupName="gender" />
            </td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style36">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Email"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtemail" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" CssClass="auto-style34" ErrorMessage="Invalid E-Mail ID !!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style11">
                <asp:Label ID="Label6" runat="server" ForeColor="Red" style="font-size: large" Text="Contact-no"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtcontectno" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontectno" ErrorMessage="Invalid Contect Number !!" style="color: #FF0000" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Address"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtaddress" runat="server" Width="225px" Height="67px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" CssClass="auto-style34" ErrorMessage="Enter Address !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style11">
                <asp:Label ID="Label8" runat="server" CssClass="auto-style6" ForeColor="Red" Text="City"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtcity" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcity" CssClass="auto-style34" ErrorMessage="Enter City !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Label ID="Label10" runat="server" CssClass="auto-style6" ForeColor="Red" Text="State"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtstate" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtstate" CssClass="auto-style34" ErrorMessage="Enter State !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style37">
                <asp:Label ID="Label9" runat="server" CssClass="auto-style6" ForeColor="Red" Text="Date-of-Brith"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtdob" ErrorMessage="Select Date !!" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Username" runat="server" ForeColor="Red" Text="Username"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtusername" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtusername" CssClass="auto-style34" ErrorMessage="Enter Username !!"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="lblmessage" runat="server" style="color: #FF0000; font-weight: 400" Text="Message !!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="Password"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtpassword" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label16" runat="server" ForeColor="Red" style="font-size: medium" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="txtconfpassword" runat="server" Width="225px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style31">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfpassword" CssClass="auto-style34" ErrorMessage="Password does not Match !!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style28">
                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="Question"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:DropDownList ID="drpquestion" runat="server" Height="23px" Width="230px">
                    <asp:ListItem>What is Your Name ??</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="drpquestion" CssClass="auto-style34" ErrorMessage="Select Question !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="Answer"></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="txtanswer" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtanswer" CssClass="auto-style34" ErrorMessage="Enter Your Answer !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#3399FF" style="font-size: large" Text="Submit" Width="102px" OnClick="btnsubmit_Click" />
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

