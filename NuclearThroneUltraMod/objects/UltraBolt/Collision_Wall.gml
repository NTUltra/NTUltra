
if wallsdestroyed<1{

    if speed != 0
    {
    snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
    speed = 0
    move_contact_solid(direction,16)
    instance_create(x,y,Dust)
    }
}
else{
	x = xprevious;
	y = yprevious;
	speed = clamp(speed,12,18);
	with instance_create(x+hspeed,y+vspeed,BoltWallBreak) {
		image_angle = other.image_angle;	
	}
	with other
	{
		instance_destroy();
		instance_create(x,y,FloorExplo);
	}
	wallsdestroyed-=1;
}

