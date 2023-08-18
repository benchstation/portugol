programa {

  // Variável global
  inteiro pontos = 0

  funcao proximaIlha(pontos) {
    pontos++
    escreva("Parabéns! Você ganhou 1 ponto e avança para a próxima ilha.\n")
    escreva("Total de pontos: ", pontos)
    escreva("\n\n")
  }

  funcao retorneIlha(pontos) {
    pontos--
    escreva("Incorreto... Você perdeu 1 ponto e retrocedeu pra ilha anterior.\n")
    escreva("Total de pontos: ", pontos)
    escreva("\n\n")
  }

  //Nesse jogo baseado no universo de One Piece, cada ilha possui um enigma sobre algum personagem.
  //Para vencer o jogo o usuário deve responder todos os enigmas.
  //A cada resposta correta o usuário avança uma ilha e ganha um ponto.
  //A cada resposta errada o usuário retrocede uma ilha e perde um ponto.
  //Cada ilha possui 2 perguntas, caso erre e retroceda, a segunda pergunta será feita.
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

    escreva("Bem vindo a ILHA DE ", nome, "! Acerte ao menos uma pergunta para passar para a próxima ilha.\n")
    se (qualPergunta == 1) {
      escreva("PERGUNTA 1: ", pergunta)
    }
    senao se (qualPergunta == 2) {
      escreva("PERGUNTA 2: ", pergunta)
    }
    senao {
      escreva("Você não definiu o número da pergunta.")
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
        escreva("Você retornou a 0 pontos e perdeu!\n")
      }
    }
    senao se (nome == "SKYPIEA") {
     se (acertou == verdadeiro) {
      proximaIlha(pontos)
      ilhaQuiz("ENIES LOBBY", "Qual o nome da irmã da Nami?\n", 1)
      }
      senao {
        retorneIlha(pontos)
        ilhaQuiz("ALABASTA", "Qual o nome da falecida amiga de Zoro?\n", 2)
      }
    }
    senao se (nome == "ENIES LOBBY") {
      se (acertou == verdadeiro) {
        escreva("Parabéns! Você superou o desafio com um total de ", pontos, " pontos e agora poderá se tornar o Rei dos Piratas!")
      }
      senao {
        retorneIlha(pontos)
        ilhaQuiz("SKYPIEA","Qual o nome do verdadeiro pai de Sanji?\n", 2)
      }

    }
    retorne acertou
  }

  funcao inicio() {

    ilhaQuiz("ALABASTA", "Qual o nome do avô do Luffy?\n", 1)
  
  }
}