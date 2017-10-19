<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.master" AutoEventWireup="true" CodeFile="Interview_schedule.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 531px;
        }
        .auto-style40 {
            text-align: left;
            height: 23px;
        }
        .auto-style56 {
        }
        .auto-style57 {
            width: 1%;
        }
        .auto-style60 {
            height: 23px;
            width: 1%;
        }
        .auto-style71 {
            text-align: left;
        }
        .auto-style72 {
            text-align: center;
        }
        .auto-style75 {
            width: 279px;
            text-align: center;
        }
        .auto-style79 {
            text-align: left;
            width: 155px;
        }
        .auto-style80 {
            width: 66%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style75" rowspan="18">&nbsp;</td>
            <td class="auto-style79">
                &nbsp;</td>
            <td class="auto-style80">
                &nbsp;</td>
            <td class="auto-style56" colspan="2" rowspan="19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Postname"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:DropDownList ID="drppostname" runat="server" Height="24px" Width="277px" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="drppostname_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="drppostname" ErrorMessage="Select Postname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Vacancy ID"></asp:Label>
            </td>
            <td class="auto-style80">
                
                <asp:DropDownList ID="drpvacancyid" runat="server" Height="24px" Width="277px" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="drpvacancyid_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Contact Person"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:DropDownList ID="drpcontactperson" runat="server" Width="277px" Enabled="False" Height="24px">
                </asp:DropDownList>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="Mobile No"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:DropDownList ID="drpmobileno" runat="server" Height="24px" Width="277px" Enabled="False">
                </asp:DropDownList>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Starting date for test"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:TextBox ID="txtstartingdate" runat="server" Width="277px" Enabled="False" TextMode="Date"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtstartingdate" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Ending date"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:TextBox ID="txtendingdate" runat="server" Width="277px" Enabled="False" TextMode="Date"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtendingdate" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style79">&nbsp;</td>
            <td class="auto-style80">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style79">
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Time"></asp:Label>
            </td>
            <td class="auto-style80">
                <asp:TextBox ID="txttime" runat="server" Width="277px" Enabled="False" TextMode="Time"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txttime" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style40" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3"><asp:Button ID="btnadd" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Add" Width="88px" OnClick="btnadd_Click" CausesValidation="False" />
                <asp:Button ID="btnsubmit" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Submit" Width="88px" OnClick="btnsubmit_Click" Enabled="False" />
                <asp:Button ID="btnupdate" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Update" Width="88px" OnClick="btnupdate_Click" Enabled="False" />
                <asp:Button ID="btndelete" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Delete" Width="88px" OnClick="btndelete_Click" Enabled="False" CausesValidation="False" />
                <asp:Button ID="btncancel" runat="server" BackColor="#6699FF" style="font-size: medium" Text="Cancel" Width="88px" OnClick="btncancel_Click" Enabled="False" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style72" colspan="4" rowspan="3">&nbsp;</td>
            <td class="auto-style57">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style71" colspan="5">
                <table class="auto-style4">
                    <tr>
                        <td>
                <asp:GridView ID="GridView1" runat="server" Width="1088px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            </td>
        </tr>
    </table>
</asp:Content>

