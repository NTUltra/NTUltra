/// @description Fire
direction = point_direction(x,y,target.x,target.y)+180
repeat(4)
instance_create(x+right*10+random(4),y-6+random(4),Smoke);

speed*=0.4;
image_index = 0
sprite_index = spr_fire
snd_play(sndGrenade)


with instance_create(x,y,TeaPotMissile)
{
	motion_add(other.direction+180,6)
	team = other.team;
}