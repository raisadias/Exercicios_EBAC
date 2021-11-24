            #language: pt

            Funcionalidade: Configurar produto

            Contexto: Como cliente da EBAC-SHOP

            Cenário: Escolhendo item
            Quando eu escolher cor do item
            E tamanho do item
            E até a quantidade  de 10 itens
            Então após clicar em comprar o item deve ir para o carrinho

            Cenário: Desistindo da compra
            Quando eu não quiser mais realizar a compra do item
            E clicar no botão "limpar"
            Então o carrinho deve ser esvaziado e voltar ao estado original



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


            Funcionalidade: Tela de cadastro - Checkout

            Contexto: Concluir Cadastro

            Cenário: Dados preenchidos corretamente
            Quando eu digitar <nome completo>
            E o <email valido>
            E o <endereco completo>
            E numero de <CPF>
            Então deve exibiri a mensagem "cadastro finalizado com sucesso"

            Exemplos:
            | nome completo | email valido       | endereco completo     | CPF         |
            | raisa dias    | raisad@hotmail.com | alameda campinas, 900 | 33438887890 |
            | renata lima   | rlima@gmail.com    | rua clemente vaz, 80  | 33366678720 |
            | douglas souza | douglass@uol.com   | av quatro, 505        | 20277852033 |

            Cenário: Inserindo endereço de email inválido
            Quando eu digitar "raisad.d@hotmail"
            Então deve exibir a mensagem de alerta "endereço de e-mail inválido"

            Cenário: Campo em branco
            Quando eu digitar <nome completo>
            E o <email valido>
            E o <>
            E numero de <CPF>
            Então deve exibiri a mensagem de alerta "Campo obrigatório vazio!"

