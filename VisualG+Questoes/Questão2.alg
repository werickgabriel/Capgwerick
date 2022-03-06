algoritmo "Questão 2"
// Função : Determinar o número de elementos pares de um vetor com a diferença igual a x
// Autor : Werick Gabriel Marinho Veras
// Data : 05/03/2022
// Seção de Declarações
var
   vet: vetor [1..1000] de inteiro
   x,qtd,i,j,contpares: inteiro
inicio
// Seção de Comandos
// Solicita e lê a quantidade de números a se digitar
   Escreval("Informe quantos números você deseja digitar:")
   Leia(qtd)
   Limpatela
// Solicita e lê o valor da variável de diferença
   Escreval("Informe o valor de x")
   Leia(x)
   Limpatela
// Solicita e lê a quantidade de números informadas pelo usuario e armazenada na variavel qtd
   Escreval("Digite os", qtd, " números")
   Para i <- 1 ate qtd faca
        leia(vet[i])
   FimPara
// Compara os elementos pares do vetor que tem diferença igual a x e incrementa +1 na variável de contagem dos pares(contpares)
   Para i <- 1 ate qtd faca
        Para j <- i+1 ate qtd faca
             Se (vet[i]-vet[j]=x) ou (vet[j]-vet[i]=x) entao
                contpares <- contpares + 1
             FimSe
        FimPara
   FimPara
// Imprime a quantidade de pares com diferença igual a x na tela
   Escreva("A quantidade de elementos pares do vetor que tem uma diferença igual a",x," é:", contpares)
fimalgoritmo
