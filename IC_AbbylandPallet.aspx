<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IC_AbbylandPallet.aspx.vb" Inherits="OWS_IC.IC_AbbylandPallet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Inventory Control Site</title>
    <%--<script language="javascript" type="text/javascript">
		function keepMeAlive(){
			if (document.getElementById('keepAliveIMG')) {
				document.getElementById('keepAliveIMG').src = 'someimg.gif?x=' + escape(new Date());
			}
		}
	window.setInterval("keepMeAlive()", 90000);
    </script>--%>
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form id="form1" runat="server">
    <div title="Recv Co-Manufactured  Pallet" style="text-align: left">
		<table style="width: 240px" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td style="text-align: center">
					<asp:Label ID="lbPageTitle" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="DarkRed" 
								Style="vertical-align: middle; text-align: center" Text="OWS Inv Mgmt Rcv Co-Manufactured Pallet Tag" BackColor="White" EnableViewState="False"></asp:Label>
			</td>
		</tr>
		<tr>
			<td style="text-align: center">
                <asp:Label ID="lbFunction" runat="server" Font-Size="XX-Small" Text="0" Visible="False"
                    Width="8px"></asp:Label><asp:Label ID="lbUser" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="Black" 
								Style="vertical-align: middle; text-align: center" Text="User ID : ">
					</asp:Label></td>
		</tr>
		<tr>
			<td style="text-align: center">
				<asp:Label ID="lbPrompt" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="DarkRed" 
							Style="vertical-align: middle; text-align: center" Text="Scan or Enter Co-Manufactured Pallet #" BackColor="Transparent"></asp:Label></td>
		</tr>
		<tr>
			<td style="text-align: center">
				<asp:TextBox ID="txText" runat="server" AutoPostBack="True" BorderColor="Black"
                        BorderWidth="1px" Columns="44" Font-Size="XX-Small" ForeColor="Black"></asp:TextBox></td>
		</tr>
    </table>
		<table style="width: 240px" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td style="width: 65px; text-align: right">
					<asp:Label ID="lbPallet" runat="server"
						Font-Bold="False" Font-Size="XX-Small" ForeColor="DarkRed" Style="vertical-align: middle; text-align: right" 
						Text="Pallet#-"></asp:Label>
				</td>
				<td style="width: 175px;text-align: left">
					<asp:Label ID="lbPalletVal" runat="server"
						Font-Bold="False" Font-Size="XX-Small" ForeColor="Black" Style="vertical-align: middle; text-align: right"></asp:Label></td>				
			</tr>
			<tr>
				<td style="width: 65px; text-align: right">
                    <asp:Label ID="lbCaseLabel" runat="server" Font-Bold="False" Font-Size="XX-Small"
                        ForeColor="DarkRed" Style="vertical-align: middle; text-align: right" Text="CaseLabel-"
                        Visible="False"></asp:Label>
                </td>
                <td style="width: 175px;text-align: left">
					<asp:Label ID="lbCaseLabelVal" runat="server" Font-Bold="False" Font-Size="XX-Small"
                        ForeColor="Black" Style="vertical-align: middle; text-align: right"
                        Visible="False"></asp:Label>
                </td>
			</tr>
			<tr>
				<td style="width: 65px; text-align: right">
					<asp:Label ID="lbQuantity" runat="server"
						Font-Bold="False" Font-Size="X-Small" ForeColor="DarkRed" Style="vertical-align: middle; text-align: right" 
						Text="Quantity-" Visible="False"></asp:Label></td>
				<td style="width: 175px;text-align: left">
					<asp:Label ID="lbQuantityVal" runat="server" Font-Bold="False" Font-Size="XX-Small"
                        ForeColor="Black" Style="vertical-align: middle; text-align: right"
                        Visible="False"></asp:Label>
                </td>
			</tr>
			<tr>
				<td style="width: 65px; text-align: right">
					<asp:Label ID="lbToBin" runat="server"
						Font-Bold="False" Font-Size="X-Small" ForeColor="DarkRed" Style="vertical-align: middle; text-align: right" Text="Warehouse-" Visible="False"></asp:Label></td>
				<td style="width: 175px;text-align: left">
                    <asp:Label ID="lbToBinVal" runat="server" Font-Bold="False" Font-Size="XX-Small"
                        ForeColor="Black" Style="vertical-align: middle; text-align: right"
                        Visible="False"></asp:Label></td>
			</tr>
		</table>
		<table style="width: 240px" border="0" cellpadding="0" cellspacing="0">
			<tr>
			    <td style="text-align: center; height: 30px;">
					<asp:Button ID="btFinished" runat="server" Font-Size="Medium" Height="35px" 
								Text="Finish Pallet" Width="118px" Font-Bold="True" Visible="False" /><asp:Button ID="btNextPallet" runat="server" Font-Size="Medium" Height="35px" 
								Text="Next Pallet" Width="118px" Font-Bold="True" Visible="False" /></td>
			</tr>
		</table>
		<asp:Label ID="lbError" runat="server" BorderColor="DarkRed" BorderStyle="Solid"
			BorderWidth="1px" Font-Bold="False" Font-Size="X-Small" ForeColor="Red" 
			Style="vertical-align: middle; text-align: center" Visible="False" Width="238px"></asp:Label>
        <table style="width: 240px" border="0" cellpadding="0" cellspacing="0">
			<tr>
			<td style="text-align: left; height: 30px;">
					<asp:Button ID="btReturn" runat="server" Font-Size="Medium" Height="35px" 
								Text="To Menu" Width="115px" Font-Bold="True" EnableViewState="False" />
				</td>
				<td style="text-align: right; height: 30px;">
					<asp:Button ID="btRestart" runat="server"
								Font-Size="Medium" Height="35px" Text="Restart Entry" Width="115px" Font-Bold="True" EnableViewState="False" />
				</td>
			</tr>
		</table>
	<%--<img id="keepAliveIMG" height="0" src="someimg.GIF" />--%></div>
    </form>
</body>
</html>