
/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Wed Oct 26 12:21:45 IST 2016
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING abl-logger.ABLLogger FROM PROPATH.

DEFINE VARIABLE cMessage AS CHARACTER NO-UNDO.



/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */



/* **********************  Internal Procedures  *********************** */

PROCEDURE loggerDemo:
/*------------------------------------------------------------------------------
 Purpose:
 Notes:
------------------------------------------------------------------------------*/
        DO:
            UNDO , THROW NEW Progress.Lang.AppError ("DO Block AppError", 1).          
        END.
        CATCH e AS Progress.Lang.Error:
            cMessage = e:ToString() + "~n" + e:GetMessage(1).
            ABLLogger:getInstance():log(cMessage).
            
        END CATCH.


END PROCEDURE.

RUN loggerDemo.
