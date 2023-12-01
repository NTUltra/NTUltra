var amount = 10;
if instance_exists(Player)
{
	if Player.ultra_got[72] {
		if Player.altUltra {
			amount += 3;
		} else {
			image_xscale += 0.25;
			image_yscale += 0.25;
		}
	}
}
if instance_number(AngelActive) > 1
{
	amount -= 1;
	var isActuallyStacking = false;
	with AngelActive
	{
		if id != other.id && object_index == other.object_index
		{
			isActuallyStacking = true;
			alarm[0] += amount;
			with instance_create(x,y,AngelReActive) {
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				image_speed = other.image_speed;	
			}
		}
	}
	if isActuallyStacking
		instance_destroy();
}
alarm[0] = amount;
team = 2;
if instance_exists(Player)
{
	team=Player.team;
	Player.alarm[3] += amount + 1;
}
image_speed = (image_number-1)/alarm[0];