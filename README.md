# Automação Tok&Stok - Aplicativo Android

## Índice

* **[Configuração](#configuração)**
  * [Passos para configurar a máquina que será executada a automação](#passos-para-configurar-a-máquina-que-será-executada-a-automação)
  * [Instalação dependências do Python](#instalação-dependências-do-Python)
  * [Configuração Android Studio](#configuração-android-studio)
  * [Parametrização da automação](#parametrização-da-automação)
  * [Parametrização dos SKUs dos produtos](#parametrização-dos-skus-dos-produtos)
  * [Parametrização do usuário, endereço e cartão de crédito](#parametrização-do-usuário,-endereço-e-cartão-de-crédito)
  * [Executando a automação](#executando-a-automação)
  * [Status Report da automação e evidências](#status-report-da-automação-e-evidências)
  * [Status Report HTML](#status-report-html)
  * [Evidências](#evidências)

## Configuração

## Passos para configurar a máquina que será executada a automação

Os passos abaixo são necessários para tornar possível executar os testes automatizados da automação Android.
Nos passos abaixo será solicitado a criação de variáveis de ambiente ou que seja adicionados valores à variáveis já existentes, para acessar as variáveis de ambiente do sistema:

1. Abrir Menu Iniciar;
2. pesquisar “variáveis de ambiente”;
3. clicar no resultado;
4. na janela que abrirá clicar em “Variáveis de Ambiente...”

Abaixo estão os softwares que devem ser instalados e configurados na máquina para o funcionamento da automação:

1. Instalar **Java JDK** e criar uma variável de ambiente **"JAVA_HOME"** a no valor da variável adicionar o caminho da pasta onde o mesmo foi instalado (Exemplo: C:\Program Files\Java\jdk1.8.0_131). Mais informações: <https://www.devmedia.com.br/preparacao-do-ambiente-para-desenvolvimento-em>- java/25188
2. **Instalar Node JS**. Link para download <https://nodejs.org/en/>
3. Adicionar o caminho da pasta do Node JS à variável de ambiente PATH (Caminho: C:\Program Fi-
les\nodejs)
4. Abrir o Prompt de Comando e executar o comando **npm install -g appium**
5. Instalar o **Appium Desktop** – Acesse o link <https://github.com/appium/appium-desktop/releases/>, rea- lize o download e instale a última release estável do mesmo. (Utilize sempre o arquivo com extensão **.exe**)

![Página de downloads do Appium Desktop ](images/appium-desktop-releases-github-com.png)

6. Instalar a última versão do Android Studio – Acesse: <https://developer.android.com/studio>

## Instalação dependências do Python

1. Para instalar as dependências do python, acessar a pasta automation e executar o arquivo setup.bat.

![Arquivo de configuração do Windows](images/windows-configuration-file.png)

## Configuração Android Studio

Depois que a instalação do Android Studio está completa, realizar a execução do mesmo como Adminis- trador, pois iremos realizar as configurações necessárias para automação.

1. Durante o primeiro acesso ao Android Studio, será questionado a forma de configuração do mesmo, selecione a opção "Custom" e informe a localização do Android SDK (necessário criar a pasta, icone pasta+) para "C:\Program Files\Android_SDK";
2. Quando abrir a página inicial do Android Studio, conforme abaixo, selecionar Configure > SDK Mana- ger;

![Android Studio - Welcome](images/android-studio-welcome.png)

3. Na janela que irá abrir, selecionar a versão do Android do device que será utilizado para automação e clicar em OK seguindo os passos para instalar. Recomendamos a instalação do Android 9.0 ou su- perior;

**Importante:** Sempre que for realizar automação conferir se o SDK daquela versão está instalada.

![Android Studio - SDK Manager](images/android-studio-sdk-manager.png)

**OBS:** Após isto é necessário criarmos uma variável de ambiente e adicionar alguns caminhos de pastas à variável de ambiente PATH para que a automação funcione corretamente, para acessar variáveis de ambiente, ver tópico 1.1.

4. Criar variável de ambiente **"ANDROID_HOME"** passando o caminho **"C:\Program Files\Android_SDK";**
5. Adicionar em **"Path"** das variáveis de ambiente do sistema os valores listados abaixo:
   1. %ANDROID_HOME%\platform-tools
   2. %ANDROID_HOME%\build-tools\<versão do build tools instalada>
   3. %ANDROID_HOME%\tools

## Parametrização da automação

A automação Tok&Stok App Android permite que algumas informações sejam previamente parametrizadas de acordo com a necessidade, sendo elas, SKU dos produtos que a automação utilizará nos fluxos de compra e navegação, usuário que será utilizado no login, endereço que será adicionado e/ou validado, final do cartão de crédito que será selecionado e o CVV do cartão de crédito.
Estes arquivos de parametrização encontram-se na pasta automation dentro da pasta raiz da automação:

![Pasta - Automation](images/folder-automation.png)

## Parametrização dos SKUs dos produtos

Para parametrizar os SKUs, entrar na pasta automation e abrir o arquivo produtos-config.csv (O mesmo pode ser aberto utilizando Excel ou outra ferramenta de planilhas).

![Arquivo - produtos-config.csv](images/file-produtos-config.png)

O arquivo possui 2 colunas sendo elas Tipo de Entrega e SKU, podendo ter vários produtos de SKUs diferentes para o mesmo tipo de entrega, porém o Tipo de Entrega deve possuir exatamente as opções abaixo:

* Apenas Parceiro Logistico
* Apenas Entrega Agendada
* Retirada em loja
* Parceiro Logistico e Retirada em loja
* Entrega Agendada e Retirada em loja

**Observações:**

A escriva deve ser exatamente como acima, pois qualquer alteração na capitalização ou se adicionado
acentuação, poderá não funcionar corretamente.

Fluxos de Entrega Agendada + Retirada em loja é essencial que tenha pelo menos 1 SKU “Apenas Entrega Agendada”, devido não haver possibilidade de selecionar somente 1 produto para Retirada em loja quando os 2 estão disponíveis para esta opção.

![Planilha - sheets-skus.png](images/sheets-skus.png)

## Parametrização do usuário, endereço e cartão de crédito

Para parametrizar o usuário, endereço e cartão de crédito, entrar na pasta automation e abrir o arquivo user-config.csv (O mesmo pode ser aberto utilizando Excel ou outra ferramenta de planilhas).

![Arquivo - user-config.csv](images/file-user-config.png)

Para modificar as informações que serão utilizadas na automação basta editar e salvar o arquivo.

**Observações:**

* O cartão de crédito que será utilizado deve já estar previamente adicionado ao usuário que será utili- zado, pois a automação verificará se o mesmo já está selecionado no passo “Definir Pagamento”, se não estiver selecionado, irá realizar a seleção do cartão de crédito correto e seguir com o fluxo de compra.

![Planilha - sheets-users.png](images/sheets-users.png)

## Executando a automação

Para realizar a execução da automação, é necessário que o device esteja conectado e liberado na máquina que será executada ou o emulador do Android esteja rodando na mesma máquina.

**Observações:**

* No caso de execução de devices reais, para liberar o device para execução, necessário habilitar Op- ções de Desenvolvedor no mesmo, habilitar Debug via USB e executar o comando “adb devices” para autorizar a máquina a conectar no device em DEBUG via USB.
* No caso de execução utilizando emulador do Android, executar como Administrador para correto fun- cionamento.
* No caso de emulador Android, recomendamos utilizar o Pixel 3 XL com Android 9.0 ou superior.

Para iniciar a automação, executar o arquivo “start_automation.bat” que está na pasta raiz da automação.

![File - file-startautomation_bat.png](images/file-startautomation_bat.png)

Quando automação iniciar um prompt de comando será aberto e apresentará os fluxos que serão realiza- das pela automação.

![Print - cmd-npm-automation.png](images/cmd-npm-automation.png)

## Status Report da automação e evidências

No término da execução da automação, um status report HTML é gerado e pode ser acessado através da pasta raiz.

![Arquivo - file-status-report-html.png](images/file-status-report-html.png)

## Status Report HTML

Neste arquivo é possível visualizar a taxa de testes que obtiveram sucesso, visualizar os fluxos executados e seus passos e os Pedidos que foram gerados nos fluxos de compra (quando houver)

![Print - status-report-html-01.png](images/status-report-html-01.png)

![Print - status-report-html-02.png](images/status-report-html-02.png)

## Evidências

As evidências dos testes executados estão localizadas em automation > resources > screenshots:

![Print - print-folder-evidencias.png](images/print-folder-evidencias.png)

**Observação:** Além do Status Report HTML, é possível também visualizar a listagem de todos os pe- didos gerados nos fluxos de compra através de um arquivo .CSV localizado em automation > resources.

![Arquivo - file-evidencias.png](images/file-evidencias.png)
