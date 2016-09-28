<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="adminControl.ascx.cs" Inherits="NgoOnline.Admin.adminControl" %>
<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc1" %>
<div>Banner Admin</div>
<table cellspacing="0" cellpadding="0" style="width:100%;">
    <tr>
        <td style="width:200px;">
            <uc1:Menu ID="Menu1" runat="server" />
        </td>
        <td style="width=10px;">&nbsp;</td>
        <td>Content</td>       
    </tr>
</table>