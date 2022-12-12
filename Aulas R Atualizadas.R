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
data("movielens") #Carregar o data frame

#quantas linhas tem essa base de dados? 100004
length(movielens) #numero de colunas
nrow(movielens) #numero de linhas

#quantas diferentes variaveis(colunas) tem essa base de dados?
names(movielens)
length(movielens)
#essa base de dados possuem 7 colunas/variaveis

#qual o tipo da variavel title? = "character"
class(movielens$title) #tipo da variavel "title"

#qual o tipo da variavel genres? = "factor"
class(movielens$genres) #tipo da variavel "genres"

#quantos tipos diferentes de genres existem? 901
length(levels(movielens$genres)) #quantidade de generos(genres)

str(movielens)
#a função str checa a correta importação dos dados

head(movielens)
#a função head vai apresentar as primeiras linhas de uma planilha


#Vetores e função names
#vetores sao uma coleçao ordenadad e valores
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")

codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c ("italy" = 380, "canada" = 124, "egypt" = 818)

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
names(codes) <-country #funcao names coloca um nome na funcao de cima (joga os valores de country para codes)
# a função names serve para colocar nomes a elementos de um vetor. atribui a codes os nomes de country

#funcao seq
seq(1,10) #roda os elementos de 1 a 10 contando de 1 em 1
seq(1,10,2) #roda de 1 a 10, mas pula de 2 em 2
1:10 #é o mesmo da primeira linha
seq(1,10,0.01)
seq(10,1,-0.1)

#acessando vetores
#acessando os elementos (que está na linha 88? - vetor)
#acessa os vetores por meio de []
codes[2] #segundo elemento (começa a contar do 1)
codes[c(1,3)] #só tem dois elementos o 1º e o 3º
codes[c(1:3)] #vai transformar em uma lista com os elementos de 1 a 3 - imprimi os 3

c(1, 2, 3, 4) == c(1:4) #todos os elementos da estrutura sao iguais (mesma ordem)
#compara os dois tipos

codes[1:2] #vai pegar o elemento 1 e 2

codes["canada"] 

codes[c("egypt", "italy")] #vai mostrar os valores na ordem que foi pedida
#sempre que quiser trabalhar como uma lista de elementos do mesmo tipo é necessario colocar o "c"

#Coerção
#o R faz a coerção automatica (faz um possivel ajuste). todos os elemento de um vetor sao do mesmo tipo
x <-c(1, "canada", 3)
class(x)
print(x)

#conversão
#tem um tipo, mas quer transformar em outro tipo
as.character()
x <- 1:5
y <- as.character(x) #converte os elementos de x 
y
as.numeric(y) #trate esses valores como numerico

#tipos de dados NA (quando tem algum dado faltante)
#significa not available (não disponivel)
x <= c("1", "b", "3") #ocorre um erro, por causa do "b"
as.numeric(x)

#exercicios - criar um vetor temp para armazenar os seguintes valores: 50,75, 90, 100, 150
temp <-c(50, 75, 90, 100, 150) #como sao valores e nao caracteres nao precisa colocar as aspas
city <- c("Brasilia", "Paris", "Japonvar", "Itu", "Roma")
names(temp) <-city #"names dá nome aos bois"

temp[c(1:3)] #imprimi os 3 primeiros elementos

#mostrar os valores em temp das cidade Paris e Itu
temp[c("Paris", "Itu")]

#crie um vetor x e armazene os numeros inteiros começando em 13 e acabando em 71
#determine quantos elementos contem e qual a soma de todos eles
x <- 13:71
length(x) #mostra a quantidade de elementos/tamanho
sum(x)

#soma dos elementos impares
sum(x[seq(1,59,2)]) #ou sum(seq(13,71,2))

#faça um vetor que contenha todos os multiplos de 7 que sao menores ou iguais a 300
seq(7,300,7)

#faça um vetor que contenha todos os numeros impares menores que 100
seq(1,100,2)

seq(2,100,2) #todos os numeros pares até 100

#utilizando somente uma linha de codigo, descubra quantos elementos tem uma sequencia de numeros que 
#comece em 6, que nao tenham numeros maiores que 55, e que a diferença entre eles seja 4/7
length(seq(6,55,4/7))


#vetores - é possivel criar um novo tipo de vetor de sequencia dizendo a quantodade de elementos
x <- seq(0, 100, length.out = 5)

#crie um vetor de 100 elementos equidistantes que comece em 1 e vá ate 10
x <- seq(1, 10, length.out = 100)
x

#vetores - comando vector
h <- vector("numeric", length = 15)
?vector
#coloca o tipo (EX:numeric) e o tamanho(EX: length = 15)

h <- vector("logical", length = 15) #é possivel tirar o length do codigo
print(h)

#tipo inteiro
class(3)
class(3L) #vai mudar a classe do 3 de numeric para integer
#a diferença é que inteiros ocupam menos memoria do que tipo numeric
a <- seq(1,10)
print(a)
class(a)

#exercicios
#crie um vetor x que armazenara os seguintes valores: 1,3,5,"a"
x <-c(1,3,5,"a")
print(x)
#qual o tipo dele? qual o nome da propriedade do R que é notada nesse codigo? é a coerção
class(c)

#faça a conversao de x para numerico. deu certo? o que fazer com o NA?
#OBS: quase todas as bases de dados vai ter NA.

#AULA 07 - 13/09/22
#matriz (elementos de mesma classe)
#matriz trabalha com elementos da mesma classe/tipo.
#ncol significa o numero de colunas; nrow é numero de linhas;

e <-matrix(ncol = 2, nrow = 2, data = 1:4)
e[2,1] #segunda linha e primeira coluna
print(e)
e[2, ] #segunda linha completa
e[ ,2] #segunda coluna completa
e[ ,1:2] # 1º e º2 coluna
e[1:2,1] #vai imprimira primeira coluna. (1º e 2º linha da 1º coluna)
as.data.frame(e) #vai visualizar o "e" como dataframe. é um tipo de conversão. converte uma matriz em um dataframe


