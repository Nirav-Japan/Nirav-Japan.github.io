<%@ Page Title="" Language="C#" MasterPageFile="~/MainUser.master" AutoEventWireup="true" CodeFile="Registration_emp.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 1094px;
        }
        .auto-style14 {
            height: 23px;
            text-align: left;
        }
        .auto-style17 {
            width: 136px;
            height: 23px;
            font-size: large;
        }
        .auto-style18 {
            color: #FF0000;
            text-align: left;
        }
        .auto-style19 {
            height: 23px;
            color: #FF0000;
            text-align: left;
        }
        .auto-style20 {
            color: #FF0000;
            text-align: left;
            width: 170px;
        }
        .auto-style25 {
            color: #FF0000;
            text-align: left;
            width: 284px;
        }
        .auto-style37 {
            color: #FF0000;
            text-align: left;
            width: 5px;
        }
        .auto-style38 {
            height: 23px;
            text-align: left;
            width: 109px;
        }
        .auto-style39 {
            height: 23px;
            text-align: left;
            width: 177px;
        }
        .auto-style47 {
            width: 17px;
        }
        .auto-style48 {
            width: 136px;
        }
        .auto-style49 {
            width: 352px;
        }
        .auto-style50 {
            width: 136px;
            font-size: large;
        }
        .auto-style51 {
            width: 17px;
            height: 23px;
        }
        .auto-style52 {
            width: 136px;
            height: 23px;
        }
        .auto-style53 {
            width: 352px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label9" runat="server" CssClass="auto-style6" ForeColor="Red" Text="CompanyCode"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtcmpcode" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcmpcode" ErrorMessage="Enter Company Code !!"></asp:RequiredFieldValidator>
            &nbsp;
                </td>
            <td class="auto-style37" colspan="2">
                <asp:Button ID="btncheckcode" runat="server" BackColor="#0066FF" ForeColor="White" Height="31px" OnClick="btncheckcode_Click" Text="Check Code" Width="93px" CausesValidation="False" />
            </td>
            <td class="auto-style25">
                <asp:Label ID="lblmessage" runat="server" Text="Company Code Already Exsist !!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="auto-style6" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtname" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">
                <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="Address"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtaddress" runat="server" Height="55px" Width="306px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label3" runat="server" Text="City" CssClass="auto-style6" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtcity" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label5" runat="server" Text="State" CssClass="auto-style6" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtstate" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtstate" ErrorMessage="Enter State !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48"></td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label6" runat="server" Text="Contact_Person" CssClass="auto-style6" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtcontectperson" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcontectperson" ErrorMessage="Enter Contect Person Name !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">
                <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="Mobile_no"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtmobileno" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobileno" ErrorMessage="Enter Mobile  Number !!" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">
                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="Email"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtemail" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email - ID !!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label7" runat="server" Text="Website" CssClass="auto-style6" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtwebsite" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtwebsite" ErrorMessage="Enter Website !!" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51"></td>
            <td class="auto-style52">
                <asp:Label ID="Label10" runat="server" CssClass="auto-style6" ForeColor="Red" Text="Username"></asp:Label>
            </td>
            <td class="auto-style53">
                <asp:TextBox ID="txtusername" runat="server" Height="18px" Width="306px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style39" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername" ErrorMessage="Enter Username !!" style="color: #FF0000"></asp:RequiredFieldValidator>
            &nbsp;
                </td>
            <td class="auto-style38">
                <asp:Button ID="btncheck" runat="server" BackColor="#0066FF" ForeColor="White" Height="31px" OnClick="btncheck_Click" Text="Check Username" Width="114px" CausesValidation="False" Enabled="False" />
            </td>
            <td class="auto-style14">
                <asp:Label ID="lblmessage0" runat="server" Text="Username Already !!" Visible="False" style="color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style19" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51">&nbsp;</td>
            <td class="auto-style52">
                <asp:Label ID="Label11" runat="server" CssClass="auto-style6" ForeColor="Red" Text="Password"></asp:Label>
            </td>
            <td class="auto-style53">
                <asp:TextBox ID="txtpassword" runat="server" Height="18px" Width="306px" OnTextChanged="TextBox6_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style19" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style48">
                <asp:Label ID="Label12" runat="server" CssClass="auto-style6" ForeColor="Red" style="font-size: medium" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtconfpassword" runat="server" Height="18px" Width="306px" OnTextChanged="TextBox6_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfpassword" ErrorMessage="Password does not Match !!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="Question"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:DropDownList ID="drpquestion" runat="server" Height="23px" Width="314px">
                    <asp:ListItem>What is Your Name ??</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpquestion" ErrorMessage="Select Question !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Answer"></asp:Label>
            </td>
            <td class="auto-style49">
                <asp:TextBox ID="txtanswer" runat="server" Height="18px" Width="306px"></asp:TextBox>
            </td>
            <td class="auto-style18" colspan="4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtanswer" ErrorMessage="Enter Answer !!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#6699FF" BorderStyle="None" Height="35px" OnClick="btnsubmit_Click" style="font-size: large" Text="Submit" Width="108px" Enabled="False" />
            </td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style47">&nbsp;</td>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style49">
                &nbsp;</td>
            <td class="auto-style18" colspan="4">&nbsp;</td>
        </tr>
        </table>
</asp:Content>

