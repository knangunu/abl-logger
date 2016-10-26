ABL Logger
=====

You can log ABL messages and exceptions

Usage
-----

``` js
var clear = require('clear');
clear();
```

Example
-------

![Node Clear](http://daveeddy.com/static/media/github/node-clear.gif)

### clear([bool])

You can optionally give clear an argument of `false` to prevent it from clearing the screen.
This will not remove anything from the screen, but instead move your cursor to
position 0,0.  Much like printing a `\r` instead of a `\n` to reset the current
line of output.

Installation
------------

    npm install abl-logger

ANSI Codes
----------

http://www.inwap.com/pdp10/ansicode.txt

License
-------

ISC