#Lista 
#é um tipo especial de vetor com diferentes classes.
i <- list(2,3,"c","d", FALSE, 2+3i, 4+2i) 
# 4+2i é do tipo número imaginario. 
print(i)

class(i)


##Ordenação de dados. tem como objetivo colocar em uma ordem.
library(dslabs)
data(murders)
sort(murders$total) #é um tipo de ordenaçao. ordena um tipo de murders. é ascendente do Estado que tem menos pra que tem mais.
#o sort ordena de forma crescente.


#a partir daqui o professor vai explicar como fazer para achar o Estado que tem o menor numero de murders(2).
x <-c(31, 4, 15, 92, 65)
x
class(x)
sort(x) #coloca os elementos em ordem crescente

index <- order(x) #mostra a sequencia de indexes em ordem crescente
print(index)
#o index mostra o indice necessario para organizar os elementos em ordem crescente. 
#ou seja, o elemento 2 é o menor, portanto no indice ele é o primeiro.

x[index] #mesma coisa que o sort
#o comando acima ordena em ordem crescente. fez a mesma funçao do sort, mas esse tem a vantagem de saber qual.
#vai organizar o vetor em ordem.

order(x)
#é a mesma coisa do index
x

murders$state[1:10] #mostra os Estados ordenados em ordem alfabetica
murders$abb[1:10] #mostra as siglas dos Estados.

index <-order(murders$total)
murders$abb[index]
#mostra a abreviaçao dos Estados ordenados pelo menor numero de murders.
murders$state[index]

max(murders$total)
i_max <-which.max(murders$total) #vai colocar o indice maximo. valor maximo. atribui  o indice do elemento com o maior total a variavel i_max
i_max #vai mostrar o quinto Estado que é o que tem o valor maximo.
murders$state[i_max] #vai imprimir "california" que é onde tem mais murders.

#usando uma analogia, como fazer para descobrir qual o menor valor?
min(murders$total)
i_min <-which.min(murders$total) #atribui  o indice do elemento com o menor total a variavel i_min
i_min
murders$state[i_min]


x <-c(31, 4, 15, 92, 65)
x
rank(x)
#a função rank vai organizar os elementos do menor elemento para o maior.

#original = 31, 4, 15, 92, 65.
#o sort ordena os elementos em ordem crescente/ascendente. sort = 4, 15, 31, 65, 92
#order vai levar em consideraçao o sort e ordenar os qual é a posiçao de cada elemento, portanto, vai pegar a posiçao que ta no sort e comparar com a posiçao do original e apos isso vai colocar a ordem
#rank vai colocar a posiçao de cada elemento. vai olhar a ordem do original.

#cola do professor:
#"order" responde a pergunta: "no vetor original, qual a posiçao do 1º elemento após a ordenaçao (sort)?"
#Já a funaçao "rank" mostra qual a posiçao dos elementos no vetor original... tipo o "31 é o 3º menor".

#exercicios
#1)acesse o dataset murders e, com o operador $, acesse o tamanho da populaçao dos estados e armazene na variavel pop.
#2)ordene pop
#3)imprimi o menor valor de pop usando []

#Respostas
pop <-murders$population

pop <-sort(pop)
#index <- order(pop)
#pop[index]
#order(pop)
#pop
pop[1]

###AULA 08 - 20/09
#O conteudo a partir da aula de hoje vai ajudar muito no trabalho da biblioteca de compostos quimicos

#ordenação de dados é importante

#teremos uma aula especifica de uma atividade feita no kahoot e vai valer nota.

#o sort ordena na versao final

#Exercicio
#acesse o dataset 
pop <-murders$population
ord <-order(population)

ord[1]

murders$population[order(pop)[1]]

#exercicio 2
#acesse o dataset murders e, com o operador $, acesse o tamano da populaçao dos estados e armazene na variavel pop
#use o comando order para encontrar o vetor indices que ordena pop e armazene no objeto ord
# encontre o indice da numero com o menor tamano da populaçao.

#exercivio
#encontre o indice do menor da variavel total
which.min(murders$total)

#e qual o index do menor valor da variavel population
which.min(murders$population)

#exercicio 
#crie uma variavel i para ser o indice do menor estado
i <-ord(total)
#crie uma variavel chamada states para armazenar somente os estados
states <- murders$state
#crie o indice que voce acabou de criar para encontrar o estado com a menor populaçao

#exercicios
#armazene as seguintes temperaturas em um objeto chamado temp. 
##35, 88, 42, 84, 81, 30
temp <- c(30, 88, 42, 84, 81, 30)

#armazene os seguintes nomes de cidades em city
##beijing, Lagos, Paris, Rio de Janeiro, San Juan, Toronto
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

#crie um dataframe cite_temps com os nomes das cidades e as temperaturas
city_temps <- data.frame(name = city, temperature = temp)

#crie uma variavel states com os nomes dos estados do dataframe murders
states <- (murders$state)

#crie a variavel ranks para determinar os tamanhos das populaçoes ranqueadas
ranks <-rank(murders$population)

#crie um dataframe my_df com o nome de cada estado e seu ranking
my_df <-data.frame(states = states, ranks = ranks)


#AULA 09- 27/09/22
#Começamos com o exercicio da aula anterior.

#exercicio
#crie uma variavel states com os nomes dos estados do dataframe murders
states <- (murders$state)

#crie a variavel ranks para determinar os tamanhos das populaçoes ranqueadas
ranks <-rank(murders$population)

#crie a variavel ind para armazenar os indices necessarios para ordenar os valores da populaçao
ind <-order(murders$population)

