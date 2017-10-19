<%@ Page Title="" Language="C#" MasterPageFile="~/EmpMaster.master" AutoEventWireup="true" CodeFile="Emp_feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 1094px;
            height: 632px;
        }
        .auto-style6 {
            width: 230px;
        }
        .auto-style13 {
            width: 218px;
            height: 22px;
        }
        .auto-style15 {
            width: 218px;
            text-align: center;
            height: 22px;
        }
        .auto-style17 {
            width: 218px;
            height: 74px;
        }
        .auto-style19 {
            width: 218px;
            text-align: center;
            height: 74px;
        }
        .auto-style21 {
            width: 218px;
            height: 41px;
        }
        .auto-style23 {
            width: 218px;
            text-align: center;
            height: 41px;
        }
        .auto-style31 {
            height: 22px;
            width: 219px;
        }
        .auto-style32 {
            height: 74px;
            width: 219px;
        }
        .auto-style33 {
            height: 41px;
            width: 219px;
        }
        .auto-style36 {
            width: 218px;
            height: 19px;
        }
        .auto-style37 {
            width: 218px;
            text-align: center;
            height: 19px;
        }
        .auto-style38 {
            height: 19px;
            width: 219px;
        }
        .auto-style39 {
        }
        .auto-style40 {
            width: 218px;
            text-align: center;
            height: 23px;
        }
        .auto-style41 {
            height: 23px;
            width: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="UserType"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="drpusertype" runat="server" Width="245px" Height="24px">
                    <asp:ListItem>Employeer</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" style="color: #FF0000" Text="Feedback"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="txtfeedback" runat="server" Height="74px" TextMode="MultiLine" Width="245px"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfeedback" ErrorMessage="Please Give Feedback !!"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">
                <asp:Button ID="btnsubmit" runat="server" BackColor="#0066FF" ForeColor="White" Height="41px" style="font-weight: 700; color: #000000" Text="Submit" Width="98px" OnClick="btnsubmit_Click" />
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39" colspan="5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1086px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="user_type" HeaderText="User Type" SortExpression="user_type" />
                        <asp:BoundField DataField="feedback" HeaderText="Feedback" SortExpression="feedback" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_type], [feedback] FROM [feedback_master] WHERE ([user_type] = @user_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Employeer" Name="user_type" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
  
</asp:Content>

