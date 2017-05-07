#!/bin/bash

# If all the commands of a function are written on a single line, they need to be separated by a 
# semi-colon.

# Example:
# function_name() { command1; command2; command3; }

# And, to call a function, just type its name without '()', i.e:  function_name
# If function requires parameters: function_name param1 param2 param3

# You cannot leave a function EMPTY, otherwise it'll give you an error.

function1()
{
	echo "Calling \"f2\" from \"f1\"."
	function2
}

function2()
{
	echo "This is \"f2\"."
}

function1


