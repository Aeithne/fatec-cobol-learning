      ****************************************************************** 
      * Author: Aeithne
      * Date: 25/10/2025 
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc 
      ****************************************************************** 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROXIMOS-NUMEROS.
       AUTHOR. AEITHNE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUMEROS.
           03 PARES_ACIMA PIC S9(010) OCCURS 5.
           03 IMPARES_ABAIXO PIC S9(010) OCCURS 5.
           77 NUMERO-DIGITADO PIC S9(010) VALUE ZEROS.
           77 METADE PIC S9(010) VALUE ZEROS.
           77 IS_IMPAR PIC 9(001) VALUE ZEROS.
           77 CONT-NUMERO PIC 9(001) VALUE 1.
           77 CONTINUAR PIC 9(001) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE 1 TO CONT-NUMERO.
           ACCEPT NUMERO-DIGITADO.
           DIVIDE NUMERO-DIGITADO BY 2 GIVING METADE REMAINDER IS_IMPAR.
           
           MULTIPLY METADE BY 2 GIVING METADE.
           
           PERFORM UNTIL CONT-NUMERO > 5 
               MOVE METADE TO PARES_ACIMA(CONT-NUMERO) 
               ADD CONT-NUMERO TO PARES_ACIMA(CONT-NUMERO) 
               ADD CONT-NUMERO TO PARES_ACIMA(CONT-NUMERO) 
               MOVE METADE TO IMPARES_ABAIXO(CONT-NUMERO) 
               ADD 1 TO IMPARES_ABAIXO(CONT-NUMERO) 
               SUBTRACT CONT-NUMERO FROM IMPARES_ABAIXO(CONT-NUMERO) 
               SUBTRACT CONT-NUMERO FROM IMPARES_ABAIXO(CONT-NUMERO) 
               DISPLAY IMPARES_ABAIXO(CONT-NUMERO) ' < ' NUMERO-DIGITADO 
      -         ' > ' PARES_ACIMA(CONT-NUMERO) 
               ADD 1 TO CONT-NUMERO
           END-PERFORM
           
           DISPLAY "QUER INSERIR MAIS NÚMEROS? INSIRA 0 SE NÃO."
           ACCEPT CONTINUAR
           IF CONTINUAR > 0 
               GO TO MAIN-PROCEDURE
           END-IF
           
       STOP RUN.
       END PROGRAM PROXIMOS-NUMEROS.
