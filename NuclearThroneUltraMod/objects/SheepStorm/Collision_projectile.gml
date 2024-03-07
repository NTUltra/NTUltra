if !instance_exists(Player)
{instance_destroy() exit;}
if Player.sheepPower < Player.sheepPowerToHaveEffect
	exit;
if other.isGrenade && Player.ultra_got[51] {
	snd_play(sndRicochet,0.1,true);
	with other
		scrDeflectNade(point_direction(other.x,other.y,x,y));
}
if team != other.team
{
	Player.sheepPower -= projectileHitBrake*min(2,round(other.dmg*0.5));
	Player.speed *= 0.4;
	Sleep(2);
	BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
	BackCont.shake += 5
	if other.typ == 2
	{
		BackCont.shake += 1;
		with other{
		instance_destroy();}
	}
	else if (Player.ultra_got[51]) {
	    //deflect
		BackCont.shake += 2;
		if other.typ == 1
		{
			with other
			{
				team = other.team;
				snd_play(sndRicochet,0.1,true);
				event_user(15);
				if instance_exists(enemy)
				{
					var n = instance_nearest(x,y,enemy)
					direction = point_direction(x,y,n.x,n.y);
				}
				else
					direction = point_direction(other.x,other.y,x,y);
				speed *= 2;
			    image_angle = other.direction
				speed += 1;
			
			    with instance_create(x,y,Deflect)
					image_angle = other.direction
			}
		}
		else if other.typ == 0 && !other.canBeMoved
		{
			with other
			{
				var d = point_distance(xstart,ystart,other.x,other.y) - 1;
				x = xstart + lengthdir_x(d,image_angle);
				y = ystart + lengthdir_y(d,image_angle);
				image_xscale = point_distance(x,y,xstart,ystart)*0.5
			}
			Player.sheepPower += 0.1;
		}
		else
		{	with other
				instance_destroy();	
		}
	} else if other.typ == 1
	{
		snd_play(sndProjectileDestroy,0.1,true);
		BackCont.shake += 1;
		with other{
		instance_destroy();}
	}
}

