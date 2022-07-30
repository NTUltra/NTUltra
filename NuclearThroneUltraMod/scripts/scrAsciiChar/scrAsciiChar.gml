function scrAsciiChar(argument0) {
	if (argument0 ==  32)  return("Spacebar");

	else if (argument0 ==  19)  return("PAUSE/BREAK");

	else if (argument0 ==  37)  return("Left Arrow");
	else if (argument0 ==  38)  return("Up Arrow");
	else if (argument0 ==  39)  return("Right Arrow");
	else if (argument0 ==  40)  return("Down Arrow");

	else if (argument0 ==  9)   return("Tab");
	else if (argument0 ==  20)  return("Capslock");
	else if (argument0 ==  16)  return("Shift");
	else if (argument0 ==  17)  return("Ctrl");
	else if (argument0 ==  18)  return("Alt");
	else if (argument0 ==  162)  return("L Ctrl");
	else if (argument0 ==  163)  return("R Ctrl");
	
	else if (argument0 > 47 && argument0 < 91)  return( chr(argument0) ); // [0]-[9], [a]-[z]
	
	else  return("Unknown Key");



}
