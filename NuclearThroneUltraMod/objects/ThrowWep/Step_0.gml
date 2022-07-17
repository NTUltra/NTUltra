if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

if !place_meeting(x,y,Wall)
image_angle += rotspeed*speed

//if curse = 1 and random(6) < 1
//instance_create(x+random(8)-4,y+random(8)-4,Curse)
if instance_exists(Player)
{
	if returnFX && speed < 3 && alarm[0] < 4
	{
		returnFX = false;
		if instance_exists(Player) && !dontteleport
		{
			snd_play_2d(sndWepReturn,0.1);
			with instance_create(x,y,ThrowWepReturnFX)
			{
				owner = Player.id;
				depth = other.depth - 1;
			}
		}	
	}
    if speed<stopSpeed
    {
		if alarm[0] < 1
			instance_destroy();
		if canHeavyHeart
		{
			canHeavyHeart = false;
			with scrDropHeavyHeart()
			{
				alarm[0] = min(alarm[0],other.alarm[0]);
			}
		}
    }
}