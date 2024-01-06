with instance_create(x,y,MovingCorpse)
{
	mySize = other.mySize
	mask_index = other.mask_index
	if other.speed > 0
	{
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
	}
	sprite_index = other.spr_dead
	image_xscale = other.right

		
	if speed > 17
		speed = 17
	if instance_exists(Player)
	{
		var impactWrist = false;
		if Player.ultra_got[52] == 1
			speed += 4;
		if Player.skill_got[20] == 1
		{
			impactWrist = true;
			alarm[0] = 2;
			speed = max(speed+8.9,9.8)//9.3
			if Player.race=25
				speed+=1.25;
		}
		else if speed > 17
		speed = 17
		if mySize > 0
		{
			if impactWrist
			{
				speed /= (mySize*0.32);
			}
			else
				speed /= mySize*0.82;
		}
			
		if Player.skill_got[20] == 1 && speed > 19
			speed = 19
	}
	else if mySize > 0
		speed /= mySize*0.82
}
var d = 4;
var w = 0;
if instance_exists(Player) && Player.ultra_got[47] && Player.altUltra
{
	d = 50;
	w = 4;
	raddrop = 10;
}
scrDrop(d,w)
scrRaddrop();