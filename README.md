## SUMÁRIO

- [Sobre](#sobre-o-site) <br>
- [Linguagens e Aplicações](#linguagens-e-aplicações-utilizadas) <br>
- [Documentação e Manual](#documentação-e-manual) <br>
- [Preview](#preview-do-site) <br>

****

## SOBRE O SITE
 Um protótipo de uma loja virtual de roupas urbanas. Esse site contempla o basico de qualquer loja virtual como:
 
  - **Pagina principal:** Seu objetivo é passar a vibe da loja com o uso de banners e slogans, alem de indicar as melhores sugestões de roupas para o usuário, contem as principais funções de forma simplificada como filtros e promoções.
  - **Pagina de Produto:** Detalha as informações do produto selecionado e permite o usuário de customizar sua compra escolhendo tamanhos, quantidadades e cores. O usuário poderá visualizar de maneira detalhada fotos do produto selecionado, descrições detalhadas, composição do produto e comentários de usuarios que já compraram esse produto. Caso o usuário possua uma conta no site, ele terá a opção de deixar seu comentário.
  - **Pagina de pagamento:** Uma sessão onde as informações deverão ser sigilosas para garantir a segurança do usuário. Tambem é exibido os itens selecionados com quantidade, cupons aplicados, imagem previa, descontos ou acrescimos com frete. Após o preenchimento do formulário, o site leva a uma API segura para confirmação de pagamento. (essa parte não será implementada por enquanto)
  - **Perfil:** Uma pequena aba que informa o usuário logado por nome e email, permite a alteração de perfil e log-out.
  - **Cadastro/ Alteração:** Uma sessão onde o usuário poderá fazer cadastro ou alterar suas informações caso selecionada opção em aba de perfil e usuário estiver logado. Um formulário simples que não pede informações sigilosas. A opção de cadastro se diferencia da alteração de perfil por não resgatar informações e não permitir adição de imagem de perfil.
  - **Login:** Um pop-out simples. Caso o usuário nao possua conta no site existe a opção de cadastro. Futuramente será implementado a opção "Esqueci minha senha".
  - **Pagina de Filtros:** Uma parte exslusiva do site para busca de produtos de forma mais detalhada, permitindo o usuário filtrar itens pelo preço, tamanhos disponiveis, cores, estilos, entre diversas opções.

 *Como se trata de um protótipo funções como e-mail de atendimento ao cliente, telefone, termos de uso e politica de privacidade e ajuda (footer em geral) são meramente ilustrativas podendo ser implementadas futuramente.*

Como um produto exclusivo para uma empresa ficticia, os produtos são adicionados diretamente a um banco de dados e não sendo possível edita-los diretamente pelo site. Caso se faça necessário um perfil administrador pode ser adicionado para retirar produtos fora de estoque, apagar comentários e alterar promoções e banners.
 
****


## LINGUAGENS E APLICAÇÕES UTILIZADAS
 Para o design de telas será utilizado o figma, link do projeto abaixo.
 
 [Design do Projeto no Figma](https://www.figma.com/design/UYhSxr5YA4a3qpLkndqpIy/Urban_Soul?node-id=0-1&t=5fhOM2augt4dKMt3-1)

 Para o desenvolvimento do site E-commerce será utilizado React para o frontend, link do repositorio app react abaixo.

 [Repositorio React](https://github.com/oibene/urbansoul-app)
 
 Para desenvolvimento do backend será utilizado uma API REST utilizando a linguagem Golang, link do repositorio API Go abaixo.

 [Repositorio Go](https://github.com/oibene/urbansoul-API)
 

 Será utilizado o banco de dados PostegreSQL.

****

## DOCUMENTAÇÃO E MANUAL
 Será disponibilizado um manual simples a medida do desenvolvimento do site

****

## PREVIEW DO SITE
 Em desenvolvimento...
