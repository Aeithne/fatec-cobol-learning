      ******************************************************************
      * Author: Aeithne
      * Date: 19/10/2025
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. AVALIACAO-NOTA-LOOP.
       AUTHOR. AEITHNE     .
       DATE-WRITTEN. 19/10/2025
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME     PIC X(30).
       77  WRK-MATERIA  PIC X(15).
       77  WRK-NOTA     PIC 9(02).
       77  WRK-SITUACAO PIC X(20).
       77  WRK-CONTINUA PIC X.
       PROCEDURE DIVISION.
       
           MOVE 'N' TO WRK-CONTINUA.
           PERFORM SOLICITA-INFORMACOES.
           
       MAIN-LOOP.
           DISPLAY 'QUER PARAR DE AVALIAR? DIGITE S SE SIM.'
           ACCEPT WRK-CONTINUA
           IF WRK-CONTINUA = 'S' OR WRK-CONTINUA = 's'
               DISPLAY 'PROGRAMA FINALIZADO.'
           ELSE
               GO TO SOLICITA-INFORMACOES
           END-IF
           STOP RUN.
               
       SOLICITA-INFORMACOES.    
           MOVE SPACES TO WRK-NOME, WRK-MATERIA, WRK-SITUACAO
           INITIALIZE WRK-NOTA
           
           DISPLAY 'POR FAVOR, DIGITE SEU NOME:'
           ACCEPT WRK-NOME
           
           DISPLAY 'DIGITE A MATÉRIA QUE ESTÁ CURSANDO:'
           ACCEPT WRK-MATERIA
           
           DISPLAY 'INFORME A NOTA QUE VOCÊ TIROU:'
           ACCEPT WRK-NOTA
           
           EVALUATE TRUE
               WHEN WRK-NOTA >= 0 AND WRK-NOTA <= 4
                   MOVE 'REPROVADO' TO WRK-SITUACAO
               WHEN WRK-NOTA >= 5 AND WRK-NOTA <= 6
                   MOVE 'RECUPERAÇÃO' TO WRK-SITUACAO
               WHEN WRK-NOTA >= 7 AND WRK-NOTA <= 10
                   MOVE 'APROVADO' TO WRK-SITUACAO
               WHEN OTHER
                   MOVE 'NOTA INVALIDA' TO WRK-SITUACAO
           END-EVALUATE
           
           DISPLAY 'OLA ' WRK-NOME
                   ' VOCÊ SE MATRICULOU NA MATERIA ' WRK-MATERIA
                   ' E SUA NOTA FOI: ' WRK-NOTA
                   ' E SUA SITUACAO FOI: ' WRK-SITUACAO
           
           GO TO MAIN-LOOP
           
       STOP RUN.
       
       END PROGRAM AVALIACAO-NOTA-LOOP.

