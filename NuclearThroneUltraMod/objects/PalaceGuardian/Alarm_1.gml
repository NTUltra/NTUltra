///@description AI
if instance_exists(Player) && !fire && sprite_index != spr_appear && sprite_index != spr_disappear 
{

alarm[1] = actTime+random(actTime);

scrTarget()
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if random(5) < 3
		{
			event_user(0);
		}
		
		if random(4) < 3 {
			alarm[2] = 15;
		}
		
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
}

}
else
{
	alarm[1] = 20;
}

if random(3) < 1 {
	direction = random(360)
}