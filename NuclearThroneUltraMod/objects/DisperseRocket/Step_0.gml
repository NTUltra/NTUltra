with instance_create(x,y,Smoke)
	depth = other.depth + 1;

if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
	instance_create(x,y,Dust)
	var ang = direction;
	snd_play(sndRocket);
	repeat(3)
	{
		with instance_create(x,y,Rocket)
		{
			motion_add(other.image_angle+90,2)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		ang += 120;
	}
}