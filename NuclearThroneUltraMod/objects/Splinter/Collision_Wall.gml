if speed != 0
{
snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
alarm[0] = 1;
move_contact_solid(direction,16)
instance_create(x,y,Dust)
image_index = 2
image_speed = 0;
	if isGasseous
	{
		with instance_create(x,y,ToxicThrowerGas)
		{
			image_xscale -= 0.1
			image_yscale -= 0.1
			team = other.team;	
		}
		isGasseous = false;
	}
}

