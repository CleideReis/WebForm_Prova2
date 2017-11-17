<%@ Page Title="Receita Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Receita.aspx.cs" Inherits="WebForm_Prova2._Receita" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>RECEITA</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdReceita" HeaderText="IdReceita" />
            <asp:BoundField DataField="TipoReceita" HeaderText="TipoReceita" />            
            <asp:BoundField DataField="DataReceita" HeaderText="DataReceita" />
            <asp:BoundField DataField="ValorReceita" HeaderText="ValorReceita" />                           
       </Columns>
    </asp:GridView>
</asp:Content>
