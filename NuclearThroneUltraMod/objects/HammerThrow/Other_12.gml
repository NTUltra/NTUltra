/// @description return
collisionX = x;
collisionY = y;
direction = point_direction(x,y,Player.x,Player.y);
var dis = point_distance(x,y,Player.x,Player.y);
leftOverSpeed = clamp(speed,leftOverSpeed,12);
speed = 0;
offsetX = x + lengthdir_x(dis*0.5,direction) + lengthdir_x(dis * curveAmount,direction + curveDirection);
offsetY = y + lengthdir_y(dis*0.5,direction) + lengthdir_y(dis * curveAmount,direction + curveDirection);
canBeMoved = false;
BackCont.shake += 5;
BackCont.viewx2 += lengthdir_x(20,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,direction)*UberCont.opt_shake
var shuffleTime = 9;
if speed > 0
	shuffleTime -= 2;
alarm[4] = 3;
if instance_exists(Player)
{
	if Player.skill_got[5]
	{
		alarm[4] = 1;
		shuffleTime = 2;
		shufleDamage = 1;
		snd_play(choose(sndSpark1,sndSpark2),0.1,true);
		var xz = x;
		var yz = y;
		while (place_meeting(xz,yz,Wall))
		{
			xz =+ lengthdir_x(2,direction);
			yz =+ lengthdir_y(2,direction);
		}
		xz =+ lengthdir_x(8,direction);
		yz =+ lengthdir_y(8,direction);
		var ang = direction;
		repeat(3)
		{
			with instance_create(xz,yz,Lightning)
			{
				image_angle = ang;
				team = other.team
				ammo = 6;
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			ang += 120;
		}
	}
}
alarm[3] = 1;
alarm[2] = shuffleTime;
angleReturn = angle_difference(direction,image_angle)/shuffleTime;