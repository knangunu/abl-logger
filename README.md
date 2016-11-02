ABL Logger
=====

You can log ABL exceptions, warnings and messages to the log file and trouble shoot the issues.

Usage
-----
```
The module can be used in various ways:

1. Log only the exception:
ABLLogger:getInstance():log("Exception occured: "  + exception).

2. Log exception and messages
ABLLogger:getInstance():log("Exception occured: "  + exception, "Unable to locate the file").

3. Log exception, message and the log level.
ABLLogger:getInstance():log("Exception occured: "  + exception, "Unable to locate the file", WARNING).
```

Installation
------------
    apm install abl-logger

ANSI Codes
----------

http://www.inwap.com/pdp10/ansicode.txt


License
-------

ISC
