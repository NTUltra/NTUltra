/// @description Curse the player
if instance_exists(Player)
{
	with instance_create(x,y,AssassinTeleport) {
		assx = Player.x;
		assy = Player.y;
		c1 = make_color_rgb(103,27,131);
		c2 = make_color_rgb(136,36,174);
	}
	with Player
	{
		snd_play(sndCrownCurses);
		repeat(10)
			instance_create(x+random(16)-8,y+random(16)-8,Curse)
	
		curse = 1;
		bcurse = 1;
		ccurse = 1;
	}
}
instance_destroy();