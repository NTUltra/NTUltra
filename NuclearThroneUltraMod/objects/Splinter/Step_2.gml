if hasWallCollision && collision_line(xprev,yprev,x,y,Wall,false,false)
{
	event_user(1);
}
if speed<1 && alarm[1] < 1
{
	alarm[1] = 10+random(20);//delay before destroying
	move_contact_solid(direction,16)
	image_index = 2
	image_speed = 0;
	speed = 0;
}
else if alarm[11] < 1 || (um != ultramods.rocketBolt && um != ultramods.plasmaBolt && um != ultramods.laserBolt
&& um != ultramods.shotgunSplinterElectro && um != ultramods.shotgunBolt && um != ultramods.boltBullet)
{
	scrBoltMarrow(1,2);
	with scrBoltTrail(trailColour,trailShrinkRate,trailSize)
	{
		image_speed -= 0.1;
	}
}
