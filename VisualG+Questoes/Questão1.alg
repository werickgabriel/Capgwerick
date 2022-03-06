algoritmo "Questão 1"
// Função : Calcular a mediana de n números ordenados
// Autor : Werick Gabriel Marinho Veras
// Data : 05/03/2022
// Seção de Declarações
var
   vet: vetor[1..5000] de inteiro
   i,j,aux,qtd,mediana,medianac: inteiro
   tecl: caractere
inicio
// Seção de Comandos
// Solicita e lê a quantidade de numeros a se digitar
   Escreval("Informe a quantidade ímpar de valores que você irá digitar")
   Leia(qtd)
// Verifica se o valor é par ou nao
   Se qtd%2=0 entao
      limpatela
      Escreval("A quantidade que você informou não é ímpar")
   Senao
      limpatela
// Solicita e lê números de acordo com a quantidade informada(qtd) e insere-os no vetor vet[1] até o vet[qtd]
      Escreval("Digite os", qtd, " valores")
      Para i <- 1 ate qtd faca
           leia(vet[i])
      FimPara
// Ordena a quantidade n de valores do vetor, do menor para o maior
      Para i <- 1 ate qtd-1 faca
           Para j <- i+1 ate qtd faca
                Se vet[i]>vet[j] entao
                   aux <- vet[i]
                   vet[i] <- vet[j]
                   vet[j] <- aux
                FimSe
           FimPara
      FimPara
// Menu simples
      limpatela
      Escreval("ORDENANDO OS VALORES DIGITADOS...")
      Escreva("pressione qualquer tecla para continuar...")
      Leia(tecl)
      Limpatela
// Escreve todos os valores ordenados na tela
      Escreva("RESULTADO:")
      Para i <- 1 ate qtd faca
           Escreva(vet[i])
      Fimpara
// Calcula a mediana
      medianac <- (qtd+1)\2
      mediana <- vet[medianac]
      Escreval
// Escreve a mediana na tela
      Escreval("A mediana desse conjunto é:",mediana)
   FimSe
fimalgoritmo