#crie um dataframe my_df com o nome dos estados e o seu rank ordenado do menos populoso ate o mais populoso (nao é para ordenar nada, so guardar em qual rank ele esta).
my_df <-data.frame(states = states[ind], ranks = ranks[ind])
print(my_df)

#Prática Conjunta
#Usando um novo conjunto de dados na_example
library(dslabs)

data(na_example) #examinado esses dados

#examinando esses dados
str(na_example)

#encontrando a media deste conjunto
mean(na_example)

#use a funçao is.na para criar um indice logico que mostrara quais valores sao NA
ind <- is.na(na_example)
print(ind)

#determinar quantos valores temos como NA (resposta 145)
sum(ind)

#Prática conjunta 2
x <- c(1, 2, 3)

ind <- c(FALSE, TRUE, FALSE)

x[!ind] #a "!" significa diferente. aparece os FALSE
x[ind] #aparece so o TRUE

#pratica conjunta 3
library(dslabs)
data(na_example)

ind<-is.na(na_example)

#media. vai dar NA, pois não é número. 
mean(na_example)

mean(na_example[!ind]) #para calcular media quando tem NA na lista

#Retomando o murders
#Qual estado possui a maior populaçao
murders$state[which.max(murders$population)]

murders$state[which.min(murders$population)] #menor populaçao

#qual o maior valor de populaçao entre os estados
max(murders$population)

#o justo seria comparar a quantidade de assassinatos por armas de fogo como:
#taxa de assassinato por estado
#compensa fazer valores percapita

##Propriedades importantes do R
#supondo que temos as seguintes alturas
alturas <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)

#porem, descobri que as alturas estão em polegadas...
#para converter polegadas para centimetros, tendo que multiplicas cada uma das alturas por 2.54
alturas * 2.54

#ao calcular a media, vejo que a media é 69 polegadas... qual a distancia de cada um ate a media?
alturas - 69

#vetores
#no caso de vetores, de mesmo tamanho
#aplicar diversas operações

##Retornando o murders
#como calcular o número de assassinatos per capita?
murders_rate <- murders$total / murders$population * 100000 #a multiplicar por 100000 serve para fazer a escala.
print(murders_rate)

#agora sim, qual o estado mais perigoso?
murders$state[order(murders_rate, decreasing = TRUE)]
#primeiro pega o nome do estado. colchete pega o indice de um valor, ordenado por uma taxa (murder_rate), depois ordena ela em ordem decrescente

#qual a posição da california? 14

#exercicio
#crie um vetor chamado city para armazenar as seguintes cidades:
city <- c("Pequim", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

#crie um vetor temp para armazenar as temperaturas
temp <- c(35, 88, 42, 84, 81, 30)

#converta as temperaturas para celsius, sobrescrevendo os valores originais do valor temp
c = 5/9*(temp-32)

#crie um data frame chamado city_temps para armazenar os dados anteriores
city_temps <-data.frame(names = city, temp = c)
print(city_temps)

#exercicio
#defina um objeto x com os números de 1 ate 100
#realizae a soma da seguinte sequencia: 1 + 1/2^2 + 1/3^2+...+1/100^2
x <- seq(1,100)
print(x)
sum(1/x^2)

#exercicio
#retormando os calculos com base de dados murders
#carregue os dados de murders
library(dslabs)
data(murders)
#calcule a taxa de assassinatos por armas de fogo para cada estado e para cada 100.000 habitantes e armazene em murders_rate
murders_rate <- murders$total / murders$population * 100000
print(murders_rate)

#calcule a media desses valores
murders_rate <- sum(murders$total) / sum(murders$population) * 100000
print(murders_rate)

#errado?
#total<- sum(murders$total)
#pop <-sum(murders$population)
#mean(total/pop)

#KAHOOT (PROVA)
#1
x <-c(2, 43, 27, 96, 18)

#2, 3, 4, 5
order(x)
sort(x)
rank(x)

#6
min(x)

#7
which.min(x)

#8
max(x)

#9
which.max(x) #indice de max

#10
name <-c("M", "A", "N", "O")

#11
dist <-c(0.8, 3.1, 2.8, 4.0)

#12
tempo <-c(10, 30, 40, 50)

#13
tempo/60

#14
0.8/0.166666

#15
3.1/0.5000000

2.8/0.6666667

4.0/0.8333333

#AULA 10 - 04/10/22 - ÍNDICES, DATA WRANGLING E GRÁFICOS
#comando pipe no R é %>%

#o que mais podemos fazer com indices em R?
#podemos, por exemplo, indexar um vetor a partir de outro vetor
murder_rate <- murders$total/murders$population*100000
print(murder_rate)

#vamos usar operadores logicos para indexar vetores
#qual estado dos EUA tem taxa de homicidios menor do que a Italia?
index <- murders_rate < 0.71
#qual é o resultado?

#como saber quais estados sao menores que 0.71?
murders$state[index]

#como saber quantos são?
sum(index)

##Operadores lógicos
#operador &
TRUE & TRUE
TRUE & FALSE
FALSE & FALSE
# A logica do operador & é que só é verdadeiro se tudo for TRUE

##Combinação de 2 vetores
#suponha que queremos algum estado que seja na regiao OESTE dos EUA e tenha murder_rate menor ou igual a 1
west <- murders$region == "West"
print(west)

safe <- murder_rate <= 1
print(safe)

#junta dois vetores com a regra de TRUE & FALSE (operador &)
index <- safe & west
print(index)

#os estados menor ou igual a 1
murders$state[index]

##Funções Logicas novas
#which
#quais indices do vetor são TRUE
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)
index <- which(murders$state == "Massachusetts") #é dois iguais pois esta perguntando. no slide ta como pegadinha
print(index)

#match
#compara um vetor a outro (compara dois vetores)
index <- match(c("New York", "Florida", "Texas"), murders$state)
murders$state[index]

#%in%
#se cada um dos elementos está no outro vetor
x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x
x %in% y

