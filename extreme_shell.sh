#!/bin/bash

# Função para exibir a mensagem de ajuda
function show_help {
    echo -e "\n    Bem vindo ao Extr3m3 shell!\n"
    echo -e "    Você consegue escapar?\n"
    echo -e "    Caracteres proibidos no shell: \"[a-z\\\"\\s|&'.?*]\"\n"
    echo -e "    Execute o comando: fl4g. \n    E receba a flag!\n"
    echo -e "    Se você precisar de ajuda, digite: help.\n"
}

# Função principal do shell
function extr3m3_shell {
    while true; do
        # Exibir o prompt
        echo -n "Extr3m3 sh311 > "
        read input

        # Verificar o comando de ajuda
        if [ "$input" == "help" ]; then
            show_help
            continue
        fi

        # Verificar se a entrada contém caracteres proibidos
        if echo "$input" | grep -qE '[a-z\"\s|&''.?*]'; then
            echo "Comando não permitido."
        else
            # Executar o comando se ele não contiver caracteres proibidos
            # Considerando questões de segurança, você pode querer limitar isso
            # ou manipular de forma mais segura.
            echo "Parabéns você venceu o desafio!"
        fi
    done
}

# Mostrar a mensagem de ajuda inicialmente
show_help

# Iniciar o shell
extr3m3_shell
