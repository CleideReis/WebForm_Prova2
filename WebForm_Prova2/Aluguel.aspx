<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aluguel.aspx.cs" Inherits="WebForm_Prova2._Aluguel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>ALUGUEL</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdAluguel" HeaderText="IdAluguel" />
            <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" />
            <asp:BoundField DataField="IdMaterial" HeaderText="IdMaterial" />
            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" />
            <asp:BoundField DataField="ValorTotal" HeaderText="ValorTotal" />
            <asp:BoundField DataField="DataSaida" HeaderText="DataSaida" />
            <asp:BoundField DataField="DataDevolucao" HeaderText="DataDevolucao" />
                 
       </Columns>
    </asp:GridView>
</asp:Content>
