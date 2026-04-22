/// @description Wall Collision
if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
	instance_destroy()
	if instance_exists(Player)
	{
	if Player.skill_got[17] = 1
		snd_play(sndLaserUpg)
	else
		snd_play(sndLaser)
	}
	else
		snd_play(sndLaser)
	instance_create(x,y,Dust);
	var ang = direction;
	repeat(6)
	{
		with instance_create(x,y,Laser)
		{image_angle = ang;
		team = other.team
		event_perform(ev_alarm,0)
		scrCopyWeaponMod(other);
		}
		ang += 60;
	}
}