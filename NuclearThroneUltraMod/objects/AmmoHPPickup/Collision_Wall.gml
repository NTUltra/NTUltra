if instance_exists(Player){
	if !Player.ultra_got[12]
    {
		move_bounce_solid(false)
    }
    else
    {
		mask_index=mskPickupThroughWall;
		alarm[1]=10;
    }
}
else
{
	move_bounce_solid(false)	
}
