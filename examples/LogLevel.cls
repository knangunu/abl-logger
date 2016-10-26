
/*------------------------------------------------------------------------
    File        : ENUM
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Wed Oct 26 17:48:06 IST 2016
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.


ENUM LogLevel:
    
    DEFINE ENUM ERROR = 1
                WARNING = 2
                INFO = 3
                DEBUG = 4
    END ENUM.
    
END ENUM.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
