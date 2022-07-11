/// @description Normal thing but dont die immediatly
if sprite_index != spr_hurt
sprite_index = spr_idle

if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}


if my_health <= 0 && alarm[0] < 1 && !instance_exists(SpiralCont) && !instance_exists(GenCont)
instance_destroy()

speed = 0

