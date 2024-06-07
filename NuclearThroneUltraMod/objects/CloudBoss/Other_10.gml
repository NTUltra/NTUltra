/// @description Bitchass screen lasers vertical
var range = 400;
var am = 8;
var step = range/am;
var xx = target.x - (range*0.5);
var flip = false;
if target.y < y
	flip = true;
repeat(am)
{
	with instance_create(xx,y,PrepScreenLaser) {
		team = other.team;
		owner = other.id;
		originX = other.x;
		originY = other.y;
		isFlipped = flip;
	}
	xx += step;
}
snd_play(sndLaserCrystalCharge);
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1
alarm[1] += actTime + random(actTime);