programa {
  inclua biblioteca Matematica --> mat  // p/ arredondar
  inclua biblioteca Texto --> tx        // p/ manipulação textual

  funcao inicio() {
    exercicio1()
    exercicio2()
    exercicio3()
    exercicio4()
    exercicio5()
  }

  funcao exercicio1() {
    // Exercício 1
    //Escreva um programa que leia 3 números inteiros e verifique se a média entre eles é ímpar ou par.
    inteiro qtdNum = 2
    inteiro num1, num2, num3
    escreva("Digite o primeiro número: ")
    leia(num1)
    escreva("Digite o segundo número: ")
    leia(num2)
    
    real media = (num1 + num2) / qtdNum

    se (media % 2 == 0) {
      escreva("A média entre os números " + num1 + " e " + num2 + " é par. (Média: " + media + ").\n")
    }
    senao {
      escreva("A média entre os números " + num1 + " e " + num2 + " é ímpar. (Média: " + media + ").\n")
    }
  }

  funcao exercicio2() {
    // Exercício 2
    // Elabore um programa que leia a altura e o peso de uma pessoa e calcule o Índice de Massa Corporal (IMC). 
    // Em seguida, classifique o resultado de acordo com a tabela do IMC.
    cadeia nome
    real altura, peso
    escreva("Informe seu nome: ")
    leia(nome)
    escreva("Informe seu peso: ")
    leia(peso)
    escreva("Informe sua altura: ")
    leia(altura)
    real imc = peso / altura * altura
    real imcRedondo = mat.arredondar(imc, 2)
    escreva(nome + ", seu IMC é: " + imcRedondo + "\n")

    se ((imcRedondo >= 40) == falso) {
      se (imcRedondo >= 35 e < 40) {
        escreva("Seu IMC indica obesidade grau 2.")
      }
      senao se (imcRedondo >= 30 e imcRedondo < 35) {
        escreva("Seu IMC indica obesidade grau 1.")
      }
      senao se (imcRedondo >= 25 e imcRedondo < 30) {
        escreva("Seu IMC indica sobrepeso.")
      }
      senao se (imcRedondo >= 18.5 e imcRedondo < 25) {
        escreva("Seu IMC indica peso normal.")
      }
      senao se (imcRedondo < 18.5) {
        escreva("Seu IMC indica peso inferior.")
      }
      senao {
        escreva("Peso inválido.")
      }
    }
    senao {
      escreva("Seu IMC indica obesidade grau 3.")
    }

  }

  funcao exercicio3() {
    // Exercício 3
    // Elabore um programa que leia um valor inteiro em segundos e o converta para o formato de horas, minutos e segundos. 
    // Por exemplo, se o usuário digitar 3665 segundos, o programa deve exibir 1 hora, 1 minuto e 5 segundos.
    
    // Leitura do valor em segundos
    real segundos
    escreva("Informe uma quantidade em segundos a ser convertida: ")
    leia(segundos)

    // Constantes
    inteiro QTD_SEGUNDOS_EM_MINUTOS = 60
    inteiro QTD_SEGUNDOS_EM_HORAS = 3600
    // Calcula as horas
    inteiro horas = segundos / QTD_SEGUNDOS_EM_HORAS
    // Calculando as sobra de minutos (resto)
    inteiro segundosSobra = segundos % 3600
    // Calcula os minutos
    inteiro minutos = segundosSobra / QTD_SEGUNDOS_EM_MINUTOS
    inteiro segundosSobra = segundos % 60

    // Resultado
    escreva("Segundos: " + segundos + "\nConvertidos para horas é igual a: " + horas + " hora(s), " + minutos + " minuto(s) e " + segundosSobra + " segundo(s).\n")
  }

  funcao exercicio4() {
    // Exercício 4
    // Desenvolva um programa que simule uma calculadora com quatro operações básicas: adição, subtração, multiplicação e divisão. 
    // O programa deve solicitar ao usuário que escolha uma das operações e, em seguida, peça dois números para realizar a operação escolhida. 
    // Ao final, exiba o resultado.

		caracter operador
		real resultado = 0.0, operando1, operando2

		escreva("Digite o primeiro número: ")
		leia(operando1)

		escreva("Digite o segundo número: ")
		leia(operando2)

		escreva("\n")
		
		escreva("Agora digite uma das operações ( + - * / ): ")
		leia(operador)

		// Verifica qual foi a operação selecionada
		
		se (operador == '+')
		{
			resultado = operando1 + operando2
			
		}
		senao  se(operador == '-')
		{
			resultado = operando1 - operando2
			
		}
		senao se(operador == '/')
		{
			resultado = operando1 / operando2
			
		}
		senao se(operador == '*')
		{
			resultado = operando1 * operando2
		}	

		limpa()
		
		escreva("Resultado:\n\n")
		escreva(operando1, " ", operador, " ", operando2, " = ", resultado)
		
		escreva("\n")
  }

  funcao exercicio5() {
    // Exercício 5
    // Crie um programa que leia um número inteiro de 3 dígitos e verifique se ele é um palíndromo. 
    // Um palíndromo é um número que, quando lido da direita para a esquerda, é igual ao número lido da esquerda para a direita. 
    // Por exemplo, 121 e 555 são palíndromos.
    cadeia numero = ""
    caracter digito
		logico verificacaoNumero = verdadeiro

    escreva("Informe um número inteiro de 3 dígitos: ")
    leia(numero)
    // Obtendo o número de caracteres armazenados na variável
		inteiro tamanho = tx.numero_caracteres(numero)

    // Usando um laço de repetição para percorrer todos os caracteres da cadeia. 
    // Começando no caracter 0 e indo até o último caracter, tx.numero_caracteres(numero) - 1
		para (inteiro indice = 0; indice <= tamanho - 1; indice++)
		{
			// Obtendo o caracter na posição indicada pelo índice
			digito = tx.obter_caracter(numero, indice)
      
      //escreva(digito)
			
      // Verificando o caracter nesta posição. e checando para saber se é um número	
			se (digito != '0' e digito != '1' e digito != '2' e digito != '3' e digito != '4' e digito != '5' e digito != '6' e digito != '7' e digito != '8' e digito != '9')
			{
				verificacaoNumero = falso

				// Como não é um número, então não é necessário continuar verificando.
        // Por isso o laço é interrompido com o comando "pare"
				pare
			}
		}

    se (tamanho == 3 e verificacaoNumero) {
      //escreva("Número válido.\n")

      // Criando um vetor (array) para armazenar a posição dos caracteres
      caracter palavra[3]
      para (inteiro i = 0; i < tamanho; i++) {
        digito = tx.obter_caracter(numero, i)
        //escreva(i)
        palavra[i] = digito
      }
      escreva("Para ser um palíndromo, o 1º e 3º caractere devem ser iguais: " + palavra + "\n")

      // Verificação de palíndromo
      se (palavra[0] == palavra[2]) {
        escreva("" + numero + " é um palindromo!")
      }
      senao {
        escreva("" + numero + " não é um palindromo.")
      }
    }
    senao se (verificacaoNumero == falso) { 
      escreva("Não inseriu um número. Tente novamente.\n")
    }
    senao {
      escreva("Número não tem 3 dígitos. Tente novamente.\n")
    }
  }
}
