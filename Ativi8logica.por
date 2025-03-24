programa {
  funcao inicio()
  {
      cadeia nomes[3]
    real notas[3][4]
    real medias[3]

    // Cadastrar dados dos alunos
    para (inteiro aluno = 0; aluno < 3; aluno++)
    {
      escreva("\n--- Dados do Aluno ", aluno + 1, " ---\n")
      escreva("Digite o nome do aluno: ")
      leia(nomes[aluno])

      para (inteiro nota = 0; nota < 4; nota++)
      {
        escreva("Digite a nota ", nota + 1, ": ")
        leia(notas[aluno][nota])
      }

      real soma = 0.0
      para (inteiro nota = 0; nota < 4; nota++)
      {
        soma = soma + notas[aluno][nota]
      }
      medias[aluno] = soma / 4.0
    }

    limpa()
    escreva("--- Relatório de Alunos ---\n")
    para (inteiro aluno = 0; aluno < 3; aluno++)
    {
      escreva("Aluno: ", nomes[aluno], "\n")
      escreva("Notas: ")
      para (inteiro nota = 0; nota < 4; nota++)
      {
        escreva(notas[aluno][nota], " ")
      }
      escreva("\nMedia: ", medias[aluno], "\n\n")
    }

    escreva("--- Maiores Notas por Disciplina ---\n")
    para (inteiro disciplina = 0; disciplina < 4; disciplina++)
    {
      real maiorNotaDisciplina = notas[0][disciplina]
      para (inteiro aluno = 1; aluno < 3; aluno++)
      {
        se (notas[aluno][disciplina] > maiorNotaDisciplina)
        {
          maiorNotaDisciplina = notas[aluno][disciplina]
        }
      }
      escreva("Maior nota na Disciplina ", disciplina + 1, ": ", maiorNotaDisciplina, "\n")
    }
 
  }
}
