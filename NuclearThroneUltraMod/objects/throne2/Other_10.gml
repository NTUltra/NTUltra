/// @description Fire
sprite_index = spr_fire;
var dir = point_direction(x,y,target.x,target.y);
var odis = fireOffset;
var xx = x + lengthdir_x(odis,dir+90);
var yy = y + lengthdir_y(odis,dir+90);
audio_play_sound_on(emitter,sndEraser,false,4);
with instance_create(xx,yy,EnemyBullet1Square)
{
	motion_add(dir,other.pSpeedJawbreaker)
	image_angle = direction
	team = other.team
}
xx = x + lengthdir_x(odis,dir-90);
yy = y + lengthdir_y(odis,dir-90);
with instance_create(xx,yy,EnemyBullet1Square)
{
	motion_add(dir,other.pSpeedJawbreaker)
	image_angle = direction
	team = other.team
}
alarm[2] = max(sprite_get_number(spr_fire)/image_speed,alarm[2]);
alarm[1] += alarm[2];
ammo --;
if ammo > 0
{
	alarm[3] = fireRate;
	alarm[2] += alarm[3];
	alarm[1] += alarm[3]+5;
}
instance_create(x,y,BigWallBreak);
if place_meeting(x,y,Floor)
	scrDrop(7,0);
