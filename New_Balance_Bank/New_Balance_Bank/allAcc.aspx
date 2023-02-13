<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allAcc.aspx.cs" Inherits="New_Balance_Bank.allAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
    <div id="content">
        <div class="textCol spread">
            <h1>Account Records :</h1>
            <p></p>

                
                     <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" Height="295px" Width="1644px" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Account Number">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("A_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("C_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField HeaderText="Account Title">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("A_title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Account Type">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("A_type") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date of Birth">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Dob") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nationality">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Nationality") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Postal Adderss">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("P_Add") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NIC Number">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Nic") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email Address">
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Occupation">
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Occup") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Balance">
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Init_dep") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:CommandField ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                </div>


               

        </div>
    </form>
</asp:Content>
