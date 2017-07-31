﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucUpdateInfo.ascx.cs" Inherits="TrainManageWeb.GUI.updateinfo" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 161px;
            height: 192px;
        }
        .auto-style4 {
            height: 192px;
        }
    .auto-style5 {
        width: 161px;
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
    }
</style>



    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Mật khẩu:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMatKhau" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMatKhau2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Họ tên"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Năm sinh:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtNamSinh" runat="server" Width="250px"></asp:TextBox>
                <asp:Calendar ID="cldNamSinh" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="50px" Width="202px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" Wrap="True" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Giới tính:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGioitinh" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Địa chỉ:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label9" runat="server" Text="Điện thoại:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtDienThoai" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="Hình:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHinh" runat="server" Width="250px"></asp:TextBox>
            &nbsp;<asp:Button ID="btnBrowse" runat="server" Text="Browse" Height="30px" Width="100px" />
            </td>
        </tr>
    </table>

<br />

<table class="auto-style1">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Thông Tin Cá Nhân"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gvInfo" runat="server">
            </asp:GridView>
        </td>
    </tr>
</table>


