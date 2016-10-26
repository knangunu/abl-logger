
 
/*------------------------------------------------------------------------
   File        : ABLLogger
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : knangunu
   Created     : Wed Oct 26 11:57:29 IST 2016
   Notes       : 
 ----------------------------------------------------------------------*/


BLOCK-LEVEL ON ERROR UNDO, THROW.

USING abl-logger.ABLLogger FROM PROPATH.
USING OpenEdge.Core.LogLevelEnum FROM PROPATH.

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
 
        log(excptn, msg, 2).        
        
    END METHOD.
        
    
     METHOD PUBLIC VOID log(INPUT excptn AS CHARACTER, INPUT msg AS CHARACTER, INPUT logLevel AS INT64):
       
       define variable logType as CHARACTER INITIAL "ERROR".
       
       
       if logLevel = LogLevelEnum:WARN:GetValue() then 
            do:
                logType = "WARNING".
        END.
        //Similarly can be handled for other log levels.
        
                
        OUTPUT TO value("logger.txt") APPEND.
        PUT UNFORMATTED 
            "[" logType  "]: " excptn   " "  msg "~n" SKIP.
        OUTPUT CLOSE.
        
        
    END METHOD.
    
END CLASS.
