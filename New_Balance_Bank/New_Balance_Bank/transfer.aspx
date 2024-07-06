<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="transfer.aspx.cs" Inherits="New_Balance_Bank.transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        table {
            border-spacing: 10px;
        }
        .auto-style1 {
            width: 100%;
            border: 1px solid #2840b8;
            
           
        }
        .auto-style2 {
            width: 265px;
        }
        .auto-style3 {
            width: 283px;
        }
        .auto-style4 {
            width: 140px;
        }
        .auto-style5 {
            width: 541px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form1" runat="server">
     <div id="content">
        <div class="textCol spread">
            <h1>Transfer:</h1>
            <p></p>
            <h3>From</h3>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Account Number :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Search" Width="77px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Customer Name :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">NIC Number :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Current Balance :</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <p></p>
            <h3>To</h3>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Account Number :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button2" runat="server" Text="Search" Width="77px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Name :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">NIC Number :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Current Balance :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <p></p>

            <asp:Button ID="Button4" runat="server" Text="Process" Width="77px"/>

            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>

            </div>
         </div>
     </form>
</asp:Content>
