algoritmo "Quest�o 2"
// Fun��o : Determinar o n�mero de elementos pares de um vetor com a diferen�a igual a x
// Autor : Werick Gabriel Marinho Veras
// Data : 05/03/2022
// Se��o de Declara��es
var
   vet: vetor [1..1000] de inteiro
   x,qtd,i,j,contpares: inteiro
inicio
// Se��o de Comandos
// Solicita e l� a quantidade de n�meros a se digitar
   Escreval("Informe quantos n�meros voc� deseja digitar:")
   Leia(qtd)
   Limpatela
// Solicita e l� o valor da vari�vel de diferen�a
   Escreval("Informe o valor de x")
   Leia(x)
   Limpatela
// Solicita e l� a quantidade de n�meros informadas pelo usuario e armazenada na variavel qtd
   Escreval("Digite os", qtd, " n�meros")
   Para i <- 1 ate qtd faca
        leia(vet[i])
   FimPara
// Compara os elementos pares do vetor que tem diferen�a igual a x e incrementa +1 na vari�vel de contagem dos pares(contpares)
   Para i <- 1 ate qtd faca
        Para j <- i+1 ate qtd faca
             Se (vet[i]-vet[j]=x) ou (vet[j]-vet[i]=x) entao
                contpares <- contpares + 1
             FimSe
        FimPara
   FimPara
// Imprime a quantidade de pares com diferen�a igual a x na tela
   Escreva("A quantidade de elementos pares do vetor que tem uma diferen�a igual a",x," �:", contpares)
fimalgoritmo