#os seguintes nomes sao nomes de estados dos EUA?
c("Boston", "Dakota", "Washington") %in% murders$state
# os dois primeiros não são estados dos EUA (FALSE) sendo apenas Washington (TRUE)

#exercicio
#calcule a taxa de assassinatos para cada 100.000 habitantes para cada estado e armazene-a em um objeto chamado murder_rate
murders_rate <- murders$total/murders$population*100000

#Em seguida, use os operadores logicos para criar um vetor logico, chame-o de low, que nos diga quais entradas
# de murder_rate sao menores que 1 e quais nao sao (utilizando somente 1 linha de codigo para esse passo).
low <- murders_rate < 1
print(low)

#use os resultados do exercicio anterior e a funçao which para determinar os indices de murder_rate associados a valores menores que 1
which(low)

#use os resultados do exercicio anterior para mostrar os nomes dos estados com taxas de homicidio inferiores a 1
#use os colchetes para recuperar os nomes dos estados
murders$state[low]

#agora, usando os codigos dos exercicios anteriores vamos determinar quais estados do Nordeste(Norheast)
#tem taxa de homicidios menor do que 1 ### RESPOSTA: MAINE, NEW HAMPSHIRE E VERMONT
murders_rate <- murders$total/murders$population*100000

low <- murders_rate < 1
print(low)

ind <- low & murders$region=="Northeast"

murders$state[ind]

#Anteriormente calculamos a taxa de homicidios de cada estado e a media entre eles. Diante disso, quantos estados estão abaixo da media?
media <- mean(murders_rate)

sum (murders_rate < mean(murders_rate))

#exercicio função match
#agora vamos usar a funçao match para identificar os estados com abreviaturas AK, MI, e IA
#a) criar um vetor de abreviaçoes chamadas abbs
abbs <-c("AK", "MI", "IA")

#b) comparar a lista de abreviaçoes que queremos descobrir com a abreviaçao da database murders
ind <- match(abbs, murders$abb)

#c) usar colchetes para extarir os nomes dos estados.
murders$state[ind]

#agora vamos usar a função %in% para verificar quais das abreviaçoes a seguir sao abreviaçoes validas de estados:
##MA, ME, MI, MO, MU
#a)criar um vetor de abreviaçao abbs
abbs <-c("MA", "ME", "MI", "MO", "MU")

#b)comparar a lista de abreviaçoes que queremos descobrir com a abreviaçao da database murders
abbs%in%murders$abb

#no exercicio anterior calculamos o indice com abbs%in%murders$abb.
# com base nisso, e usando a função which e o operador !, obtenha o indice das entradas de abbs que nao sao abreviaturas 
abbs <-c("MA", "ME", "MI", "MO", "MU")
ind <- which(!abbs%in%murders$abb)
abbs[ind]

#ate agora geramos sub conjuntos em...
#PACOTE dplyr. É uma biblioteca para trabalhar com data frame
library(dplyr)
install.packages("dplyr")
library(dplyr)

###AULA 11 - 11/10/22
#indices, data wrangling e gráficos

#continuação da aula passada.
#utilizamos filtros para criar novos sub-conjuntos
#vamos utilizar dplyr ("diplaier")


##Adicionando colunas
#função mutate. vai realizar uma mudança 
library(dslabs)
data("murders")

murders <-mutate(murders, rate = total/population * 100000)
#vai adicionar a coluna rate ao que ja existe. trabalha com as variaveis que ja existem.

head(murders)
#vai aparecer os 6 primeiros 

#repare que as variaveis total e population ja foram usadas sem o prefixo murders$, por causa da funçao mutate.

#filtrando linhas
#funçao filter
filter(murders, rate <= 0.71)
#somente 5 estados tem abaixo de 0.71.

#selecionando colunas
#funçao select
#a funçao select vai ter uma tabela com colunas. essa funçao vai pegar a tabela e selecionar as colunas que eu selecionar e criar uma nova tabela.
#vai manter o tipo. vai criar um novo dataframe.
#funçao select vai selecionar quais colunas eu quero apresentar.
new_table <- select(murders, state, region, rate)
#nesse codigo vai criar uma variavel e ocupar memoria.

filter(new_table, rate <= 0.71)
#a funçao filter vai selecionar quais linhas eu quero apresentar.

murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
#pega os dados, seleciona só as colunas q vai usar e depois verifica os que tem rate menor ou igual a 0,71
#com o uso do pip %>%.
#essa linha de comando vai fazer o mesmo dos select e do filter em uma linha. vai juntar os dois (select e filter)
# vai pegar todos os dados e excluir o que nao vai ser utilizado. murders %>% vai excluir metade das colunas (select) %>% vai filtrar as linhas com rate até 0.71 (filter).
# o pip vai pegar os dados da esquerda e colocar na direita.
# com o pip nao vai ocupar memoria, pois nao cria variavel.

#selecionando colunas e filtrando linhas
#funçao pip %>%
#pegamos o dado, selecionamos e depois filtramos.
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
#OBS: MESMA EXPLICAÇÃO DAS LINHAS ACIMA.

##Criando data frames
grades <- data.frame(names = c("Jao", "Jes", "Jo", "Ju"), 
                     exam_1 = c(95, 80, 90, 85),
                     exam_2 = c(90, 85, 85, 90))
#quais os tipos de cada um dos vetores desse data frame? (grades, exam_)

#como colocar como número inteiro. tem que colocar o L
grades <- data.frame(names = c("Jao", "Jes", "Jo", "Ju"), 
                     exam_1 = c(95L, 80L, 90L, 85L),
                     exam_2 = c(90L, 85L, 85L, 90L))

#EXERCICIOS
#1) carregue os pacotes dplyer e dslabs (para o dataset murders)
#2) carregar a base de dados murders
#3) adicionar uma nova coluna em murders chamada rate, que tenha a quantidade de assassinatos por armas de fogo a cada 100 mil habitantes
# Já respondemos essas questoes no inicio da aula.

