#Mateus El-moor Pereira
#https://www.linkedin.com/in/mateus-el-moor-pereira-119b011a2?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B2Wf1Go7lQNaKsYwbmchc1w%3D%3D

#Atividade sugerida pelo professor Wandre Nunes Veloso 
#link do linkedin do professor: https://www.linkedin.com/in/wandreveloso/

library(dslabs)

data("murders")

force(murders)

class(murders)

str(murders)

head(murders)

murders$population #accessor $

names(murders)

pop <- murders$population

length(pop)

class(pop)

class(murders$state)

class(murders$region)

levels(murders$region)

length(levels(murders$region))

murders$region == murders[["region"]]

x <- c("a", "a", "b", "b", "b", "c")

table(x) #serve para tabular os dados (faz um resumo)

#baskara #raiz quadrada é sqrt #exercicio
a=2
b=-1
c=-4

a <- 2; b <- -1; c <- -4

raiz_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)

raiz_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

#log #exercicio
log(1024, 4)

#exercicio tipo prova
library(dslabs)
data("movielens")

#quantas linhas tem essa base de dados? 100004
length(movielens)
nrow(movielens)

#quantas diferentes variaveis(colunas) tem essa base de dados?
names(movielens)
length(movielens)
#essa base de dados possuem 7 colunas/variaveis

#qual o tipo da variavel title? = "character"
class(movielens$title)

#qual o tipo da variavel genres? = "factor"
class(movielens$genres)

#quantos tipos diferentes de genres existem? 901
length(levels(movielens$genres))

str(movielens)

head(movielens)

