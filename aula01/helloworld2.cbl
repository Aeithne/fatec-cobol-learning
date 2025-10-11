      ******************************************************************
      * Author: AEITHNE
      * Date: 11/10/2025
      * Purpose: Aprendizado de Cobol.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. HELLO-WORLD-COMNOME. 
       AUTHOR. AEITHNE. 
       ENVIRONMENT DIVISION. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-MENSAGEM PIC X(20) VALUE SPACES.
           01 WS-NOME PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       PRIMEIRA-SECAO.
       PRIMEIRO-PARAG.
           MOVE 'Como vai mundo!' TO WS-MENSAGEM. 
           DISPLAY WS-MENSAGEM
           DISPLAY 'Por favor, digite seu nome:'.
           ACCEPT WS-NOME
           DISPLAY 'Prazer em conhecê-lo,' WS-NOME. 
           MOVE 'Tenha um ótimo dia' TO WS-MENSAGEM. 
           DISPLAY WS-MENSAGEM
           STOP RUN.
       END PROGRAM HELLO-WORLD-COMNOME.
       