#EXERCICIOS 
#1) Crie um vetor chamado x com os seguintes elementos: 88, 100, 83, 92, 94
x <- c(88, 100, 83, 92, 94)

#2) executar a funçao rank em x. como o resultado apareceu? 2 5 1 3 4
rank(x)

#3) agora execute a funçao rank em -x. como ficou o resultado agora? 4 1 5 3 2
rank(-x)

print(x)
print(-x)

#exercicio
#crie um objeto chamado rate com a taxa de assassinatos para cada 100 mil habitantes
rate <- c(murders$total/murders$population * 100000)

#use a funçao mutate para adicionar uma classificação de coluna (rank) contendo a classificaçao, da maior para a menor taxa de homicidios.
murders <- mutate(murders, rank = rank(-rate))

#use a funçao select para mostrar somente as colunas state e abb do objeto murders
select(murders, state, abb)

#use a funçao filter para mostrar os 5 principais estados com as maiores taxas de homicidio
#depois de adicionarmos a taxa e a classificação de homicidios, nao altere o conjunto de dados de homicidios, apenas mostre o resultado
#observe que voce pode filtrar com base na coluna de classificaçao
filter(murders, rank <= 5)

#antes do exercicio, saiba que podemos usar o != para remover linhas de um filtro
#1) crie um novo data frame chamado no_south que armazenará todos os estados que nao estao na regiao sul
no_south <- filter(murders, region != "South")

#2) quantos estados estao nessa categoria? use nrow() para isso
nrow(no_south)

#crie um novo data frame chamado murders_nw com apenas os dados Nordeste (Northeast) e o do Oeste(West)
murders_nw <- filter(murders, region %in% c("Northeast", "West"))
#OBS: O filter ja cria o data frame.
#Como sao duas variaveis é necessario usar o "c".

#quantos estados estao nesta categoria? 22
nrow(murders_nw)

#suponha que voce queira morar no Nordeste (Northeast) ou Oest (West) e queira um local que a taxa de homicidios seja menor que 1.
#queremos ver os dados dos estados que atendem a essas opçoes.
#observe que voce pode usar operadores logicos com filter
filter(murders_nw, rate < 1)

#1)adicione uma coluna de taxa de homicidio (rate) e uma coluna de classificaçao rank como feito antes
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

#2) crie uma tabela, chame-a de my_states, que satisfaça as duas condiçoes:
#Esteja no NOrdeste ou no Oeste e;
#A taxa de homicidio seja menor que 1
my_state <- filter(murders, region %in% c("Northwest", "wEST") & rate <1)

#3) use select para mostrar apenas o nome dos estados, a taxa e a classificação
select(my_state, state, rate, rank)

#agora o exercicio...
#1) repita o exercicio anterior, mas agora em vez de criar um novo objeto, mostre o resultado e inclua apenas as colunas state, rate e rank nessa ordem
#use um pipe %>% para fazer isso em apenas uma linha
#RESPOSTA EM UMA LINHA
mutate(murders, rate = total/population * 100000, rank = rank(-rate)) %>% select(state, rate, rank)

#Exercicio do Último slide antes dos Graficos. Olhar os Slides
data(murders)
rank(murders)

#NÃO TERMINEI DE FAZER.
#1)
my_state <- murders %>% mutate(murders, rate = total/population * 100000, rank = rank(-rate)) %>% filter(murders, rate < 1) %>% select(state, region, rank)

my_state <- murders %>% mutate(murders, rate = total/population * 100000, rank = rank(-rate)) %>% filter(murders, region %in% c("Northwest", "West") & rate <1) %>% select(state, region, rank)


#2) a linha deve ser algo como
#my_state <- murders %>% mutate algo %>% filter algo %>% select algo

#3) as colunas no quadro de dados final devem estar na ordem: state, rate e rank

###AULA 12 - 18/10/22
##Gráficos (SLIDE 35/37)
#A parte de gráficos é muito facil e util no R.
#O R é mais poderoso que O Excel. O D3 é mais podereso, mas é mais complexo que o R.

#Visualização do do murders (SLIDE 38/39)
#é importante colocar os dados em proporção.
#transformar od dados para uma melhor visualizaçao.
#o X vai ser um dos eixos do grafico.
x <- murders$population/10^6

#escolha outro eico para o grafico.
#o Y será o outro eixo
y <- murders$total

#plotar o grafico
plot(x,y)
#plota um grafico de disperçao.
# x e y estao relacionados, pois quando um aumenta ou diminui eles vão diretamente aumentar ou diminuir.
#o outlier sera aquele que está longe da reta. 

#SLIDE 40
#Histograma. sera a quantidade de populaçao pela frequencia de assassinatos.
# a diferença do histograma para o grafico anterior é como os dados estão distribuidos. Para a maior quantidade de dados o histograma é interessante para vermos a frequencia dos dados.
#Mas o ideal é utilizar os dois gráficos para um maior entendimento.
murders <- mutate(murders, rate = total/population * 100000)
hist(murders$rate)

#a normalizaçao de dados é transformar o dado em uma linha normal (é o formato de sino no grafico)
#qualquer coisa tende a seguir a linha normal.
#a funçao hist só tem um eixo, pois só leva em consideraçao um dado/eixo.

#SLIDE 41/42 - BOXPLOT
#esse grafico é muito importante, pois ele mostra muita coisa.
#Grande visualizaçao de dados.
#abaixo é um boxplot de assassinato por regiao.
boxplot(rate~region, data = murders)
# o "~" vai ter a funçao de aglutinar o rate e a regiao.
#a regiao mais uniforme é a Northeast e a segunda é a West.
#a linha preta é a média do boxplot. 
#pedir para o professor de estatistica explicar/interpretar esse boxplot.
#as barras são dados reais.
# a regiao mais perigosa é a South,pois ela vai puxar a média lá pra cima.
boxplot(rate~abb, data = murders)
#é bom fazer o boxplot com dados aglutinados.

