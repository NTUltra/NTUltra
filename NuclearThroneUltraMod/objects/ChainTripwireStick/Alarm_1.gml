/// @description TRAPPED YA
alarm[1] = 1;
if instance_exists(ChainTripwireStick) && instance_number(ChainTripwireStick) > 1
{
	var xx = x + lengthdir_x(18,image_angle+180);
	var yy = y + lengthdir_y(18,image_angle+180);
	with ChainTripwireStick
	{
		if id != other.id
		{
			var xxx = x + lengthdir_x(18,image_angle+180);
			var yyy = y + lengthdir_y(18,image_angle+180);
			if collision_line(xx,yy,xxx,yyy,Wall,false,false) == noone &&
			collision_line(x,y,other.x,other.y,enemy,false,false) != noone
			{
				alarm[1] = 60;
				alarm[0] += 10;
				with other {
					alarm[0] += 10;
					alarm[4] = 5;
					alarm[1] = 60;
					fireTarget = other.id;
					fireTargetX = other.x;
					fireTargetY = other.y;
					snd_play(sndDiscHit);
				}
				exit;
			}
		}
	}
	with instance_create(xx,yy,Flame)
	{
		scrCopyWeaponMod(other);
		vspeed -= 1;
		team = other.team;	
	}
}