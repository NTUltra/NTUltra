/// @description Init almost creditlike
depth = -99999;
alarm[0] = 15;
dullText = "";
text = "";
text = ""
inputDelay = 5;
alarm[2] = inputDelay;
tutorialIndex = 0;
tutorial = [
	["",20],
	["YOU CAN NOW USE <g>ALTERNATIVE ROUTES<g>",170],
	//["LOOK FOR THIS <w>ICON<w>#UPON <w>ENTERING<w> AN <w>AREA<w>",200],
	["MOST <w>AREAS<w> WILL HAVE A CHANCE#TO SPAWN <aq>INVERTED PORTALS<aq>",170],
	["",15],
]
instance_create(x,y,ForceInversion);