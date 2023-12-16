/// @description Original prop
if sprite_index != spr_hurt
sprite_index = spr_idle

if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}


if my_health <= 0
instance_destroy()
if !place_meeting(x,y,Wall)
speed = 0
