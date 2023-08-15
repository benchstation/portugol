programa {
  inclua biblioteca Util
  funcao inicio() {
    // Jogo da adivinhação - Tente adivinhar um número entre 1 e 100
    // Número de tentativas: 10
    inteiro numeroSorteado = Util.sorteia(1, 100)
    inteiro numero
    inteiro tentativas = 10

    enquanto (tentativas != 0) {
    escreva("Adivinhe o número. Tentativas: ", tentativas, "\n")
    leia(numero)
      se (numero > numeroSorteado) {
        escreva("O número secreto é menor.\n")
      }
      senao se (numero < numeroSorteado) {
        escreva("O número secreto é maior.\n")
      }
      senao {
        escreva("O número era: ", numeroSorteado, ".\nFeito em ", tentativas, " tentativas.")

      }

      tentativas--
    }
  }
}
