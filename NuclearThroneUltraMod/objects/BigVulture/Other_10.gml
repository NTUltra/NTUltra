/// @description Start a charge (tell)
alarm[5] = 15;
alarm[1] += 16;
spr_idle = sprBigVultureChargeTell;
spr_walk = sprBigVultureChargeTell;
speed = 0;
snd_play(sndBigVultureChargeTell,0,false,false,10,false,false,0.82,false,id);
scrTarget();
if target != noone
{
	direction = point_direction(x,y,target.x,target.y);
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
chargeDirection = direction
gunangle = direction;
