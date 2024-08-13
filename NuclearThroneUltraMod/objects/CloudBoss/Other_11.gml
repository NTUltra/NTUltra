/// @description Bitchass screen lasers Horitontal
var range = 400;
var am = laserAmount;
var step = range/am;
var yy = target.y - (range*0.5);
var flip = false;
if target.x < x
	flip = true;
repeat(am)
{
	with instance_create(x,yy,PrepScreenLaser) {
		team = other.team;
		owner = other.id;
		originX = other.x;
		originY = other.y;
		isHorizontal = true;
		isFlipped = flip;
		sh = (camera_get_view_width(view_camera[0])*0.5) + 3;
	}
	yy += step;
}
snd_play(sndLaserCrystalCharge);
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1
alarm[1] += actTime + random(actTime);