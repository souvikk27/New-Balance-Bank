<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allAcc.aspx.cs" Inherits="New_Balance_Bank.allAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div id="content">
        <div class="textCol spread">
            <h1>Account Records :</h1>
            <p></p>
            <center>

                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

            </center>
            </div>
        </div>
    </form>
</asp:Content>
