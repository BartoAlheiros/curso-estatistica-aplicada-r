#################### Carregando pacotes ####################

if (!require(dplyr))
  install.packages("dplyr")

library(dplyr)


############### Carregando o banco de dados ###############

# Passo 1: selecionar o diret?rio de trabalho (working directory)


## Op??o 1 - Manualmente: Session > Set Working Directory > Choose Directory

## Op??o 2:
setwd("H:/Meu Drive/Data Science/curso-estatistica-aplicada-no-r/aula 2 - codificando variaveis categoricas no r")


# Passo 2: carregar o banco de dados

dados <- read.csv('banco de dados 2 codificado.csv', sep = ';', dec = ',')


############### Visualizando o banco de dados ###############

View(dados)
glimpse(dados)


############### Ajustando as vari?veis ###############

# Transformando G?nero em fator:

dados$Genero <- factor(dados$Genero, label = c("M", "F"), levels = c(0, 1))


# Transformando Grau de Instru??o em fator:

dados$Grau_de_Instru?ao <- factor(dados$Grau_de_Instru?ao,
                                  label = c("Fundamental", "Medio", "Superior"),
                                  levels = 0:2, order = T)


# Codificando valores ausentes (missing values):

dados[dados==-999] <- NA



