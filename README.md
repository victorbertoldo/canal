# Aqui estarão todos os arquivos relacionados aos videos do canal

____

## Passo-a-passo para configuração do ambiente para o **dbt**.

Primeiro passo para configurar o dbt é instalar o python versão >= 3.7

Voce pode obter a versão mais atual do python [aqui](https://www.python.org/downloads/)

Próximo passo é instalar o ambiente virtual do python, rode o comando abaixo no terminal:

``` shell
pip install --user virtualenv
```

Agora vamos criar uma pasta para o projeto, criar o ambiente virtual do projeto:

``` shell
virtualenv .venv
```

Agora vamos acessar o ambiente virtual:

``` shell
.venv\Scripts\activate
```
Ao ativar o ambiente virtual, podemos visualizar quais as bibliotecas estão instaladas usando:


``` shell
pip freeze
```

Agora vamos instalar o necessário para que o dbt funcione:


``` shell
pip install dbt-core
```

``` shell
pip install dbt-postgres
```

Agora que instalamos o dbt, podemos ver o que está instalado no ambiente virtual, após a instalação:

``` shell
pip freeze
```

Com o dbt instalado, execute:

``` shell
dbt --version
```
> Só pra ter certeza de que a instalação deu certo.

## Configuração do datasource 

Instale o postgres em seu pc, utilizando este [link](https://www.postgresql.org/download/)

Com o postgres instalado, abra o psql e acesse as credenciais que foram confiradas na instalação.
> OBS.: Usuário e senha padrões do postgres são: 
>-  User: postgres
>- Password: postgres

Para listar os databases existentes no psql:
``` shell
postgres=# \l
```
Segue abaixo os scripts para criar a fonte de dados, no primeiro arquivo estão os comandos para criar o database e as tabelas, os demais são para inserir os dados.

Pegue [aqui](./sql_source/) os arquivos para criação do ambiente da fonte de dados. Execute na seguinte sequencia:
1. [general.sql](./sql_source/general.sql)
2. [cliente.sql](./sql_source/cliente.sql)
3. [conta.sql](./sql_source/conta.sql)
4. [compras.sql](./sql_source/compras.sql)

## Configuração do **dbt** para conectar em um banco de dados local (postgres)

Vamos iniciar o projeto dbt:

``` shell
dbt init dbt_canal
```
Vá até a pasta do projeto:

``` shell
cd dbt_canal
``` 
Para validar se está tudo funcionando:
``` shell
dbt debug
``` 

Configure os dados para conexão. Esta configuração irá gerar o arquivo `profiles.yml`

Se vc usa windows, vá até o executar e escreva os dados abaixo e de um `Enter`:

``` shell
%userprofile%\.dbt\
```
Isso abrirá a pasta onde o arquivo profiles foi criado. Configure o arquivo de acordo com os seus dados de conexão.

Após a configuração a pasta do projeto dbt já foi gerada e podemos começar a partir daqui.

