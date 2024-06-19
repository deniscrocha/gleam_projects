# Command Line Reference

[Documentação Original](https://gleam.run/writing-gleam/command-line-reference/)

## Commands


- **add**: este comando serve para adicionar dependencias
    Syntax: `gleam add [OPTIONS] <PACKAGES>...`
    Option: --dev | Adiciona os pacotes como dependencias dev-only.

- **build**: builda o projeto.
    Syntax: `gleam build [OPTIONS]`
    Options: -t, --target <TARGET> | a plataforma para buildar.
         --warnings-as-errors  | compila emitindo alertas como erros.

- **check**: Ele checa o type de projeto.
    Syntax: `gleam check [OPTIONS]`
    Options: -t, --target <TARGET> | a plataforma para checar.


- **deps**: Instalador de dependencias *Clojure*
    Syntax: ``
    Options:

- **docs**: Renderiza documentação HTML
    Syntax: `gleam docs <SUBCOMMAND>`
    Subcommand: build, publish, remove.
    Option: --package <PACKAGE> | O nome do pacote.
            --version <VERSION> | A versão da doc para remover.

- **export**: exporta alguma coisa util para o projeto *Gleam*
    Syntax: `gleam exports <SUBCOMMAND>`
    Subcommand: erlang-shipment, hex-tarball, javascript-prelude, package-interface, typescript-prelude.

- **fix**: Re-escreve código gleam depreciado
    Syntax: `gleam fix`

- **format**: Formata o código fonte.
    Syntax: `gleam format [OPTIONS] [FILES]...`
    Options: --check | Checa se os inputs estão formatados sem altera-los.
             --stdin | Lê a fonte do STDIN.

- **help**: Printa a mensagem de ajuda do comando passado como SUBCOMMAND.
    Syntax: `gleam help [SUBCOMMAND]...`

- **hex**: Trabalha com o instalador de dependencias *Hex*
    Syntax: `gleam hex <SUBCOMMAND>`
    Subcommands: retire, unretire.

- **lsp**: Executa o LSP.
    Syntax: `gleam lsp`

- **new**: Cria um projeto novo.
    Syntax: `gleam new [OPTIONS] <PATH>`
    Options: --name <NAME> | Nome do projeto.
             --skip-git | pula a criação dos arquivos git dentro do projeto.
             --skip-github | pula a criação dos arquivos github dentro do projeto.
             --template <TEMPLATE> | Cria apartir de um template.

- **publish**: Publica o projeto para o *Hex* package manager, este comando usa VARS ENV:
        - HEXPM_USER: (optional) o usuario HEX para autentificação.
        - HEXPM_PASS: (optional) a senha HEX para autentificação.
    Syntax: `gleam publish [OPTIONS]`
    Options: --replace | Substitui o ja existente.
             -y, --yes | Confirma tudo automaticamente.
             
- **remove**: Remove dependencias do projeto.
    Syntax: `gleam remove <PACKAGES>`

- **run**: Executa o projeto
    Syntax: `gleam run [OPTIONS] [ARGUMENTS] ...`
    Options: -m, --module <MODULE> | O módulo a ser executado.
             --runtime <RUNTIME>
             -t, --target <TARGET> | A plataforma alvo.

- **shell**: Começa um shell *Erlang*
    Syntax: `gleam shell`

- **test**: Executa os testes do projeto.
    Syntax: `gleam test [OPTIONS] [ARGUMENTS]...`
    Options: --runtime <RUNTIME>
             -t, --target <TARGET> | Seleciona o foco.

- **update**: Atualiza as dependencias para a ultima versão.
    Syntax: `gleam update`

