<%@ Page Title="Cliente Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="WebForm_Prova2._Cliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CLIENTE</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" />
            <asp:BoundField DataField="DataNasc" HeaderText="DataNasc" />
            <asp:BoundField DataField="CPF" HeaderText="Cpf" />
            <asp:BoundField DataField="Endereco" HeaderText="Endereco" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
                 
       </Columns>
    </asp:GridView>
</asp:Content>
