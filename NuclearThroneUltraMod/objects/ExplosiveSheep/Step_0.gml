//event_inherited()
//ENEMY CODE
if(alarm[0]>0)
{
my_health=maxhealth;
}
//optimise 
//WKICK
/*
if variable_local_exists("wkick") = 1
{
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
}


//ANIMATE ME PLZ
if variable_local_exists("spr_chrg") = 1
{
if sprite_index != spr_hurt and sprite_index != spr_chrg
idle=true;
if sprite_index = spr_hurt or sprite_index = spr_chrg
{if image_index > 2
idle=true;}
}
else
{
if variable_local_exists("spr_fire") = 1
{
if speed = 0
{if sprite_index != spr_hurt and sprite_index != spr_fire
idle=true;}
else
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_walk}
if sprite_index = spr_hurt// or sprite_index = spr_fire
{if image_index > 2
idle=true;}
}
else
{*/
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
//}


if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 3
speed = 3

image_xscale=right*-1;

if(my_health<1)
{
instance_destroy();
}

