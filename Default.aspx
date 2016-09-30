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
        .auto-style5 {
            height: 30px;
        }
    </style>

    <link href="StyleSheet.css" rel="stylesheet"" />
</head>
<body>
    <form id="form1" runat="server">
        <img alt="BCIT Logo" class="image" src="images/avatar.jpg" />
        <h1>Investment Calculator</h1>
        
        <div>
            <table class="auto-style1 table" border="0">
                <tr>
                    <td class="auto-style3">Montly Investment</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList" runat="server">
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Annual Interest Rate</td>
                    <td>
                        <asp:TextBox ID="TextBoxAnnual" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Label ID="LabelAnnualError" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Number of Years</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxYears" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Label ID="LabelYearError" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Future value</td>
                    <td class="auto-style2">
                        <asp:Label ID="LabelValue" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click" />
                    </td>
                    <td>
                        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
                    </td>
                </tr>
            </table>
        </div>
            <asp:RangeValidator ID="RangeValidatorYear" 
                runat="server" 
                EnableClientScript="false"
                ControlToValidate="TextBoxYears"
                ErrorMessage="Number of years possible range is 1 to 45! This field is required!"
                MinimumValue="1"
                MaximumValue="45"
                Type="Integer"
                Text="Number of years possible range is 1 to 45! This field is required!"></asp:RangeValidator>
        <asp:RangeValidator ID="RangeValidatorAnnual" 
            runat="server" 
            EnableClientScript="false"
            ControlToValidate="TextBoxAnnual"
            ErrorMessage="Select an interest rate from 1 to 23! This field is required!"
            MinimumValue="1"
            MaximumValue="23"
            Type="Integer"
            Text="Select an interest rate from 1 to 23! This field is required!"></asp:RangeValidator>
    </form>
</body>
</html>
