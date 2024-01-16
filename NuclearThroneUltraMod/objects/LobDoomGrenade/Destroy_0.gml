/// @description Replace me with a nice doomguy
instance_create(x,y,Smoke);
snd_play(choose(sndDoomGuy1,sndDoomGuy2,sndDoomGuy3,sndDoomGuy4,sndDoomGuy5),0.1,false,true,5,false,false,0.7);
with instance_create(x,y,DoomGrenade)
{
	scrCopyWeaponMod(other);
	direction = other.direction;
	speed = other.speed;
	right = other.image_xscale;
	if hspeed < x
		right = -1
	else if  hspeed > x
		right = 1
	walk=6+irandom(5);
	team = other.team
}

