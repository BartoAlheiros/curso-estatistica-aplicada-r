# Instalando pacotes

## Op??o 1: atrav?s de "packages" no canto inferior direito

## Op??o 2:
install.packages("dplyr")

## Op??o 3:
if(!require(dplyr))
  install.packages("dplyr")


#################### Carregando pacotes ####################

library(car)
require(dplyr)



############### Carregando o banco de dados ###############

# Passo 1: selecionar o diret?rio de trabalho (working directory)


## Op??o 1 - Manualmente: Session > Set Working Directory > Choose Directory

## Op??o 2:
setwd("H:/Meu Drive/Data Science/curso-estatistica-aplicada-no-r")


# Passo 2: carregar o banco de dados

dados <- read.csv('Banco de Dados 2.csv', sep = ';', dec = ',', stringsAsFactors = T)

## Fun??es para visualizar o banco de dados:
View(dados)
glimpse(dados)
