scrDrop(10,1)

//NOW SOME ENEMY CODE
with instance_create(x,y,MovingCorpse)
{
	skidScale = min(4,(max(2,(other.bbox_right - other.bbox_left - 1))*0.5)/6);
	mySize = other.mySize
	mask_index = other.mask_index
	if other.speed > 0
	{
		motion_add(other.direction,other.speed)
		if other.my_health != 0
			speed += max(0,-other.my_health/5)
	}
	sprite_index = other.spr_dead
	image_xscale = other.right

		
	if speed > 16
		speed = 16
	if instance_exists(Player)
	{
		var impactWrist = false;
		if Player.ultra_got[52] == 1
			speed += 2;
		if Player.skill_got[20] == 1
		{
			impactWrist = true;
			alarm[0] = 2;
			speed += 6.5;
			if Player.race=25
				speed += 2;
			if mySize > 2
				dmg += 0.5;
		}
		if mySize > 0
		{
			if impactWrist
			{
				speed /= (mySize*0.35);
			}
			else
				speed /= mySize*0.83;
		}
		if Player.skill_got[20]
		{
			speed = clamp(speed,8 ,18);
		}
	}
	else if mySize > 0
		speed /= mySize*0.83
			
	speed = min(speed,19);
}

snd_play(snd_dead)

Sleep(20+mySize*15)
if instance_exists(Player)
{
if Player.race = 4
raddrop += 1

}

//Mutations
scrEnemyDeathEvent(true);
