algoritmo "Quest�o 3"
// Fun��o : Ao receber uma string s, encript�-la com regras espec�ficas
// Autor :  Werick Gabriel Marinho Veras
// Data : 06/03/2022
// Se��o de Declara��es 
var
   matr: vetor[1..20, 1..20] de caractere
   text,esp: caractere
   linha,coluna,i: inteiro
   tam,tamp: real
inicio
// Se��o de Comandos
// Atribui � vari�vel (esp) o caractere de espa�o
   esp <- " "
// Solicita e l� a string s, que neste caso � (text)
   Escreval("Digite o texto a ser encriptado:")
   Leia(text)
   Escreval
// tam: Transforma a string (text) em um n�mero, baseado no seu tamanho, e tira sua raiz quadrada
// tamp: C�lculo da quantidade de linhas e colunas, baseado na regra: raiz(T)<=linha<=coluna<=raiz(T)
   tam <- raizq(compr(text))
   tamp <- int((tam+(tam+1))/2)
// Insere a string (text) na ultima posi��o da matriz (matr)
   matr[20,20] <- text
// Copia cada letra da string (text), excluindo os espa�os (esp), e ordena-as em um bloco da matriz (matr) baseado no tamanho do texto
   i <- 1
   Para linha <- 1 ate int(tamp) faca
        Para coluna <- 1 ate int(tamp) faca
             matr[linha,coluna] <- copia(matr[20,20],i,1)
             i <- i + 1
             Se (copia(matr[20,20],i,1))=esp entao
                i <- i + 1
                tam <- tam -1
             FimSe
        FimPara
   FimPara
// Imprime a string (text) ordenada segundo as regras
   Escreva("SEU TEXTO ENCRIPTADO �: ")
   Para linha <- 1 ate int(tamp) faca
        Escreva(" ")
        Para coluna <- 1 ate int(tamp) faca
             Escreva(matr[coluna,linha])
        FimPara
   FimPara
fimalgoritmo



