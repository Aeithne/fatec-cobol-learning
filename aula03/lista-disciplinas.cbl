      ******************************************************************
      * Author: Aeithne
      * Date: 25/10/2025
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABELA-DISCIPLINAS-ADS.
       AUTHOR. AEITHNE.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 LISTA-DISCIPLINAS.
           03 FILLER PIC X(030) VALUE "ALGORITMOS".
           03 FILLER PIC X(030) VALUE "ESTRUTURAS DE DADOS".
           03 FILLER PIC X(030) VALUE "ORIENTACAO A OBJETOS".
           03 FILLER PIC X(030) VALUE "BANCO DE DADOS".
           03 FILLER PIC X(030) VALUE "INTELIGENCIA ARTIFICIAL".
           03 FILLER PIC X(030) VALUE "PROGRAMACAO LINEAR".

           01 FILLER REDEFINES LISTA-DISCIPLINAS.
               03 DISCIPLINAS PIC X(030) OCCURS 6.

           77 DISCIPLINAS-CONT PIC 9(001) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL DISCIPLINAS-CONT > 6
                DISPLAY DISCIPLINAS(DISCIPLINAS-CONT)
                ADD 1 TO DISCIPLINAS-CONT
           END-PERFORM
           STOP RUN.
       END PROGRAM TABELA-DISCIPLINAS-ADS.
