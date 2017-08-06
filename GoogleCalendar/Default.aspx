<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GoogleCalendar.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField runat="server" ID="HdnEventID" Value="" />
    <div style="margin-bottom: 20px">
        <asp:Label runat="server" ID="LblMessage"></asp:Label>
    </div>
    <div>
        <asp:Panel ID="PnlLogin" runat="server">
            UserName:<asp:TextBox ID="TxtBoxUserName" runat="server"></asp:TextBox>
            <br />
            Pwd:<asp:TextBox ID="TxtBoxPwd" runat="server"></asp:TextBox>
            <br />
            <asp:Button runat="server" ID="BtnLogin" Text="Login" OnClick="BtnLogin_Click" />
        </asp:Panel>
        <asp:Panel runat="server" ID="PnlRegister">
            <asp:Button runat="server" ID="BtnRegisterWithGoogleCalendar" Text="Register With Google Calendar"
                OnClick="BtnRegisterWithGoogleCalendar_Click" />
        </asp:Panel>
        <asp:Panel runat="server" ID="PnlEvents">
            <%--<asp:DropDownList runat="server" ID="DDLEvent" AutoPostBack="true" 
                onselectedindexchanged="DDLEvent_SelectedIndexChanged">
                <asp:ListItem Enabled="true" Text="-Select-"></asp:ListItem>
            </asp:DropDownList>--%>
            <div id="DivEventDescription">
                Title:
                <asp:TextBox runat="server" ID="TxtTitle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0" ControlToValidate="TxtTitle"
                    ErrorMessage="*" ToolTip="Required" runat="server" ValidationGroup="CreateUpdate"></asp:RequiredFieldValidator>
                <br />
                Start Time:
                <asp:TextBox runat="server" ID="TxtStartTime" type="datetime"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtStartTime"
                    ValidationGroup="CreateUpdate" ErrorMessage="*" ToolTip="Required" runat="server"></asp:RequiredFieldValidator>
                <br />
                End Time:
                <asp:TextBox runat="server" ID="TxtEndTime" type="datetime"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TxtEndTime"
                    ValidationGroup="CreateUpdate" ErrorMessage="*" ToolTip="Required" runat="server"></asp:RequiredFieldValidator>
                <br />
                Details:
                <br />
                <asp:TextBox runat="server" ID="TxtEventDetails" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TxtEventDetails"
                    ValidationGroup="CreateUpdate" ErrorMessage="*" ToolTip="Required" runat="server"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="BtnCreateEvent" Text="Create / Update Event" runat="server" OnClick="BtnCreateUpdateEvent_Click"
                    ValidationGroup="CreateUpdate" />
                <asp:Button ID="BtnDeleteEvent" Text="Delete Event" runat="server" OnClick="BtnDeleteEvent_Click" />
            </div>
            <br />
            <br />
            <asp:Button ID="BtnRevoke" Text="Revoke google calendar rights" runat="server" OnClick="BtnRevoke_Click" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
