if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}

var ang = random(360)
repeat(10)//PLASMA CANNON 10
{
	with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),PlasmaBall)
	{
		scrCopyWeaponMod(other);
		motion_add(ang,2);
		direction = ang;
		image_angle = direction
		originalDirection=ang;
		team = other.team
	}
	ang += 36;
}

