#!/bin/bash
#
# Este script cria uma estrutura básica para um projeto React com uma página inicial.
# Autor: Mateus Pereira Santana da Silva

# Verifica se o diretório ./src já existe. Se sim, remove-o.
if [ -d "./src" ]
then
    rm -r ./src
fi

# Cria o diretório ./src e os diretórios internos.
mkdir -p ./src/components
mkdir -p ./src/Pages/Home
mkdir -p ./src/Pages/Home/Styles
mkdir -p ./src/assets/default.config.css

# Verifica se o arquivo ./src/Pages/Home/Home.jsx já existe. Se não, cria-o.
if [ ! -f "./src/Pages/Home/Home.jsx" ]
then
    touch ./src/Pages/Home/Home.jsx
    echo "import React from 'react'

function Home() {
  return (
    <div>Home</div>
  )
}

export default Home" >> ./src/Pages/Home/Home.jsx
fi

# Pergunta ao usuário se deseja usar sass ou css.
read -p "Deseja usar sass ou css? " sty_use

# Verifica a entrada do usuário. Se não for "sass", cria o arquivo css.
if [ "$sty_use" == "sass" ]
then
    touch ./src/Pages/Home/Styles/Home.Style.scss
else
    touch ./src/Pages/Home/Styles/Home.Style.css
fi

# Cria o arquivo ./src/main.jsx.
touch ./src/main.jsx

# Mensagem informando ao usuário que a configuração inicial foi concluída.
echo "Configuração inicial do projeto concluída com sucesso."
