 Testes automatizados  com Robot Framework


Testes aplicados no site de exemplo: https://www.saucedemo.com
Foi utilizado o estilo data-driven para validar o mesmo cenário, porém com diferentes dados de entrada/saída

1. Estrutura de arquivos e diretórios
Os testes estão estruturados nos seguintes diretórios:

sauce_resources.robot: arquivo que contém as chamadas para instalação das libraries, variables e keywords do robot que são necessárias para executar os testes.
sauce_test.robot: diretório que contém arquivos .robot com as suítes de testes (cenários ou casos de testes).

2. Pré condições para os testes
   
Clonar esse projeto
Python 2.7.x ou superior
Baixar os webDrivers dos navegadores Firefox ou Chrome
Usar um editor ASCII de sua preferência (VSCode, Atom, RIDE, etc)

4. Preparando ambiente
Instalando libraries Python necessárias
Instale todas a libraries Python necessárias, digitando no terminal o comando:

Linux / Mac
$ pip install -r requirements.txt --user
Baixando webDrivers para os navegadores
Baixe o driver do Firefox em: https://github.com/mozilla/geckodriver/releases

Baixe o driver do Chrome em: http://chromedriver.chromium.org/downloads

Deve ser baixado o driver mais atualizado, de acordo com a versão do navegador.
Após baixar os arquivos no diretório desejado, é preciso configurar o caminho deste diretório na variável $PATH do sistema. Essa configuração varia de acordo com o sistema operacional.

4. Executando os testes
Os comandos abaixo devem ser executados no terminal, no diretório raiz do projeto.

$  robot  .\TesteWeb\
