<%@ Page Title="" Language="C#" MasterPageFile="~/MainUser.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
 <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: left;
            font-size: large;
            font-weight: bold;
        }
        .auto-style10 {
            font-size: x-large;
     }
        .auto-style11 {
            text-align: center;
        }
        .auto-style13 {
            width: 34%;
            height: 25px;
        }
        .auto-style14 {
            width: 3%;
            text-align: left;
            height: 25px;
            font-weight: bold;
        }
        .auto-style15 {
            width: 138px;
            text-align: left;
            height: 25px;
        }
        .auto-style19 {
            font-size: large;
            font-weight: bold;
            margin-left: 2px;
        }
        .auto-style20 {
            width: 3%;
            text-align: left;
            font-weight: bold;
        }
        .auto-style21 {
            width: 34%;
            height: 31px;
        }
        .auto-style22 {
            width: 3%;
            text-align: left;
            font-weight: bold;
            height: 31px;
        }
        .auto-style23 {
            width: 138px;
            text-align: left;
            height: 31px;
        }
        .auto-style29 {
         font-size: medium;
         margin-left: 2px;
     }
     .auto-style30 {
         color: #FF0000;
         font-weight: bold;
     }
     .auto-style31 {
         font-size: x-large;
        text-align: center;
    }
     .auto-style33 {
         font-size: x-large;
         text-align: center;
         width: 34%;
     }
     .auto-style34 {
         width: 3%;
         text-align: left;
     }
     .auto-style37 {
         width: 3%;
         text-align: left;
         font-size: large;
         font-weight: bold;
     }
     .auto-style39 {
         width: 34%;
         height: 8px;
     }
     .auto-style40 {
         width: 3%;
         text-align: left;
         font-weight: bold;
         height: 8px;
     }
     .auto-style45 {
         width: 46%;
         height: 25px;
     }
     .auto-style48 {
         width: 46%;
         height: 31px;
     }
     .auto-style54 {
         width: 138px;
         text-align: left;
         color: #FF0000;
         font-size: large;
         font-weight: 700;
     }
     .auto-style56 {
         width: 138px;
         text-align: left;
         font-size: large;
         font-weight: bold;
     }
     .auto-style57 {
         width: 138px;
         text-align: left;
         height: 8px;
     }
     .auto-style59 {
         width: 46%;
         text-align: left;
     }
     .auto-style60 {
         width: 46%;
         height: 8px;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="4"><span class="auto-style30">Welcome to E-Career</span><br class="auto-style30" />
                <br class="auto-style30" />
                <span class="auto-style30">Enter username and password to login into your account !</span></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style56">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Label ID="lblusername" runat="server" CssClass="auto-style6" Text="Username" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style29" Width="128px"></asp:TextBox>
            </td>
            <td class="auto-style45" style="text-align: left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username !!" style="color: #FF0000; font-size: large; font-weight: 700" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style40">
                </td>
            <td class="auto-style57">
                </td>
            <td class="auto-style60" style="text-align: left"></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style20">
                <asp:Label ID="lblpassword" runat="server" CssClass="auto-style6" Text="Password" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style54">
                <asp:TextBox ID="txtpassword" runat="server" CssClass="auto-style29" width="128px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="text-align: left" class="auto-style59">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password !!" style="color: #FF0000; font-size: large; font-weight: 700" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style40">
                </td>
            <td class="auto-style57">
                </td>
            <td style="text-align: left" class="auto-style60"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:Label ID="lblusertype" runat="server" CssClass="auto-style6" Text="Usertype" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:DropDownList ID="drpusertype" runat="server" CssClass="auto-style29" Height="24px" width="132px" OnSelectedIndexChanged="drpusertype_SelectedIndexChanged">
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Employeer</asp:ListItem>
                    <asp:ListItem>Administrator</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style48"></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style8" colspan="2">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style11" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnlogin" runat="server" CssClass="auto-style19" Text="Login" Width="118px" BackColor="#6699FF" OnClick="btnlogin_Click" />
            &nbsp;</td>
            <td class="auto-style59">
                <asp:LinkButton ID="lnkforgetpassword" runat="server" OnClick="lnkforgetpassword_Click" CausesValidation="False">Forget Password ?</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style56">&nbsp; </td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style31" colspan="4">
                <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="#CC0000" Text="Message !!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style54">&nbsp;</td>
            <td class="auto-style59">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

