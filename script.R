# ---------------------------
##
## Script name: Quais são os impactos da restrição hídrica e de 
## formas de tratamento da semente a base de agente biológico 
## no desenvolvimento da soja?  
##
## Purpose of script: AVALIAR A EFICIÊNCIA DE PROTETOR BIOLÓGICO 
## PARA BACTÉRIAS DO GÊNERO Bradyrhizobium NA CULTURA DA SOJA
## 
##
## Author: Lilian de Souza Vismara 
##
## Date Created: 2022-06
##
## Copyright (c) Lilian de Souza Vismara, 2022
## Email: lilianvismara@utfpr.edu.br
##
## ---------------------------
##
## Notes: ANAVA - Fatorial duplo em DIC
##
## ---------------------------

# -------------------- PREAMBULO
library(readr) 
dados <- read_csv("dados.csv")
View(dados)
str(dados) #função que exibe de forma compacta a estrutura de um objeto R arbitrário

# -------------------- PACOTE 
#install.packages("ExpDes.pt")
require("ExpDes.pt")

# -------------------- Análise dos dados 
########## Fatorial duplo em DIC

## Nitrogênio (mg/L)
fat2.dic(
dados$niveis_umidade,
dados$fator_D,
dados$N,
quali = c(FALSE, TRUE),
mcomp = "tukey",
fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
sigT = 0.05,
sigF = 0.05,
unfold = NULL
)

## Proteínas totais (mg/L)
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$PTN,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Número de nódulos maiores ou igual a 4 mm 
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$NNG,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Número de nódulos menores que 4 mm 
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$NNP,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Número de nódulos totais
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$NNT,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Massa seca da raiz (g)
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$MSR, 
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Massa seca da parte aérea (g)
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$MSPA,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)

## Massa seca total (g)
fat2.dic(
  dados$niveis_umidade,
  dados$fator_D,
  dados$MSPA,
  quali = c(FALSE, TRUE),
  mcomp = "tukey",
  fac.names = c("Níveis de umidade", "Formas de tratamento da semente"),
  sigT = 0.05,
  sigF = 0.05,
  unfold = NULL
)


# -------------------- REFERENCIAS (PACOTES)
citation() # referencia do R
citation("ExpDes.pt") #referencia do pacote ""

