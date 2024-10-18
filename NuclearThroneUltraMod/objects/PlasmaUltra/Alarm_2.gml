/// @description Jump on top of other enemies
alarm[2] = 1;
var n = instance_nearest(x,y,enemy);
if n != noone && n.team != team
{	
	var dir = point_direction(x,y,n.x,n.y);
	var dis = point_distance(x,y,n.x,n.y);
	if dis < snapRange && angle_difference(direction,dir) < 90 && !array_contains(jumpedTo,n.id)
	{
		jumpedTo[array_length(jumpedTo)] = n.id;
		with instance_create(x,y,PlasmaImpact)
		{
			team = other.team;
			scrCopyWeaponMod(other);
		}
		snd_play(sndUltraPlasmaJump,0.1);
		var xx = x;
		var yy = y;
		var step = 8;
		repeat(dis/step)
		{
			with instance_create(xx+random(14)-7,yy+random(14)-7,PlasmaFX)
			{
				friction = 0.1;
				sprite_index = sprUltraPlasmaEffect;
				motion_add(other.direction+random(30)-15,random(2));
				image_xscale += 0.5
				image_yscale = image_xscale;
			}
			xx += lengthdir_x(step,dir);
			yy += lengthdir_y(step,dir);	
		}
		x = n.x;
		y = n.y;
		var maxDis = 48;
		while (!place_meeting(x,y,Wall) && place_meeting(x,y,n) && maxDis > 0)
		{
			x += lengthdir_x(8,direction + 180);
			y += lengthdir_y(8,direction + 180);
			maxDis -= 8;
		}
		scrForcePosition60fps();
		BackCont.shake += 1;
		alarm[2] = 10;
		alarm[6] = 3;
		image_xscale += nomscale * 0.75;
		if image_xscale > nomscale
			image_xscale = nomscale;
		image_yscale = image_xscale;
		speed = max(speed - 3, 4);
	}
}