
/*------------------------------------------------------------------------
    File        : LogLevelType
    Purpose     : Enum class which specifies the log level for different log types.

    Syntax      :

    Description : 

    Author(s)   : knangunu
    Created     : Wed Oct 26 17:48:06 IST 2016
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.


ENUM abl-logger.LogLevelType:
    
    DEFINE ENUM ERROR = 1
                WARNING = 2
                INFO = 3
                DEBUG = 4
    END ENUM.
    
END ENUM.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
