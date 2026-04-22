/// @description Wall Collision
if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_create(x,y,Dust)
	snd_play(sndSuperDiscGun);
	var ang = direction;
	var aimDir = image_angle+90;
	repeat(5)
	{
		with instance_create(x,y,SpinnerYoyo)
		{
			scrCopyWeaponMod(other);
			dmg = 10;
			followOwner = false;
			tx = x;
			ty = y;
			maxlength -= 32;
			team = other.team;
			var sins = sin(aimDir);
			if sins > 0
			{
				motion_add(aimDir + 10,6);
				rotation = -200;
			}
			else
			{
				motion_add(aimDir - 10,6);
				rotation = 200;
			}
			image_angle = direction
			oDir = direction;
			owner = other.id
		}
		aimDir += 72;
	}
		instance_destroy()

}