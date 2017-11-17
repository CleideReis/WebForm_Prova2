<%@ Page Title="Relatorio Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="WebForm_Prova2._Relatorio" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>RELATORIO</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdRelatorio" HeaderText="IdRelatorio" />
            <asp:BoundField DataField="IdDespesa" HeaderText="IdDespesa" />
            <asp:BoundField DataField="IdReceita" HeaderText="IdReceita" />
            <asp:BoundField DataField="IdAluguel" HeaderText="IdAluguel" />
            
                 
       </Columns>
    </asp:GridView>
</asp:Content>
