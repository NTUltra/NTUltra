event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}

if speed > maxSpeed
speed = maxSpeed
if sprite_index != spr_hurt && 
(alarm[2] > 0 || alarm[4] > 0 || alarm[5] > 0 || alarm[6] > 0 || alarm[8] > 0 || alarm[10] > 0)
	sprite_index = spr_fire;
if sprite_index == spr_appear
	speed = 0;