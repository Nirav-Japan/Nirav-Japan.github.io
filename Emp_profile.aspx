<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.master" AutoEventWireup="true" CodeFile="Emp_profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 42px;
            margin-left: 80px;
        }
        .auto-style6 {
            width: 675px;
        }
        .auto-style7 {
            width: 149px;
        }
        .auto-style8 {
            width: 42px;
            height: 24px;
        }
        .auto-style9 {
            width: 149px;
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
        }
        .auto-style11 {
            width: 42px;
            height: 23px;
        }
        .auto-style12 {
            width: 149px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            width: 140px;
        }
        .auto-style15 {
            height: 23px;
            width: 140px;
        }
        .auto-style16 {
            height: 24px;
            width: 140px;
        }
        .auto-style17 {
            height: 23px;
            text-align: left;
            margin-left: 80px;
        }
        .auto-style18 {
            height: 23px;
            width: 42px;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Company Name"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtcmpname" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcmpname" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style15"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Address"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtaddress" runat="server" Enabled="False" Height="51px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style15"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="City"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcity" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="Label15" runat="server" Text="State" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtstate" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Contact Person"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtcontectperson" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcontectperson" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style15"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Mobile No"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtmobileno" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobileno" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label16" runat="server" Text="Email" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtemail" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label17" runat="server" Text="Website" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtwebsite" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtwebsite" ErrorMessage="RegularExpressionValidator" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label18" runat="server" Text="Username" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtusername" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label19" runat="server" Text="Password" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="txtpassword" runat="server" Enabled="False" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style17">
                <asp:LinkButton ID="lnkeditprofile" runat="server" OnClick="lnkeditprofile_Click" style="text-align: center; font-size: large; font-weight: 700" CausesValidation="False">Edit Profile</asp:LinkButton>
            </td>
            <td class="auto-style17">
                &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Submit" Width="88px" OnClick="btnsubmit_Click" Visible="False" CausesValidation="False" />
            &nbsp;<asp:Button ID="btncancel" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Cancel" Width="88px" OnClick="btncancel_Click" Visible="False" CausesValidation="False" />
            </td>
            <td class="auto-style17">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>

