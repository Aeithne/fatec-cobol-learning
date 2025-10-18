      ******************************************************************
      * Author: Aeithne
      * Date: 19/10/2025
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AVALIACAO-NOTA.
       AUTHOR. AEITHNE.
       DATE-WRITTEN. 19/10/2025
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME     PIC X(30).
       77  WRK-MATERIA  PIC X(15).
       77  WRK-NOTA     PIC 9(02).
       77  WRK-SITUACAO PIC X(20).
       PROCEDURE DIVISION.
           
           MOVE SPACES TO WRK-NOME, WRK-MATERIA.
           INITIALIZE WRK-NOTA
           
           DISPLAY 'POR FAVOR, DIGITE SEU NOME:'
           ACCEPT WRK-NOME
           
           DISPLAY 'DIGITE A MATÉRIA QUE ESTÁ CURSANDO:'
           ACCEPT WRK-MATERIA
           
           DISPLAY 'INFORME A NOTA QUE VOCÊ TIROU:'
           ACCEPT WRK-NOTA
           
           IF WRK-NOTA >= 0 AND WRK-NOTA <= 4
               MOVE 'REPROVADO' TO WRK-SITUACAO
           ELSE
               IF WRK-NOTA = 5 OR WRK-NOTA = 6
                   MOVE 'RECUPERAÇÃO' TO WRK-SITUACAO
               ELSE
                   IF WRK-NOTA >= 7 AND WRK-NOTA <= 10 
                       MOVE 'APROVADO' TO WRK-SITUACAO
                   ELSE
                       MOVE 'NOTA INVALIDA' TO WRK-SITUACAO
                   END-IF
               END-IF
           END-IF
           
           DISPLAY 'OLA ' WRK-NOME
                   'VOCÊ SE MATRICULOU NA MATERIA ' WRK-MATERIA
                   'E SUA NOTA FOI: ' WRK-NOTA
                   'E SUA SITUACAO FOI: ' WRK-SITUACAO
           GOBACK.
           STOP RUN.
       END PROGRAM AVALIACAO-NOTA.

