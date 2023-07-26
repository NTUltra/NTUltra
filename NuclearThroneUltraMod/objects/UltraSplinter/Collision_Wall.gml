if canBounce
{
	if isGaseous
	{
		with instance_create(xprevious,yprevious,theGass)
		{
			image_xscale -= 0.1
			image_yscale -= 0.1
			team = other.team;
			direction = other.direction + 180;
			speed += 0.1;
			if instance_exists(Player) && Player.skill_got[5]
				speed += 0.1;
		}
	}
	move_bounce_solid(false)
	canBounce = false;
}
else if speed != 0
{
	snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
	speed = 0
	move_contact_solid(direction,16)
	instance_create(x,y,Dust)
	image_index = 2
}

