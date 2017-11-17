<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Material.aspx.cs" Inherits="WebForm_Prova2._Material" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>MATERIAL</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdMaterial" HeaderText="IdMaterial" />
            <asp:BoundField DataField="Categoria" HeaderText="Categoria" />
            <asp:BoundField DataField="QtdeTotal" HeaderText="QtdeTotal" />
            <asp:BoundField DataField="Estoque" HeaderText="Estoque" />
            
                 
       </Columns>
    </asp:GridView>
</asp:Content>
