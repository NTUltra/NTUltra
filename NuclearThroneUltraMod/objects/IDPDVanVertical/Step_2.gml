if alarm[3]>5
{
    if right = 1
    {
	    motion_add(90,acc);
	    direction=90;
    }
    else
    {
		motion_add(270,acc);
		direction=270;
    }
}

if hspeed > 3
	hspeed = 3;