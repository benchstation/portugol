programa {

  // Vari�vel global
  inteiro pontos = 0

  funcao proximaIlha(pontos) {
    pontos++
    escreva("Parab�ns! Voc� ganhou 1 ponto e avan�a para a pr�xima ilha.\n")
    escreva("Total de pontos: ", pontos)
    escreva("\n\n")
  }

  funcao retorneIlha(pontos) {
    pontos--
    escreva("Incorreto... Voc� perdeu 1 ponto e retrocedeu pra ilha anterior.\n")
    escreva("Total de pontos: ", pontos)
    escreva("\n\n")
  }

  //Nesse jogo baseado no universo de One Piece, cada ilha possui um enigma sobre algum personagem.
  //Para vencer o jogo o usu�rio deve responder todos os enigmas.
  //A cada resposta correta o usu�rio avan�a uma ilha e ganha um ponto.
  //A cada resposta errada o usu�rio retrocede uma ilha e perde um ponto.
  //Cada ilha possui 2 perguntas, caso erre e retroceda, a segunda pergunta ser� feita.
  funcao ilhaQuiz(cadeia nome, cadeia pergunta, inteiro qualPergunta) {
    logico acertou = falso
    cadeia resposta, gabarito1 = "", gabarito2 = ""
    se (nome == "ALABASTA") {
      gabarito1 = "Garp" //ou "garp"
      gabarito2 = "Kuina" //ou "kuina"
    }
    senao se (nome == "SKYPIEA") {
      gabarito1 = "Mentir" //ou "mentir"
      gabarito2 = "Zeff" //ou "zeff"
    }
    senao se (nome == "ENIES LOBBY") {
      gabarito1 = "Nojiko" //ou "nojiko"
      gabarito2 = "Hiriluk" //ou "hiriluk"
    }

    escreva("Bem vindo a ILHA DE ", nome, "! Acerte ao menos uma pergunta para passar para a pr�xima ilha.\n")
    se (qualPergunta == 1) {
      escreva("PERGUNTA 1: ", pergunta)
    }
    senao se (qualPergunta == 2) {
      escreva("PERGUNTA 2: ", pergunta)
    }
    senao {
      escreva("Voc� n�o definiu o n�mero da pergunta.")
    }

    leia(resposta)
    se (qualPergunta == 1) {
      se (resposta == gabarito1) {
        acertou = verdadeiro
      }
    }
    senao se (qualPergunta == 2) {
      se (resposta == gabarito2) {
        acertou = verdadeiro
      }
    }

    se (nome == "ALABASTA") {
     se (acertou == verdadeiro) {
      proximaIlha(pontos)
      ilhaQuiz("SKYPIEA", "Qual a especialidade de Usopp?\n", 1)
      }
      senao {
        escreva("Voc� retornou a 0 pontos e perdeu!\n")
      }
    }
    senao se (nome == "SKYPIEA") {
     se (acertou == verdadeiro) {
      proximaIlha(pontos)
      ilhaQuiz("ENIES LOBBY", "Qual o nome da irm� da Nami?\n", 1)
      }
      senao {
        retorneIlha(pontos)
        ilhaQuiz("ALABASTA", "Qual o nome da falecida amiga de Zoro?\n", 2)
      }
    }
    senao se (nome == "ENIES LOBBY") {
      se (acertou == verdadeiro) {
        escreva("Parab�ns! Voc� superou o desafio com um total de ", pontos, " pontos e agora poder� se tornar o Rei dos Piratas!")
      }
      senao {
        retorneIlha(pontos)
        ilhaQuiz("SKYPIEA","Qual o nome do verdadeiro pai de Sanji?\n", 2)
      }

    }
    retorne acertou
  }

  funcao inicio() {

    ilhaQuiz("ALABASTA", "Qual o nome do av� do Luffy?\n", 1)
  
  }
}