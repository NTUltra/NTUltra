/// @description increase charge
if instance_exists(creator)
{
	if (scrCanChargeChargeGun())
	{
		rate ++;
		snd_play(sndNadeAlmost,0,true,false,3,false,false,0.6,false,id,1+(rate/maxcharge));
		creator.wkick = 1;
		with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
		{
			motion_add(point_direction(x,y,other.x,other.y),2+random(1))
			alarm[0] = 3 + speed;
		}
		BackCont.shake+=1+rate*0.1;
	}
}

if rate < maxcharge && instance_exists(Player)
{
	alarm[0] = chargetime;
}
else
{
	alarm[1] = 0;
}