#SLIDE 43 - Exercicio
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

#SLIDE 44 - Exercicio
#escala logaritmica
log10_pop_in_mil <- log10(population_in_millions)
#ou log10_pop_in_mil <- log10(murders$population/10^6). Nesse caso ocupa menos memoria.

log10_total_gun_murders <- log10(total_gun_murders)
#ou log10_total_gun_murders <- log10(murders$total). Nesse caso ocupa menos memoria.

plot(log10_pop_in_mil, log10_total_gun_murders)
#ao se fazer o log os dados ficam mais distribuidos. Ajuda a aproximar os dados distantes e separa os que estao muito juntos.


#SLIDE 45 - Exercicio
population_in_millions <- murders$population/10^6

hist(population_in_millions)
#com esse histograma é possivel perceber que a maioria dos Estados tem a populaçao abaixo de 10 milhoes.

#SLIDE 46/47 - Exercicio
#Boxplot
boxplot(population~region, data = murders)

#SLIDE 48 - SUMARIZAÇAO DE DADOS (Sumarizando (Resumindo) dados)
#é essencial para trabalhar com dados grandes, por exemplo, mediana, media, desvio padrao
#mediana é o valor do meio
#a media pega todos os valores somados e depois dividi
#o desvio padrao é o valor que se distancia da media
#moda é o valor que mais se repete.

#funçao summarizare
# essa funçao faz muita coisa

#calculando o minimo, media e maximo do rate dos estados da regiao Oeste
murders <- mutate(murders, rate = total/population * 10^5)

s <- murders %>% filter(region == "West") %>% summarize(minimum = min(rate), median = median(rate), maximum = max(rate))

#SLIDE 49 (OLHAR O SLIDE E COMPLETAR AS MINHAS ANOTAÇOES)
#como armazenamos o resumo em s, então acessamos:
s$median
s$maximum

#como calcular a media da taxa de assassinatos
us_murders_rate <- murders %>% summarize(rate = sum(total)/sum(population) * 10^5)

###AULA 13 - 01/11/22 
#SLIDE 50 - Função Quantile
#a função quantile ja retorna os valores min, median e max em 1 linha de codigo
quantile(x, c(0, 0.5, 1))
#retornando o minimo, a mediana e o maximo do vetor x

murders %>%
  filter(region == "West") %>%
  summarize(range = quantile(rate, c(0, 0.5, 1)))
#retorna um vetor em 3 linhas

my_quantile <- function(x){
  r <- quantile(x, c(0, 0.5, 1))
  data.frame(minimum = r[1], median = r[2], maximum = r[3])
}
murders %>%
  filter(region == "West") %>%
  summarize(my_quantile(rate))
#retorna como um data frame, porque usamos funções


##SLIDE 51 - Função PULL
#a função pull() pode ser usada para acessar valores armazenados em dados ao usar os pipes %>%
#quando um objeto de dados e canalizado para esse objeto e suas colunas podem ser acessadas usando a função pull()

#retorna um data frame
us_murders_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)

#retorna um numero
us_murders_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 10^5)
pull(rate)

### AULA 14 - 08/11/22
##GRAFICO

#logical vectors are either TRUE e FALSE
z <- 3 == 2
z
class(z)

#Já fizemos isso anteriormente
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

hist(population_in_millions)

#novidade(?).  a funçao mutate adiciona coluna 
murders <- mutate(murders, rate = total / population_in_millions)

hist(murders$rate)

#boxplot
boxplot(rate~region, data = murders)
#esse boxplot mostra que o south é a regiao mais perigosa e é a que tem dois outliners
#a regiao mais segura é a West, pois a chance é de 50% de entrar na regiao mais segura (bigode)
#a posiçao da mediana (50%) é importante.

#NOVIDADE
plot(log(population_in_millions), log(total_gun_murders))
#outlier está mais distante.

#Função Filter
#a funçao filter seleciona a linha baseada em criterio definido
#pega a quantidade de linhas e filtra dentro do que quer
murders %>% filter(region == "West") %>% #esse comando mostra os estados da regiao west
  summarize(range = quantile(rate, c(0, 0.5, 1)))
  
murders <- mutate(murders, rate = murders$total/murders$population * 10^6)

min(murders$rate) #o minimo de todos

#minimo só da regiao West. RESPOSTA aproximadamente 5.15
min(filter(murders, region == "West")$rate)

min(murders$rate[c(murders$region == "West")]) #Jeito que o professor fez

#Função Pull IMPORTANTE

u_murders_rate1 <- murders %>% 
  summarize(rate = sum(total)/sum(population) * 10^5) %>% 
  pull(rate)

u_murders_rate2 <- murders %>% 
  summarize(rate = sum(total)/sum(population) * 10^5) %>% 
  pull(rate)

class(u_murders_rate2)

#SLIDE  - Pacote data.table
#esse é um novo pacote que precisa ser instalado e carregado
install.packages("data.table")
library(data.table)

#antes de começar a usar, é necessario converter os dados para objetos data.table
murders <- setDT(murders)

#é possivel usar a funçao select (dplyr)
select(murders, state, region)

#outras 2 formas, sem usar a funçao select
murders[, c("state", "region")] |> head()
murders[, .(state, region)] |> head()

#SLIDE - Ordenando data frame com arrange()
#qual o resultado?
murders %>% arrange(population) %>% head()

#e agora?
murders %>% arrange(rate) %>% head()

#e esse?
murders %>% arrange(desc(rate)) %>% head()

#mais 1
murders %>% arrange(region, rate) %>% head()

#olha que legal esse:
murders %>% top_n(10, rate) #tem algo errado?

