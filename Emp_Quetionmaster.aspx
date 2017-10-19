<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.master" AutoEventWireup="true" CodeFile="Emp_Quetionmaster.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 1094px;
            height: 773px;
        }
        .auto-style6 {
            width: 668px;
        }
        .auto-style7 {
            text-align: left;
            height: 162px;
        }
        .auto-style43 {
            height: 19px;
        }
        .auto-style52 {
            height: 36px;
        }
        .auto-style53 {
            width: 359px;
            height: 19px;
        }
        .auto-style57 {
            height: 26px;
        }
        .auto-style61 {
            height: 27px;
        }
        .auto-style63 {
            text-align: left;
            width: 108px;
            height: 26px;
        }
        .auto-style65 {
            text-align: left;
            width: 108px;
            height: 27px;
        }
        .auto-style68 {
            text-align: left;
            width: 108px;
            height: 19px;
        }
        .auto-style69 {
        width: 380px;
        height: 26px;
    }
        .auto-style75 {
            height: 26px;
            width: 256px;
        }
        .auto-style76 {
            height: 27px;
            width: 256px;
        }
        .auto-style77 {
            width: 359px;
            height: 27px;
        }
        .auto-style78 {
            height: 19px;
            width: 256px;
        }
    .auto-style79 {
        width: 380px;
        height: 27px;
    }
    .auto-style80 {
        width: 380px;
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Postname"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:DropDownList ID="drpvacancyid" runat="server" Width="256px" OnSelectedIndexChanged="drpvacancyid_SelectedIndexChanged" Enabled="False" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drpvacancyid" ErrorMessage="Select Postname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Question Number"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtquenum" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtquenum" ErrorMessage="Enter Question Number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Question"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtque" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtque" ErrorMessage="Enter Question"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="lblmessage" runat="server" Text="Message !!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Option1"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtop1" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtop1" ErrorMessage="Enter Option 1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Option2"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtop2" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtop2" ErrorMessage="Enter Option 2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="Option3"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtop3" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtop3" ErrorMessage="Enter Option 3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style75">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style63">
                <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Option4"></asp:Label>
            </td>
            <td class="auto-style75">
                <asp:TextBox ID="txtop4" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style57">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtop4" ErrorMessage="Enter Option 4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style65">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79"></td>
            <td class="auto-style65">
                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Correct Answer"></asp:Label>
            </td>
            <td class="auto-style76">
                <asp:TextBox ID="txtcorrectans" runat="server" Width="256px" Enabled="False"></asp:TextBox>
            </td>
            <td class="auto-style77">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcorrectans" ErrorMessage="Enter Correct Answer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style65">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79"></td>
            <td class="auto-style65"></td>
            <td class="auto-style76">
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
            <td class="auto-style77"></td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style65">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style77">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" class="auto-style52">
                <asp:Button ID="btnadd" runat="server" BackColor="#6699FF" Height="32px" style="font-size: large; text-align: center;" Text="Add" Width="127px" OnClick="btnadd_Click" CausesValidation="False" />
                &nbsp;<asp:Button ID="btnsave" runat="server" BackColor="#6699FF" Height="32px" OnClick="btnsave_Click" style="font-size: large" Text="Save" Width="127px" Enabled="False" />
            &nbsp;<asp:Button ID="btnsubmit" runat="server" BackColor="#6699FF" Height="32px" style="font-size: large" Text="Submit" Width="127px" OnClick="btnsubmit_Click" Enabled="False" />
                &nbsp;<asp:Button ID="btnupdate" runat="server" BackColor="#6699FF" BorderColor="#6699FF" Height="32px" style="font-size: large" Text="Update" Width="127px" Enabled="False" OnClick="btnupdate_Click" />
                &nbsp;<asp:Button ID="btndelete" runat="server" BackColor="#6699FF" BorderColor="#6699FF" Height="32px" style="font-size: large" Text="Delete" Width="127px" Enabled="False" OnClick="btndelete_Click" />
                &nbsp;<asp:Button ID="btncancel" runat="server" BackColor="#6699FF" BorderColor="#6699FF" Height="32px" style="font-size: large" Text="Cancel" Width="127px" CausesValidation="False" Enabled="False" OnClick="btncancel_Click" />
                </td>
        </tr>
        <tr>
            <td class="auto-style80"></td>
            <td class="auto-style68"></td>
            <td class="auto-style78"></td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style80">&nbsp;</td>
            <td class="auto-style68">&nbsp;</td>
            <td class="auto-style78">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="4">
                <asp:GridView ID="GridView1" runat="server" Width="1089px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                   
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
                     <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style80">&nbsp;</td>
            <td class="auto-style68">&nbsp;</td>
            <td class="auto-style78">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

