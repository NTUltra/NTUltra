if sprite_index=spr_fire && alarm[2]>0
{
image_speed=0;
image_index=4;
}
else if sprite_index=spr_fire
{
sprite_index=spr_idle
}
if sprite_index == spr_hurt && alarm[2] > 1
{
	sprite_index= spr_fire;
	image_speed=0;
	image_index=4;
}
if sprite_index=spr_prep && alarm[3]>0//prep
{
image_speed=0;
image_index=6;
}

if sprite_index=spr_vanish
{
alarm[4]=1;
image_index=18
image_speed=0;
}
if sprite_index=spr_appear
{
alarm[6]=1;
image_index=18
image_speed=0;
}
/*
if sprite_index=spr_vanish{
visible=false;
x=xstart;
y=ystart;
alarm[1]=60;
alarm[4]=30;//Delay before appearing
atk=4;
vanish=-1;
}


/* */
/*  */
