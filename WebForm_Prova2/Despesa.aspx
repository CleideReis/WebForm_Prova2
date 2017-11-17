<%@ Page Title="Despesa Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Despesa.aspx.cs" Inherits="WebForm_Prova2._Despesa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>DESPESA</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:BoundField DataField="IdDespesa" HeaderText="IdDespesa" />
            <asp:BoundField DataField="TipoDespesa" HeaderText="TipoDespesa" />            
            <asp:BoundField DataField="DataDespesa" HeaderText="DataDespesa" />
            <asp:BoundField DataField="ValorDespesa" HeaderText="ValorDespesa" />                           
       </Columns>
    </asp:GridView>

</asp:Content>
