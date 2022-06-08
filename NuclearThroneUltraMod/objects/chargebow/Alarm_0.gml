/// @description increase charge
if rate < maxcharge && instance_exists(Player)
	alarm[0] = chargetime;
debug("chargetime",chargetime);
debug("rate",rate);
debug("maxcharge",maxcharge);
if instance_exists(creator)
{
	//FIRING
	debug("KeyCont.key_spec ",KeyCont.key_spec[Player.p]);
	debug("alarm[0] = ",alarm[0]);
	if (KeyCont.key_fire[Player.p] == 1 or KeyCont.key_fire[Player.p] == 2 or Player.keyfire == 1 or Player.clicked == 1 or KeyCont.key_spec[Player.p] == 1 or KeyCont.key_spec[Player.p] == 2)
	{
		debug("charge");
		snd_play(sndSwapBow,0,false,false,3,false,false,0.8,false,id,1+(rate/maxcharge));
		BackCont.shake+=3+rate;
		rate++;
		Sleep(5*rate);
		with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
		{
			sprite_index = other.chargeSpr;
			motion_add(point_direction(x,y,other.x,other.y),2+random(1))
			alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
		}
	}
}
else
{
	instance_destroy();	
}
