programa {

    funcao ilhaQuiz(cadeia nome, cadeia pergunta1, cadeia pergunta2) {
    inteiro erros = 2
    logico acertou = falso
    cadeia resposta
    cadeia resposta1 = ""
    cadeia resposta2 = ""
    se (nome == "ALABASTA") {
      resposta1 = "Garp" //ou "garp"
      resposta2 = "Kuina" //ou "kuina"
    }
    senao se (nome == "SKYPIEA") {
      resposta1 = "Mentir" //ou "mentir"
      resposta2 = "Zeff" //ou "zeff"
    }
    senao se (nome == "ENIES LOBBY") {
      resposta1 = "Nojiko" //ou "nojiko"
      resposta2 = "Hiriluk" //ou "hiriluk"
    }

    escreva("Bem vindo a ILHA DE ", nome, "! Acerte ao menos uma pergunta para passar de ilha:\n")
    escreva("PERGUNTA 1: ", pergunta1)
    leia(resposta)
    se (resposta == resposta1) {
      acertou = verdadeiro
    }
    se (acertou == falso e erros == 2) {
      erros--
      escreva("Errado. Tente essa outra pergunta:\n")
      escreva("PERGUNTA 2: ", pergunta2)
      leia(resposta)
    }
    se (acertou == falso e erros == 1) {
      se (resposta == resposta2) {
        acertou = verdadeiro
      } senao {
        erros--
        escreva("Você perdeu! :(\n")
      }
    }
    se (acertou == verdadeiro) {
      escreva("Você acertou! Vamos para a próxima ilha.\n")
      escreva("\n\n")
    }

    retorne acertou
  } 

  funcao inicio() {
    logico concluiIlha1, concluiIlha2, concluiIlha3

    concluiIlha1 = ilhaQuiz("ALABASTA", "Qual o nome do avô do Luffy?\n", "Qual o nome da falecida amiga de Zoro?\n")
    se (concluiIlha1 == verdadeiro) {
      concluiIlha2 = ilhaQuiz("SKYPIEA", "Qual a especialidade de Usopp?\n", "Qual o nome do verdadeiro pai de Sanji?\n")
      
      se (concluiIlha2 == verdadeiro) {
        concluiIlha3 = ilhaQuiz("ENIES LOBBY", "Qual o nome da irmã da Nami?\n", "Qual o nome do pai de Chopper?\n")
      }
    }

    se (concluiIlha3 == verdadeiro) {
      escreva("Parabéns! Você superou o desafio e agora poderá se tornar o Rei dos Piratas!")
    }
  }
}
