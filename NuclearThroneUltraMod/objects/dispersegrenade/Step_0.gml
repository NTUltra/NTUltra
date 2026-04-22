with instance_create(x,y,Smoke)
	depth = other.depth + 1;
if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
	instance_create(x,y,Dust);
	snd_play(sndGrenadeRifle,0.2);
	var ang = direction;
	repeat(6)
	{
		with instance_create(xprevious,yprevious,SmallGrenade)
		{
			motion_add(ang,12)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		ang += 60;
	}
}