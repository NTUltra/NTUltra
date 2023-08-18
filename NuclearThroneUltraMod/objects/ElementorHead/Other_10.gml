/// @description Colours based on the ultra
if instance_exists(Player) {
	if Player.ultra_got[93] || Player.ultra_got[94] || Player.ultra_got[95] || Player.ultra_got[96]
	{
		colours = [];
	}
	if Player.ultra_got[93]
	{
		//Earth colours
		colours = array_concat(colours,[
			[201,163,120],
			[178,37,5],
			[255,255,0],
			[102,102,102],
			[97,102,49]
		]);
	}
	if Player.ultra_got[94]
	{
		//Frost colours
		colours = array_concat(colours,[
			[0,255,255],
			[255,255,255],
			[127,246,255],
			[74,229,164],
			[97,102,49]
		]);
	}
	if Player.ultra_got[95]
	{
		//Fire colours
		colours = array_concat(colours,[
			[255,255,0],
			[255,0,0],
			[102,102,102],
			[255,110,0],
			[97,102,49]
		]);
	}
	if Player.ultra_got[96] && !Player.altUltra
	{
		//Kraken & Lightning colours
		colours = array_concat(colours,[
			[158,2,255],
			[255,0,191],
			[255,255,255],
			[0,114,255],
			[0,0,255],
			[102,102,102]
		]);
	}
	if Player.ultra_got[96] && Player.altUltra
	{
		//Air colours
		colours = array_concat(colours,[
			[255,255,255],
			[130,225,255],
			[222,198,255],
			[122,250,255],
			[168,167,204]
		]);
	}
	//colours = array_unique(colours);
	debug("COLOURS: ", colours);
	numberOfColours = array_length(colours) - 1;
	currentColour = irandom(numberOfColours);
	nextColour = irandom(numberOfColours);
	lerpTime = 0;
	col = 0;
}