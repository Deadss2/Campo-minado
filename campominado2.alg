algoritmo "Campo Minado"
// Função : jogo de raciocinio e logica
// Autor : Isabele e Alice
// Data : 09/03/2023
// Seção de Declarações
var
campo: vetor [1..6, 1..6] de inteiro
i, j :inteiro

inicio
escreva("Regras: F = Area fechada" )
escreval("B = Bomba")
escreval("Numerais= proximidade a bombas")
escreval("use (letra,numero) para declarar sua resposta")
escreval("CAMPO MINADO")

     
     campo[1,1]:=
     campo[1,2]:=
     campo[1,3]:=
     campo[1,4]:=
     campo[1,5]:=
     campo[1,6]:=
     
     campo[2,1]:=
     campo[2,2]:=
     campo[2,3]:=
     campo[2,4]:=
     campo[2,5]:=
     campo[2,6]:=
     
     campo[3,1]:=
     campo[3,2]:=
     campo[3,3]:=
     campo[3,4]:=
     campo[3,5]:=
     campo[3,6]:=
     
     campo[4,1]:=
     campo[4,2]:=
     campo[4,3]:=
     campo[4,4]:=
     campo[4,5]:=
     campo[4,6]:=
     
     campo[5,1]:=
     campo[5,2]:=
     campo[5,3]:=
     campo[5,4]:=
     campo[5,5]:=
     campo[5,6]:=
     
     campo[6,1]:=
     campo[6,2]:=
     campo[6,3]:=
     campo[6,4]:=
     campo[6,5]:=
     campo[6,6]:=
     
para i de 1 ate 6 faca
     para j de 1 ate 6 faca
     escreva (campo[i,j])
     fimpara
     escreval
     fimpara
     
//desenhando a matriz sem mostrar os valores
para i de 1 ate 6 faca
     para c de 1 ate 6 faca
     campo[1,c]:= "*"
     //mostra na tela
     escreva(campo [1,c])
     fimpara
     escreval
     fimpara
     

fimalgoritmo
