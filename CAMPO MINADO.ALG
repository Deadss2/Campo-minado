algoritmo "Campo Minado"
// Função : jogo de raciocinio e logica
// Autor : Isabele e Alice
// Data : 09/03/2023
// Seção de Declarações
var
campo: vetor [1..6, 1..6] de inteiro
c, l, x, y :inteiro
v,d:real
//c colunas l linhas v condição de vitoria x e y resposta do jogador

inicio
v :=0;

     campo[1,1]:= 0
     campo[1,2]:= 0
     campo[1,3]:= 0
     campo[1,4]:= 1
     campo[1,5]:= 9
     campo[1,6]:= 1

     campo[2,1]:= 0
     campo[2,2]:= 0
     campo[2,3]:= 0
     campo[2,4]:= 1
     campo[2,5]:= 2
     campo[2,6]:= 9

     campo[3,1]:= 0
     campo[3,2]:= 0
     campo[3,3]:= 0
     campo[3,4]:= 1
     campo[3,5]:= 2
     campo[3,6]:= 2

     campo[4,1]:= 0
     campo[4,2]:= 1
     campo[4,3]:= 1
     campo[4,4]:= 2
     campo[4,5]:= 9
     campo[4,6]:= 2

     campo[5,1]:= 0
     campo[5,2]:= 1
     campo[5,3]:= 9
     campo[5,4]:= 2
     campo[5,5]:= 0
     campo[5,6]:= 0

     campo[6,1]:= 0
     campo[6,2]:= 1
     campo[6,3]:= 1
     campo[6,4]:= 1
     campo[6,5]:= 0
     campo[6,6]:= 3
     
    limpatela()
    escreval("Regras: X = Area fechada" )
    escreval("B = Bomba")
    escreval("Numerais= proximidade a bombas")
    escreval("use (letra,numero) para declarar sua resposta")

enquanto (v <= 32) faca
    escreval("CAMPO MINADO")
    
    escreval ("0 1 2 3 4 5 6")
    escreval ("1 X X X X X X")
    escreval ("2 X X X X X X")
    escreval ("3 X X X X X X")
    escreval ("4 X X X X X X")
    escreval ("5 X X X X X X")
    escreval ("6 X X X X X X")

    escreval ("escolha a linha de 1 a 6")
    leia (x)
    escreval ("escolha a coluna de 1 a 6")
    leia (y)
    
    se campo[x,y] = 0  entao
    v :=  v + 1  ;
    escreval ("nenhuma bomba encontrada")
    fimse
     se campo[x,y] = 1  entao
     v :=  v + 1 ;
     escreval ("1 bomba proxima")
    fimse
    se campo[x,y] = 2  entao
    v := v + 1 ;
     escreval ("2 bombas proximas")
    fimse
    se campo[x,y] = 3  entao
    v := v + 15 ;
     escreval ("3 bombas proximas")
    fimse
    se campo[x,y] = 9  entao
     escreval ("KABUM você explodiu >:<")
     escreval ("PERDESTE")
 escreval ("         _.-^^---....,,--  ")
 escreval (" _--                  --_  ")
 escreval ("<                        >)")
 escreval ("|                         | ")
 escreval (" \._                   _./ ")
  escreval ("   ```--. . , ; .--'''    ")
 escreval ("          | |   |          ")
  escreval ("      .-=||  | |=-.       ")
 escreval ("       `-=#$%&%$#=-'        ")
 escreval ("          | ;  :|          ")
  escreval ("_____.,-#%&$@%#&#~,._____  ")
     escreval ("pontos =",v)
    fimse

fimenquanto
escreval("                                               -----       ")
escreval("                                              /      \  ")
escreval("                                              O  O   |  ")
escreval("       :================:                     :      / ")
escreval("      /||  CATAPINBAS  ||                      O_ /*   ")
escreval("     / ||    VOCÊ      ||                          *   ")
escreval("    |  ||     GANHOU   ||                   (=====~*~======)  ")
escreval("     \ || ORAS BOLASS  ||                  0      \ /       0  ")
fimalgoritmo