/// @description Init
alarm[0] = 1;
colours = [
[158,2,255],
[234,19,0],
[0,255,255],
[0,114,255],
[97,102,49]
];
numberOfColours = array_length(colours) - 1;
currentColour = irandom(numberOfColours);
nextColour = irandom(numberOfColours);
lerpTime = 0;
col = 0;