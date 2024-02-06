
if other.team != team && speed > 0
{
	snd_play(sndGrenadeStickWall)
	speed = 0
	x = other.x+offx
	y = other.y+offy


	with other
	{
	    if sprite_index!=spr_hurt
	    {
		    DealDamage(other.dmg)//5 for normal
		    sprite_index = spr_hurt
		    image_index = 0
		    motion_add(other.direction,3)
    
		    with instance_create(x,y,Rad)
		    {motion_add(other.direction,other.speed)
		    motion_add(random(360),random(12)+3)
		    repeat(speed)
		    speed *= 0.9}

	    }
	}


	if alarm[0]>10
		alarm[0] = 10;




}

/* */
/*  */
