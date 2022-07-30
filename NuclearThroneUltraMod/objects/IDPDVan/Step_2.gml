event_inherited();
if alarm[3]>5
{
    if right=1
    {
    motion_add(0,acc);
    direction=0;
    }
    else
    {
    motion_add(180,acc);
	direction=180;
    }
}

if vspeed > 3
	vspeed = 3;