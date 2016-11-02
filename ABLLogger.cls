 
/*------------------------------------------------------------------------
   File        : ABLLogger
   Purpose     : Logger class which logs the ABL errors, exceptions and info messages to a log file. 
   Syntax      : 
   Description : 
   Author(s)   : knangunu
   Created     : Wed Oct 26 11:57:29 IST 2016
   Notes       : 
 ----------------------------------------------------------------------*/


BLOCK-LEVEL ON ERROR UNDO, THROW.

USING OpenEdge.Core.LogLevelEnum FROM PROPATH.
USING abl-logger.ABLLogger FROM PROPATH.
USING abl-logger.LogLevelType FROM PROPATH.

CLASS abl-logger.ABLLogger:
    
	/*------------------------------------------------------------------------------
	 Purpose:
	 Notes:
	------------------------------------------------------------------------------*/
	DEFINE PUBLIC STATIC VARIABLE logger AS ABLLogger.

	
		
	CONSTRUCTOR PRIVATE ABLLogger (  ):
	    
    	
	END CONSTRUCTOR.
	
	METHOD STATIC PUBLIC ABLLogger getInstance():
	    IF logger EQ ? THEN 
	       DO:
	           logger =  NEW ABLLogger().
	    END.
	    RETURN logger.
	    
	END METHOD.


    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
		
    
    METHOD PUBLIC VOID log(INPUT msg AS CHARACTER):
 
        log("Exception Occurred: ", msg).
        
    END METHOD.
    
    
    METHOD PUBLIC VOID log(INPUT excptn AS CHARACTER, INPUT msg AS CHARACTER):
 
        log(excptn, msg, LogLevelType:ERROR:GetValue()).        
        
    END METHOD.
        
    
     METHOD PUBLIC VOID log(INPUT excptn AS CHARACTER, INPUT msg AS CHARACTER, INPUT loglevel AS INT64):
       
       define variable logType as CHARACTER NO-UNDO.
       
       
       if logLevel = LogLevelType:WARNING:GetValue() then 
            do:
                logType = "WARNING".
        END.
        else if logLevel = LogLevelType:DEBUG:GetValue() then 
            do:
                logType = "DEBUG".         
        END.
        else if logLevel = LogLevelType:ERROR:GetValue() then 
            do:
                logType = "ERROR".         
        END.
        else if logLevel = LogLevelType:INFO:GetValue() then 
            do:
                logType = "INFO".         
        END.
        
                
        OUTPUT TO value("logger.txt") APPEND.
        PUT UNFORMATTED 
            "[" logType  "]: " excptn   " "  msg "~n" SKIP.
        OUTPUT CLOSE.
        
        
    END METHOD.
    
END CLASS.
