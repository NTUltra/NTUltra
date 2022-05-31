if instance_exists(creator)
{
	x=creator.x;
	y=creator.y;
}

if instance_exists(Player){
//if theres you are not holding the fire button
if (KeyCont.key_fire[Player.p] != 1 && KeyCont.key_fire[Player.p] != 2 && Player.keyfire != 1) && ((Player.race != 6 && Player.race != 7) || KeyCont.key_spec[Player.p] != 1 && KeyCont.key_spec[Player.p] != 2) || (KeyCont.key_swap[Player.p] = 1)
{
instance_destroy();
}
}