#o ultimo:
murders %>% arrange(desc(rate)) %>% top_n(10)

#### AULA 14 (REPOSIÇÃO) - 11/11/22
##acessando dados com um ponto


##Função group_by
#uma funçao mais uteis do R para analise de dados
#Agrupando por regiao
murders %>% group_by(region)
#vai separar os dados. Os 10 primeiros Estados e a regiao.
#essa funçao é interessante para agrupar os dados e os tipos.
#agrupo por tipo

#sumarizando dados apos agrupamento
murders %>%
  group_by(region) %>%
  summarize(median(rate))
#agrupa por regiao e depois tira a media de cada uma das regioes por rate.
# a mediana do northeast é 18 ou 1,8 (depende da escala)

##ordenando data frame com arrange() IMPORTANTE PARA O TRABALHO
#1)qual o resultado?
murders %>% arrange(population) %>% head()
#separou as 6 primeiras (head) populaçoes para da menor para o maior.

#2) e agora?
murders %>% arrange(rate) %>% head()
#vai fazer a mesma coisa, mas com o rate. 
#se trocar o head por tail mostra os ultimos.
#nessa linha mostra que vermont será o melhor lugar para morar, pois é mais seguro.

#3) e esse?
murders %>% arrange(desc(rate)) %>% head()
#coloca na ordem decrescente

#4)mais um
murders %>% arrange(region, rate) %>% head()
#os menores rate por regiao.

#5)olha que legal esse:
murders %>% top_n(10, rate) #tem algo errado?
#nao tem nada errao. chama os 10 primeiros aleatorio (nao esta na ordem)

#6)o ultimo:
murders %>% arrange(desc(rate)) %>% top_n(10)
#ordena (do menor para o maior) com rate e depois pega os 10 primeiros e apresenta ordenados.

##Pacote data.table
#SLIDE  - Pacote data.table
#esse é um novo pacote que precisa ser instalado e carregado
install.packages("data.table")
library(data.table)

#antes de começar a usar, é necessario converter os dados para objetos data.table
murders <- setDT(murders)
#vai transformar esses dados para data.table.

#é possivel usar a funçao select (dplyr)
select(murders, state, region)
#a funçao select ta no pacote dplyr
#vai aparecer todos os Estados e a regiao.

#outras 2 formas, sem usar a funçao select
murders[, c("state", "region")] |> head()
#filta por coluna. A virgula no inicio é para nao filtrar a linha (vai filtrar por todas as linhas), 
#o c(--) vai filtrar as colunas.
#Usa o "|" para filtrar os primeiros.
#não peguei essa explicação direito.

murders[, .(state, region)] |> head()
#vai fazer a mesma coisa, mas ao inves do "c" vai colocar o "." que vai pegar todos.

#adicionando uma coluna mutate (dplyr)
murders <- mutate(murders, rate = total / population * 10^5)
#esse comando só funciona para data frame

#adicionando usando data.table
murders[, rate := total/population * 100000]

murders[, ":="(rate = total / population * 100000, rank = rank(population))]

#o simbolo := é utilizado para atualização por referencia, sem criar uma nova variavel (como se fosse ponteiro)

# SLIDE - pacote data.table
#utilização de memoria no R
#ele é feito para economizar memoria 
#quando usamos o data.table, ele cria somente uma referencia ou alias para algo que ja existe
x <- data.table(a = 1)
y <- x
#se alterar x,y sera alterado
#só há 1 espaço de memoria utilizado ATÉ alterar y.
#olhar o meu caderno

#se quiser criar uma nova variavel diretamente, tenho que usar o copy()
x <- data.table(a = 1)
y <- copy(x)
# nesse caso se mudar o A vai mudar o X tambem. Ele nao é como o ponteiro do codigo anterior que era relaciona.
#Olhar o meu caderno.

#SLIDE - 

#SLIDE 63 - KAHOOT - Indices, data wrangling e gráficos
#1
library(dslabs)
data("heights")
options(digits = 3)

#2
averate_height <- mean(heights$height)
68.5 
#3
ind <- 
ind <- heights < 68.5
532


#4 usa dois filter
#mulher acima da media <- filter(, rate < averate_height)
filter(heights$sex, rate < averate_height)
31

#5
mean(heights$sex == "Female")

#6 altura minima
min(heights$height)

#7
match(height, heights$height)
#resposta 50

#8
min(heights$male)

#9 altura maxima 82,7
max(heights$height)

#10
x <- 50:83

print(x)

#11
x <- seq(50, 1, length.out = 83)
print(x)

#12 - 163

#13 media de todas as alturas
averate_height * 2.54

#14
data(olive)
head(olive)

#15
palmitic_acid <- olive$palmitic

palmitoleic_acid <- olive$palmitoleic

plot(palmitic_acid, palmitoleic_acid)

#16
hist(palmitic_acid)
hist(palmitoleic_acid)

#17
boxplot(palmitic ~ region, data = olive)

### AULA 15 - 22/11
## Mais gráficos com ggplot2
#explorando o tidyverse
install.packages("tidyverse")
library(tidyverse)

data("mpg")
force(mpg)
View(mpg)

#essa base de dados trabalha com a economia dos carros.
#dataframe mpg
#coleçao de variaveis 


#variaveis de mpg

#displ - variavel tqamanho do motor
#hwy - consumo por galão

#fazendo gráfico
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy))
# o sinal de + deve ta na mesma linha do resto do código
# o grafico mostra uma relaçao negativa entre o tamanho do motor e a eficiencia

#observando o grafico os outliers são aqueles fora da reta. a reta em questao é fazendo entre os dados no grafico

#para criar um grafico ggplot 
ggplot(data=mpg)
#escrevendo apenas esse comando nao aparece nada, pois o ggplot é a area do grafico. só com esse comando falta progetar os dados
#o data=mpg serao os dados
#o geom_point
#o mapping é como quer coordenar esses pontos
#aes é como quer que os pontos sejam mostrados na tela.
#no grafico coloca x como potencia e y como consumo

