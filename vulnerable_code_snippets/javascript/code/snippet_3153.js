let userInput = "';alert('Injected code')//";
eval("var x = " + userInput);