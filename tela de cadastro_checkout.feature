#language: pt

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
            Quando eu digitar nome completo
            E o endereço de email válido
            E não inserir o endereço completo
            E numero de CPF
            Então deve exibiri a mensagem de alerta "Campo obrigatório vazio!"