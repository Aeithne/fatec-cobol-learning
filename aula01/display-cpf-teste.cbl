      ******************************************************************
      * Author: AEITHNE
      * Date: 11/10/2025
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION. 
           PROGRAM-ID. TESTE_CPF. 
           AUTHOR. AEITHNE.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
           77 CPF-TEXTO PIC X(011).
           77 CPF-NUMERO PIC 9(011).    
       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "Teste de CPF"
           ACCEPT CPF-NUMERO
           MOVE CPF-NUMERO TO CPF-TEXTO
           DISPLAY "CPF: " CPF-TEXTO
           
           ACCEPT CPF-TEXTO    
           MOVE CPF-TEXTO TO CPF-NUMERO
           DISPLAY "CPF: " CPF-NUMERO       
           
           STOP RUN.
       END PROGRAM TESTE_CPF.
