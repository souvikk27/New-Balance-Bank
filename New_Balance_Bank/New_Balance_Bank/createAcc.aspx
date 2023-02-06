<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="createAcc.aspx.cs" Inherits="New_Balance_Bank.createAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        textarea
       {
           resize: none;
       }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 427px;
        }
        .auto-style4 {
            width: 237px;
        }
        .FormatRadioButtonList label {
            margin-right: 15px;
        }
        #display_img{
            width: 100px;
            height: 100px;
            border: 1px solid black;
        }
        #display_img_sign{
            width: 200px;
            height: 50px;
            border: 1px solid black;
        }
       
    </style>
   <script>
       function resizemultilineTextBox(txt) {
           txt.style.height = "1px";
           txt.style.height = (1 + txt.scrollHeight) + "px";
       }
      
   </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="content">
        <div class="textCol spread">
            <h1>Create New Account:</h1>
            <p></p>
            
            <form id="frm" runat="server">

                <table class="auto-style1">
                   
                    <tr>
                        <td class="auto-style4">Account Number :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style4">Customer&nbsp; Name :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Account Title :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox3" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Account Type :</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="207px">
                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                <asp:ListItem>Standard Account </asp:ListItem>
                                <asp:ListItem>Savings Account</asp:ListItem>
                                <asp:ListItem>Salary Account</asp:ListItem>
                                <asp:ListItem>Fixed Diposit Account</asp:ListItem>
                                <asp:ListItem>NRI Account</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Gender : </td>
                        <td class="auto-style3">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Date of Birth :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="date" runat="server" placeholder="mm/dd/yyyy" TextMode="Date" ReadOnly="false" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Nationality :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox4" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Postal Address :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtDesc" runat="server" onkeyup="resizemultilineTextBox(this)" TextMode="MultiLine" CssClass="animated" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Phone Number :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">NIC Number :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox7" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Email Address :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox8" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Occupation :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox9" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Initial Deposit :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox10" runat="server" Style="width: 200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Profile Picture :</td>
                        <td class="auto-style3">
                            <div id="display_img">
                                <img src="/Shared/img/blankprofile.png" id="prof" alt="your image" width="100" height="100" />
                            </div>
                            
                            <asp:FileUpload ID="imgPrev" runat="server" onchange="document.getElementById('prof').src = window.URL.createObjectURL(this.files[0])"/>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Signature :</td>
                        <td class="auto-style3">
                            <div id="display_img_sign">
                                <img src="/Shared/img/imageplaceholder.png" id="sign" alt="your signature" width="200" height="50" />
                            </div>
                            <asp:FileUpload ID="imgSign" runat="server" onchange="document.getElementById('sign').src = window.URL.createObjectURL(this.files[0])"/>
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                   
                    
                </table>
                <p></p>
                
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="99px" />
&nbsp;<asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
                
            
            </form>
        </div>
    </div>
</asp:Content>