#primeiro coloca o dataset
#adicionamos uma ou mais camadas
#ggplot()
#geom_point()

#quantas linhas tem em mpg 234 variaveis e 11 colunas

#a variavel drv é a tração do carro

#fazer um grafico de dispersao de hwy por cyl (cilindros do carro)
ggplot(data=mpg) + geom_point(mapping = aes(x = cyl, y = hwy))
#pelo grafico carros com mais cilindros gastam mais 

#o que acontece se fizer um grafico de dispersao de class versus drv
ggplot(data=mpg) + geom_point(mapping = aes(x = class, y = drv))

#quais sao as variaveis categoricas?
#o ano pode ser categorico dependendo de quantos anos quer.
#tração é categorico
# classe tambem é categorico, pois tem tipos.

#para ver a classe

#é possivel alterar o tamanho da classe, forma, tamanho, cor alfa(transparencia)
#chamamos esse terceiro parametro de estetica (aesthetics)

ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

#com as cores é possivel distinguir melhor o que é cada um no grafico.
#com esse grafico de dispersao foi possivel aferir alguns dados, por exemplo, os carros de 2 lugares sao potentes e devem ter um consumo mais alto.
# as pickup estao entre 2.5 até o 6.

#altera a forma dos dados
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))
# vai dar erro pois so tem 6 opçoes e sao 7 tipos de variaveis

#vai alterar o tamanho dos pontos para o tamanho 3
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class), size = 3)

#o alpha é o nivel de transparencia. não é muito recomendado para essa base
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#Vai aumentar o tamanho dos pontos de acordo com a variavel. não é recomendado para essa base
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

#colocar todos os pontos/dados em uma unica cor. pintar tudo de uma cor
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

#SLIDE - criando subgraficos ou facetas com ggplot2
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow = 2)

#criamos diversos graficos graficos, separados em duas linhas, com dados agrupados por classe
# a primeira parte determina uma area. o + siginifica continua
# geom point cria os pontos a partir de uma regra.
# as facetas e o wrap é a separação dos graficos. o ~ é importante para agrupar. o nrow coloca os numeros de linhas que quer

#analisando o grafico: observando os carros que so cabem duas pessoas fica entre 20,5 até 30,5.
#sao cinco representantes dessa categoria de 2 lugares.
#os compactos sao os mais economicos, pois estao na parte de cima do grafico. as pickup nao sao economicas.
#os carros medios estao em quase todas.

#criando facetas
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)

##exercicios
#o que acontece se criar facetas

#2) resposta: os graficos mostra que nao tem carros de 5 cilindros, de 5 cilintros com traçao 4x4, e nao tem carros com tração traseira de 4 e 5 cilindros.

#3) se utiliza facetas ao inves de cores, pois com cores pode sobrepor e com facetas é mais facil de ver todos. a desvantagem é que cria muitos graficos. se fosse muitos dados...

#4) os parametros nrow (numeros de linhas) e o ncol(numeros de colunas)

#5) o facet_grid() nao tem o nrow e o ncol, pois criou mais um x e mais um y (x na parte de cima e y na outra lateral/direita)
#por isso criou 12 graficos distintos

###AULA 16 - 29/11
##Objetos geometricos com ggplot2
#Conseguem ver o que os seguintes graficos tem os mesmos dados? (SLIDES)
#os graficos serao com os mesmos dados, mas representados de forma diferente.
#o terceiro é por drv.
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
#faz um grafico de dispersao

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
#esse grafico utiliza o drv para formar linhas. linhas distintas para drv distintas

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy))
#o smooth é uma linha de tendencia 

#linha de tendencia e pontos
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + geom_smooth(mapping = aes(x = displ, y = hwy))

#NOVO GRAFICO
#o mapping diz que todos os dados sao esses e vai gerar para o geom_point e smooth
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = class)) + geom_smooth()
#o segundo a cor vai ser baseada na classe

##usando subconjuntos de dados
#é possivel especificar um conjunto de dados diferente para cada camada
#vai imprimir os pontos e depois a linha. vai ser duas camadas. com cor vai ter varias camadas se sobrepondo

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = class)) + geom_smooth(data = filter(mpg, class == "compact"))
#vai gerar linha de tendencia nos carros compactos

###Recrie o codigo R necessario para gerar os seguintes graficos
##Grafico 1 (QUASE)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + geom_smooth(mapping = aes(x = displ, y = hwy))

#correto
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point() + geom_smooth(se = FALSE)

##Grafico 2 (QUASE - tem que tirar o sombreado)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + geom_smooth(mapping = aes(x = displ, y = hwy, line = drv))

#correto
ggplot(mpg, aes(x = displ, y = hwy)) + geom_smooth(mapping = aes(group = drv), se = FALSE) + geom_point() 

##Grafico 3
ggplot(mpg, aes(x = displ, y = hwy)) + geom_smooth(mapping = aes(color = drv), se = FALSE) + geom_point(mapping = aes(color = drv)) 

#ou
ggplot(mpg, aes(x = displ, y = hwy, color = drv)) + geom_smooth(se = FALSE) + geom_point() 


##Grafico 4
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = drv)) + geom_smooth(se = FALSE)

#ou
ggplot(mpg, aes(x = displ, y = hwy)) + geom_point(aes(colour = drv)) + geom_smooth(se = FALSE)

##Grafico 5 (erro porque nao encontrou o drv)
ggplot(mpg, aes(x = displ, y = hwy)) + geom_point(aes(colour = drv)) + geom_smooth((linetype = drv), se = FALSE)

##Grafico 6 (coloca um grafico em cima do outro)
ggplot(mpg, aes(x = displ, y = hwy)) + geom_point(size = 4, color = "White") + geom_point(aes(color = drv)) 


