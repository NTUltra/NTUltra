/// @description Collision
if alarm[4] > 0
{
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
	walk = max(1,walk);
	motion_add(direction,3);
	motion_add(originalDirection,4);
	speed = maxSpeed;
}
alarm[2] = 1;
var hits = ds_list_create();
var t = team;
var dealtDamage = false;
var tx = x;
var ty = y;
team = 2;
var al = collision_circle_list(x,y,24,hitme,false,false,hits,false)
for (var i = 0; i < al; i++) {
	// code here
	with hits[| i]
	{
		if team != other.team && my_health > 0
		{
			dealtDamage = true;
			tx = x;
			ty = y;
			DealDamage(other.dmg)
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4);
			direction = other.direction;
		}
	}
}
ds_list_destroy(hits);
instance_create(x,y,Dust);
team = t;
if dealtDamage
{	
	x += (tx - x) * 0.5;
	y += (ty - y) * 0.5;
	instance_destroy();
}