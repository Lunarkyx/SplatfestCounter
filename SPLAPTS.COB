      ******************************************************************
      *                                                                *
      *                                                                *
      *                                                                *
      ******************************************************************  
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SPLAPTS.
       AUTHOR. Lalaine.
       
      ******************************************************************
        ENVIRONMENT DIVISION.
      **************  
        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
                SELECT RESTEAM ASSIGN TO "SplatRec.txt"
                ORGANIZATION IS SEQUENTIAL.
      ******************************************************************
       DATA DIVISION.
      ************** 
       FILE SECTION .
       FD RESTEAM.
       01 RES-SPLT.
           05 USERNAME         PIC X(15). 
           05 B-POINT           PIC 9999$.
           05 DEATH            PIC 9(2).
           05 KILL             PIC 9(2).
       01 PrintLine            PIC X(44).
       77 FILLER               PIC X VALUES SPACE.
       88 WSEOF VALUE HIGH-VALUE.
 
       WORKING-STORAGE SECTION.
       01 PageHeading.
            05 FILLER           PIC X(13) VALUE "Player Lists".
       01 PageFooting.
            05 FILLER           PIC X(15) VALUE SPACE.
            05 FILLER           PIC X(7) VALUE "Page : ".
            05 PrnPageNum       PIC Z9.
       01 Heads                PIC X(36) VALUE "-Username-
        -Battle Points-     -Deaths-  -Kills-  ".
       01 PlayerDetailLine.
           05 FILLER           PIC X VALUE SPACE.
           05 PrnUsrName       PIC X(15).
           05 FILLER           PIC X(4) VALUE SPACE.
           05 PrnB-Point       PIC 9999$.
           05 FILLER           PIC XX VALUE SPACE.
           05 PrnDeath         PIC 99.
           05 FILLER           PIC xx VALUE SPACE.
           05 PrnKill          PIC 99.
       01 ReportFooting        PIC X(13) VALUE "END OF REPORT"
       01 LineCount            PIC 99 VALUE ZERO.
           88 NewPageRequired  VALUE 40 THRU 99.
       01 PageCount            PIC 99 VALUE ZERO.
      
      ******************************************************************
        PROCEDURE DIVISION.
      **************
            PERFORM READER UNTIL WSEOF = 'Y'

                   


        READER.
           
            STOP RUN.
                 


