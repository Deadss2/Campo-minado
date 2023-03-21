algoritmo "Campo Minado"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Função : LP - jogo campo minado
// Autora: Isabele e Alice
// Data: 09/03/2023
// Seção de Declarações
var
campo1: vetor [1..6, 1..6] de inteiro
campo2: vetor [1..6, 1..6] de caracter
iniciar: caracter
c, l:  inteiro
linha: inteiro
coluna:inteiro
score: inteiro
//c colunas l linhas v condição de vitória xey resposta do jogador

inicio

//0 = nenhuma bomba, 1 = uma bomba próxima, 2 = duas bombas próximas,
//3 = três bombas próximas, 9 = bomba.
     score := 0
     campo1[1,1]:= 0
     campo1[1,2]:= 0
     campo1[1,3]:= 0
     campo1[1,4]:= 1
     campo1[1,5]:= 9
     campo1[1,6]:= 1

     campo1[2,1]:= 0
     campo1[2,2]:= 0
     campo1[2,3]:= 0
     campo1[2,4]:= 1
     campo1[2,5]:= 2
     campo1[2,6]:= 9

     campo1[3,1]:= 0
     campo1[3,2]:= 0
     campo1[3,3]:= 0
     campo1[3,4]:= 1
     campo1[3,5]:= 2
     campo1[3,6]:= 2

     campo1[4,1]:= 0
     campo1[4,2]:= 1
     campo1[4,3]:= 1
     campo1[4,4]:= 2
     campo1[4,5]:= 9
     campo1[4,6]:= 2

     campo1[5,1]:= 0
     campo1[5,2]:= 1
     campo1[5,3]:= 9
     campo1[5,4]:= 2
     campo1[5,5]:= 1
     campo1[5,6]:= 1

     campo1[6,1]:= 0
     campo1[6,2]:= 1
     campo1[6,3]:= 1
     campo1[6,4]:= 1
     campo1[6,5]:= 0
     campo1[6,6]:= 3

    limpatela()
//desejando boas vindas ao jogador e explicando como ele deve fazer para comecar
//o jogo.
    escreval ("--------------------------------------------------------")
    escreval ("¦            SEJA BEM VINDE AO CAMPO MINADO!           ¦")
    escreval ("¦AVISO: TODA VEZ QUE TIVER BOMBA PRÓXIMA VAMOS TE FALAR¦")
    escreval ("¦                 !!!BOA SORTE!!!                      ¦")
    escreval ("--------------------------------------------------------")
    escreval (" ")


// desenhando a matriz sem aparecer os valores
   para l de 1 ate 6 faca
   para c de 1 ate 6 faca
   campo2[l,c]:= "-*-"
//Mostra na tela
   escreva (campo2 [l,c])
fimpara
escreval
fimpara

repita
escreval (" ")
    escreval ("escolha a linha de 1 a 6")
    leia (l)
    escreval ("escolha a coluna de 1 a 6")
    leia (c)
escreval (" ")

//apresentando as bombas proximas
    se campo1[l, c] = 0  entao
    score :=  score + 1;
    escreval ("NENHUMA BOMBA ENCONTRADA, CONTINUE ASSIM!")
    campo2[l, c] := "-0-"
    fimse
    
    se campo1[l, c] = 1  entao
    score :=  score + 1;
    escreval ("1 BOMBA PRÓXIMA, TOME CUIDADO ")
    campo2[l, c] := "-1-"
    fimse
    
    se campo1[l, c] = 2  entao
    score :=  score + 1;
    escreval ("2 bombas proximas")
    campo2[l, c] := "-2-"
    fimse
    
    se campo1[l, c] = 3  entao
    score :=  score + 1;
    escreval ("3 bombas proximas")
    campo2[l, c] := "-3-"
    fimse

    se campo1[l, c] = 9  entao
    escreval ("KABUM você explodiu >:<")
    campo2[l, c] := "-9-"

 escreval ("    _.-^^--------^^-._  ")
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
     escreval (" ")
     escreval (" ")
     escreval ("PONTUAÇÃO = ",score)
     escreval ("TENTE NOVAMENTE!")
     escreval (" ")
    fimse

// mostrando a tabela atuaizada
escreval
para l de 1 ate 6 faca
   para c de 1 ate 6 faca
   escreva (campo2 [l, c])
   fimpara
escreval
fimpara
    

se score = 32 entao
escreval("                 /|  /|  ---------------------------")
escreval("                 ||__||  |                         |")
escreval("                /   O O\__   PARABÉNS VOCÊ GANHOU  |")
ESCREVAL("               /          \     REI DAS BOMBAS     |")
escreval("              /      \     \                       |")
escreval("             /   _    \     \ ----------------------")
escreval("            /    |\____\     \      ||")
escreval("           /     | | | |\____/      ||")
escreval("          /       \| | | |/ |     __||")
escreval("         /  /  \   -------  |_____| ||")
escreval("        /   |   |           |       --|")
escreval("       |   |   |           |_____  --|")
escreval("       |  |_|_|_|          |     \---")
escreval("      /\                  |")
escreval("     / /\        |        /")
escreval("    / /  |       |       |")
escreval("___/ /   |       |       |")
escreval("|____/    c_c_c_C/ \C_c_c_c")
fimse
ate (campo1[l, c] = 9) ou (score = 32)

fimalgoritmo
