
/*------------------------------------------------------------------------
    File        : InvokeABLLogger.p
    Purpose     : Sample program that handles the exceptions and logs them by invoking various APIs with ABLLogger class.  

    Syntax      :

    Description : 

    Author(s)   : knangunu
    Created     : Wed Oct 26 12:21:45 IST 2016
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING abl-logger.ABLLogger FROM PROPATH.
USING abl-logger.LogLevelType FROM PROPATH.

DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.



/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */



/* **********************  Internal Procedures  *********************** */

PROCEDURE loggerDemo:
/*------------------------------------------------------------------------------
 Purpose:
 Notes:
------------------------------------------------------------------------------*/
        DEFINE VARIABLE loglevel AS LogLevelType.

        loglevel = LogLevelType:ERROR.
         
        DO:
            UNDO , THROW NEW Progress.Lang.AppError ("DO Block AppError", 1).          
        END.
        CATCH e AS Progress.Lang.Error:
            cMessage = e:ToString() + "~n" + e:GetMessage(1).
            ABLLogger:getInstance():log(cMessage, "", loglevel:GetValue()).
            
        END CATCH.


END PROCEDURE.

RUN loggerDemo.
