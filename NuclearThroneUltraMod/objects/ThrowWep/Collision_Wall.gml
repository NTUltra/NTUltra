move_bounce_solid(true)
move_outside_solid(point_direction(other.x+8,other.y+8,x,y),2)
speed*=0.8;
if instance_exists(Player)
{
	if Player.ultra_got[53] == 1 || Player.ultra_got[54] == 1 || Player.ultra_got[55] == 1 || Player.ultra_got[56] == 1
	{
		//BOUNCE
		if instance_exists(enemy)
		{
			var nearest = instance_nearest(x,y,enemy);
			direction = point_direction(x,y,nearest.x,nearest.y);
		}
	} 
	if Player.ultra_got[54] == 1
	{
		with other
		{
			if !place_meeting(x,y,FloorExplo)
			{
				snd_play(sndExplosion);
				instance_create(x+8,y+8,Explosion);
			}
			instance_destroy();
			instance_create(x,y,FloorExplo);
		}
	}
}