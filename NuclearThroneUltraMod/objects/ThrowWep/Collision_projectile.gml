if instance_exists(Player){

if Player.ultra_got[53]
{
if team != other.team
{

if other.typ =1
{
other.team = team
with other
{
	event_user(15);
	if instance_exists(enemy)
	{
		var n = instance_nearest(x,y,enemy)
		direction = point_direction(x,y,n.x,n.y);
	}
	else
		direction = other.image_angle
		
	image_angle = direction
	speed *= 2;
	snd_play(sndRicochet,0.1,true);
	with instance_create(x,y,Deflect)
		image_angle = other.direction
}

}
if other.typ = 2
{
with other
instance_destroy()
}

}
}
}

