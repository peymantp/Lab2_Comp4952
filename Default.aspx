<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab Web Form COMP 4952</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #CCFFFF;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 377px;
        }
        .auto-style4 {
            width: 377px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img alt="BCIT Logo" class="image" src="images/avatar.jpg" />
        <h1>Investment Calculator</h1>
        
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Montly Investment</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Annual Interest Rate</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Number of Years</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Future value</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Calculate" />
                    </td>
                    <td>
                        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
