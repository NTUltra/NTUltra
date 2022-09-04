event_inherited()
//WKICK
if wkick > 0
	wkick -= 1
if wkick < 0
	wkick += 1


//ANIMATE ME PLZ
if spr_fire!=false//variable_local_exists("spr_fire") = 1
{
	if speed = 0
	{if sprite_index != spr_hurt and sprite_index != spr_fire
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt and sprite_index != spr_fire
	sprite_index = spr_walk}
	if sprite_index = spr_hurt// or sprite_index = spr_fire
	{if image_index > 2
	sprite_index = spr_idle}
}
else
{
	if speed = 0
	{if sprite_index != spr_hurt
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt
	sprite_index = spr_walk}
	if sprite_index = spr_hurt
	{if image_index > 2
	sprite_index = spr_idle}
}


if walk > 0
{
	walk -= 1
	motion_add(direction,1)
}

if speed > 4
speed = 4

//Manual wall collision
var msk = mask_index;
mask_index = mskPlayer;
var wall = instance_place(x,y,WallHitMe)
if wall != noone
{
	if hspeed!=0
	{
	    if !place_free(x+hspeed,y)
	    {
	        if hspeed>0 {move_contact_solid(0,hspeed);}
	        if hspeed<0 {move_contact_solid(180,-hspeed);}  
        
	        hspeed=0;
	    }
	}
	if vspeed!=0
	{
	    if !place_free(x+hspeed,y+vspeed)
	    {
	        if vspeed>0 {move_contact_solid(270,vspeed);}
	        if vspeed<0 {move_contact_solid(90,-vspeed);}  
        
	        vspeed=0;
	    }
	}
	//x = xprevious;
	//y = yprevious;
}
mask_index = msk;