
if instance_exists(Player){
	if team!=Player.team{//enemy

		repeat(8)
		{
		with instance_create(x,y,EnemyIceFlame)
		{motion_add(random(360),0.2+random(2))
		team = other.team}
		}

	}
	else{
		var ang = direction;
		var angstep = 360/fireExplosionAmount;
		repeat(fireExplosionAmount)
		{
		with instance_create(x,y,IceFlame)
		{motion_add(ang,4+random(1))
		team = other.team
		}
		ang += angstep;
		}
	}
}
snd_play(sndFlareExplode);