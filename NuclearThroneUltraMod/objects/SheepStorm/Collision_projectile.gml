if !instance_exists(Player)
{instance_destroy() exit;}
if Player.sheepPower < Player.sheepPowerToHaveEffect
exit;

if team != other.team
{
	Player.sheepPower -= projectileHitBrake;
	Player.speed -=1;
	Sleep(2);
	BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
	BackCont.shake += 5
	if other.typ = 2 or (other.typ = 1 && Player.ultra_got[51]=0)
	{
		with other{
		instance_destroy();}
	}
	else if (Player.ultra_got[51]=1){
	    //deflect
		BackCont.shake += 1;
	    if other.typ=1
		{
			with other
			{
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
	    else if other.typ=2
	    {
	    with other
	    instance_destroy()
	    }
	}
}

