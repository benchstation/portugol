programa {
  //Nesse jogo baseado no universo de One Piece, cada ilha possui um enigma sobre algum personagem.
  //Para vencer o jogo o usuário deve responder todos os enigmas.
  //A cada resposta correta o usuário avança uma ilha e ganha um ponto.
  //A cada resposta errada o usuário retrocede uma ilha e perde um ponto.
  //Cada ilha possui 2 perguntas, caso erre e retroceda, a segunda pergunta será feita.
  funcao ilhaQuiz(cadeia nome, cadeia pergunta1, cadeia pergunta2) { //inteiro pontosAcumulados
    inteiro pontos = 0
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
    escreva("PERGUNTA 1: ", pergunta1)
    leia(resposta)

    se (resposta == gabarito1) {
      pontos++
      acertou = verdadeiro
    }
    se (acertou == falso) {
      escreva("Errado. Tente com outra pergunta.\n")
      escreva("PERGUNTA 2: ", pergunta2)
      leia(resposta)
        se (resposta == gabarito2) {
          pontos++
          acertou = verdadeiro
        } senao {
          pontos--
          escreva("Você retornou a 0 pontos e perdeu!\n")
        }
    }
    se (acertou == verdadeiro) {
      escreva("Parabéns! Você ganhou 1 ponto e avança para a próxima ilha.\n")
      escreva("Total de pontos: ", pontos)
      escreva("\n\n")
    }

    pontosAcumulados = pontos
    retorne acertou
  }

  funcao inicio() {
    logico concluiIlha1, concluiIlha2, concluiIlha3

    concluiIlha1 = ilhaQuiz("ALABASTA", "Qual o nome do avô do Luffy?\n", "Qual o nome da falecida amiga de Zoro?\n")
    se (concluiIlha1 == verdadeiro) {
      concluiIlha2 = ilhaQuiz("SKYPIEA", "Qual a especialidade de Ussopp?\n", "Qual o nome do verdadeiro pai de Sanji?\n")
      
      se (concluiIlha2 == verdadeiro) {
        concluiIlha3 = ilhaQuiz("ENIES LOBBY", "Qual o nome da irmã da Nami?\n", "Qual o nome do pai de Chopper?\n")
      }
    }
    se (concluiIlha3 == verdadeiro) {
      escreva("Parabéns! Você superou o desafio e agora poderá se tornar o Rei dos Piratas!")
    }
  }
}
