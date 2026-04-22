/// @description Wall Collision
if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
	instance_create(x,y,Dust);
	var ang = direction;
	snd_play(sndFlakExplode,0.1,true)
	repeat(6)
	{
		with instance_create(x,y,Bullet2)
		{
			motion_add(ang,14)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		ang += 60;
	}
}