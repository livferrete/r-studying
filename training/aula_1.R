# Aula 1 - Conceitos e comandos iniciais do R

# Atalhos e dicas ----
  # Para inserir comentário, botar "#" antes do texto 
  # Para comentar uma seção inteira, selecionar a área e Ctrl + Shift + C
  # Para salvar o arquivo, Ctrl + S
  # Para selecionar todo o código, Ctrl + A
  # OBS.: o R é case sensitive, isto é, Y != y 


# Executando um comando ----
  # Mantendo o cursor posicionado na linha desejada, apertar Ctrl + Enter ou clicar em "Run"
 

# Atribuindo valor a variáveis  ----
  # A variável deve sempre começar com uma letra, e não se pode usar espaço
  # Deve-se executar as linhas das variáveis para que recebam os valores
  # Ao separar os comandos, deve-se utilizar ';'
  # Uma variável pode receber outra (exemplo: x = y)
x = 30; y = 40
  

# Operações matemáticas ----
  # Utilizar +, -, / (divisão) e * (multiplicação)
x + y
x - y
x / y
x * y
  

# Função raiz quadrada ----
  sqrt(x)
  

# Instalando pacotes ----
install.packages("esquisse")
install.packages("summarytools")
install.packages("gtsummary")
install.packages("car")
install.packages("DescTools")
install.packages("flextable")
# install.packages("jsonlite")
  # Uma vez baixado, o pacote não precisa ser reinstalado novamente, fora na instalação de uma nova versão do R
  # Ao executar o código todo, botar um "#" na frente da biblioteca para evitar a reinstalação
  

# Carregando pacotes ----
library(summarytools)
library(gtsummary)
library(car)
library(DescTools)
library(flextable)
  

# Trabalhando com um banco de dados (do R) ----
  # Carregando um banco de dados do R 
  data("iris") # Banco de dados com 5 espécie de uma flor, "iris"
  
  # Abrindo um banco de dados
  View(iris) # Com "V" maiúsculo
  
  # "Factor w/ 'x' levels: variável quantitativa
  # Às vezes, ele conhece o 0 ou 1 como número ao invés de caracter booleano
  
  # Estrutura do banco de dados
  str(iris)
  
  # Chamando a variável "Species"
  iris$Species # Mostra as linhas e dá os níveis (se for um fator)
  
  # Copiando um banco
  iris_new = iris
  
  # Eliminando a coluna do banco de dados
  iris$Sepal.Length = NULL
    # Para recarregar o banco de dados completo, ir na linha 'data("Nome_BD")' e reexecutá-la
  

# Criando uma qualitativa a partir de uma quantitativa ----
  iris_new$Sepal.Width.Qual = cut(iris_new$Sepal.Width, c(-1, 3, 100000))
    # Corte das "Sepal.Width" com valor abaixo de 3 e maior que 3 (para esse inserir número absurdo)
  
  levels(iris_new$Sepal.Width.Qual) 
    
  # Atribuindo novos nomes
  levels(iris_new$Sepal.Width.Qual) = c("<= 3", "> 3")
  # View(iris_new)  
