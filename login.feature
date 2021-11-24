#language: pt

 Funcionalidade: Login na plataforma

            Contexto: Como cliente da EBAC-SHOP

            Cenário: Autenticando usuário
            Quando eu digitar o usuário "raisa.dias@raisa.com"
            E digitar a senha "senha@123"
            Então deve ser direcionado para tela de checkout para finalização do cadastro

            Cenário: Autenticando usuário inválido
            Quando eu digitar o usuário "raisa.dias@ghotmail.com"
            E digitar a senha "senha@123"
            Então deve ser exibida a mensagem de alerta "Usuário ou senha inválidos"
