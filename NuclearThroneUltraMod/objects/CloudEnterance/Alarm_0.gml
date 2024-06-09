/// @description SHAKE
alarm[0] = 1;
BackCont.shake += shake;
shake += 0.25;
width -= 1;
if width < 0
	width = 0;