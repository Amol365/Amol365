<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Test1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello World!</title>
    <script runat="server">
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 18%;
            height: 72px;
        }
    </style>
</head>
<body style="height: 390px">
    <form runat="server" style="height: 391px">

        <table class="auto-style1">
            <tr>
                <td>NAME</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>ADDRESS</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="127px">
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Bengaluru</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#00CCFF" BorderColor="Black" BorderStyle="Solid" Height="46px" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Height="46px" OnClick="Button2_Click" Text="Update" />
        <asp:Button ID="Button4" runat="server" BackColor="#FF9900" ForeColor="Black" Height="46px" OnClick="Button_4Click" style="margin-top: 0px" Text="Search" Width="65px" />
        <asp:Button ID="Button5" runat="server" Height="46px" OnClick="Button_5Click" Text="Get Data" Width="65px" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="192px" Width="295px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Red" Height="42px" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete?')" style="margin-bottom: 22px" Text="Delete" />
    </form>
    
</body>
</html>
