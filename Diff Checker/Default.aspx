<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Diff_Checker.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           Text 1: <asp:TextBox runat="server" ID="text1" TextMode="MultiLine" Width="300" Height="30"></asp:TextBox><br />
           Text 2: <asp:TextBox runat="server" ID="text2" TextMode="MultiLine" Width="300" Height="30"></asp:TextBox><br />
           <asp:Button runat="server" ID="btnCheck" Text="Check" onclick="btnCheck_Click" /><br />
        <div id="result" runat="server"></div>
    </div>
    </form>
</body>
</html>
