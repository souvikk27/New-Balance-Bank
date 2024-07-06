<%@ Page Title="" Language="C#" MasterPageFile="~/Layout1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="New_Balance_Bank.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="locationBar">
    Location: Home
</div>
<div id="content">
    <div class="textCol spread">
        <h1>Welcome to New Balance Bank</h1>
        <p>
            A trusted name in the banking industry. 
            We are dedicated to providing our customers with the highest quality financial services and products. 
            Our mission is to help individuals, families, and businesses grow and thrive by providing innovative and personalized banking solutions.
        </p>
        <p>
            With a network of branches and ATMs located across the country, we offer a wide range of services including personal and business checking and savings accounts, loans, mortgages, and investments. Our team of experienced and knowledgeable bankers is committed to helping our customers reach their financial goals and achieve financial stability.
        </p>
        <p>
            At New Balance Bank, we believe in the power of technology to simplify and enhance the banking experience. Our cutting-edge online and mobile banking platforms allow customers to bank on-the-go, 24/7. With state-of-the-art security measures in place, you can trust that your money and personal information are safe and secure.
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Join Us" NavigateUrl="www.javatpoint.com"></asp:HyperLink> today and experience the difference of banking with a dedicated partner who is always working to help you reach your financial potential. New Balance Bank, banking for a better balance.
        </p>
       <%-- <p>
            <a href="http://www.steinberg.de" target="_blank"></a>
        </p>--%>
    </div>
    
</div>
</asp:Content>
