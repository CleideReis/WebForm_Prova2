<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebForm_Prova2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
     <link href="Scripts/bootstrap.css" rel="stylesheet" />
</head>
<body background="Imagem/tela2.jpg" class="largura-cheia"  >
    <form id="form1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">

            <h4>Bem Vindo!</h4>
                <asp:TextBox runat = "server" ID ="txtNome" placeholder ="Digite o nome" class="form-control input-sm chat-input"/> <br/>
               <asp:RequiredFieldValidator ID="validaNome" runat="server" ErrorMessage="Informe algum nome" ControlToValidate ="txtNome" ForeColor ="Red" Display ="Dynamic"></asp:RequiredFieldValidator> <br/>
               <asp:TextBox runat="server" ID="txtSenha" placeholder="Digite a senha " TextMode ="Password" class="form-control input-sm chat-input" /> <br/> 
               <asp:RequiredFieldValidator ID="validaSenha" runat="server" ErrorMessage="Informe alguma senha" ControlToValidate ="txtSenha" ForeColor ="Red" Display="Dynamic"></asp:RequiredFieldValidator> <br/>
         
            <div class="wrapper">
            <span class="group-btn">  
                <asp:Button Text = "Enviar" ID="bntEnviar" runat="server" OnClick="bntEnviar_Click" class="fa fa-sign-in"/>
                
            </span>
            </div>
            </div>        
            </div>
        </div>
    </div>
    </form>
</body>
</html>
