
if instance_exists(Player){
	if team!=Player.team{//enemy

		repeat(8)
		{
		with instance_create(x,y,TrapFire)
		{motion_add(random(360),0.2+random(2))
		team = other.team}
		}

	}
	else{
		var ang = direction;
		var angstep = 360/fireExplosionAmount;
		repeat(fireExplosionAmount)
		{
		with instance_create(x,y,Flame)
		{motion_add(ang,3+random(2))
		team = other.team
		move_contact_solid(direction,14)}
		ang += angstep;
		}
	}
}
audio_stop_sound(sndFlamerLoop)

