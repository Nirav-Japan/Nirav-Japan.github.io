<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.master" AutoEventWireup="true" CodeFile="Emp_vacancy.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 242px;
        }
        .auto-style10 {
            text-align: left;
            width: 153px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style13 {
            width: 378px;
            height: 23px;
        }
        .auto-style14 {
            text-align: left;
            width: 153px;
            height: 23px;
        }
        .auto-style16 {
            width: 440px;
            height: 23px;
        }
        .auto-style17 {
            color: #FF0000;
        }
        .auto-style18 {
            width: 378px;
            text-align: center;
        }
        .auto-style20 {
            width: 187px;
            height: 23px;
        }
        .auto-style21 {
            width: 187px;
        }
        .auto-style22 {
            width: 440px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label runat="server" ForeColor="Red" Text="Vacancy ID " ID="lblvacancyid"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtvacancyid" runat="server" Width="187px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblpostname" runat="server" ForeColor="Red" Text="Postname"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtpostname" runat="server" Width="187px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpostname" CssClass="auto-style17" ErrorMessage="Enter Post Name !!" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lblnoofvacancy" runat="server" ForeColor="Red" Text="Number of vacancy"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtnovacancy" runat="server" Width="187px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnovacancy" CssClass="auto-style17" ErrorMessage="Enter Number of Vacancy !!" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lbllocation" runat="server" ForeColor="Red" Text="Location"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtlocation" runat="server" Width="187px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlocation" CssClass="auto-style17" ErrorMessage="Enter Location !!" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:Label ID="lblfield" runat="server" ForeColor="Red" Text="Field" style="text-align: left"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="txtfield" runat="server" Width="187px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfield" CssClass="auto-style17" ErrorMessage="Enter Field !!" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="lbllastdatetoapply" runat="server" ForeColor="Red" Text="Last date to apply"></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txtlastdatetoapply" runat="server" Width="187px" TextMode="Date" Enabled="False" OnClick="txtlastdatetoapply_click" ></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlastdatetoapply" CssClass="auto-style17" ErrorMessage="Enter Last Date !!" Enabled="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="4">
                &nbsp;<asp:Button ID="btnadd" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Add" Width="88px" OnClick="btnadd_Click" CausesValidation="False" />
            &nbsp;
                <asp:Button ID="btnsubmit" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Submit" Width="88px" OnClick="btnsubmit_Click" Enabled="False" />
            &nbsp;
                <asp:Button ID="btnupdate" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Update" Width="88px" OnClick="btnupdate_Click" Enabled="False" />
            &nbsp;
                <asp:Button ID="btndelete" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Delete" Width="88px" OnClick="btndelete_Click" Enabled="False" CausesValidation="False" />
            &nbsp;
                <asp:Button ID="btncancel" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Cancel" Width="88px" OnClick="btncancel_Click" Enabled="False" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="4">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center" Width="1090px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

