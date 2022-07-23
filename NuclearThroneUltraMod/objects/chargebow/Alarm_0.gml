/// @description increase charge
if rate < maxcharge && instance_exists(Player)
	alarm[0] = chargetime;
if instance_exists(creator)
{
	//FIRING
	if (KeyCont.key_fire[Player.p] == 1 or KeyCont.key_fire[Player.p] == 2 or Player.keyfire == 1 or Player.clicked == 1 or KeyCont.key_spec[Player.p] == 1 or KeyCont.key_spec[Player.p] == 2)
	{
		snd_play(sndSwapBow,0,true,false,3,false,false,0.6,false,id,1+(rate/maxcharge));
		BackCont.shake+=2+rate;
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
