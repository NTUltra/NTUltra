//event_inherited()
//ENEMY CODE

if speed = 0
{if sprite_index != spr_hurt
idle=true;}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
idle=true;}
//}

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 3 && my_health > 0
speed = 3

image_xscale=right*-1;

if(my_health<1 && alarm[0] < 1)
{
	instance_destroy();
}


