algoritmo "Campo Minado"
// Função : jogo de raciocinio e logica
// Autor : Isabele e Alice
// Data : 09/03/2023
// Seção de Declarações 
var
exMatriz: vetor [1..10, 1..10] de inteiro
bomb:inteiro
inicio
escreva("Regras: F = Area fechada" )
escreval("B = Bomba")
escreval("Numerais= proximidade a bombas")
escreval("use (letra,numero) para declarar sua resposta")
escreval("CAMPO MINADO")

exMatriz[1,1] <- 10
leia (exMatriz[1,10])
exMatriz[10,1] <- 10
fimalgoritmo
