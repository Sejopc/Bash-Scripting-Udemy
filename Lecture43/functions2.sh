#!/bin/bash

# You cannot leave an empty function, otherwise it will return an error, but what you can do, is to 
# put a null character, like ":" 
# Example

function1 ()
{
	:
}

echo ---------------------------

# Example of nested functions

function2()
{
	function3()
	{
		echo "This is a nested function"
	}
}

# And to call for example function3:

function2
function3 # They need to be called in the same order as they were created

echo ------------------------------

# Example a really weird function name, and its call.

_()
{
	echo "Hello there, I am $FUNCNAME"
}

_
