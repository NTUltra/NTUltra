///scrFreezeTarget();
// /@description
///@param
function scrFreezeTarget(stunTime,frostDamage = 2){
	if frozen == noone
	{
		frozen = instance_create(x,y,FrozenEnemy);
		with frozen
		{
			debrisAmount = frostDamage;
			spriteSize = max(other.sprite_width,other.sprite_height);
			var s = min(2,other.mySize);
			image_xscale=s*choose(1,-1);
			image_yscale=s;
			xx=other.x
			yy=other.y
			owner=other.id;
		}
	}
	else
	{
		with frozen {
			var perc = 0.25;
			var mmax = 4;
			if instance_exists(Player) && Player.race == 25
			{
				perc = 0.35;
				mmax = 5;
			}
			debrisAmount = min(debrisAmount + perc, mmax);
		}
	}
	if alarm[1] > stunTime
		stunTime *= 0.5;
	if alarm[11] < 60
		alarm[11] += stunTime + 5;
	if (alarm[1] > 3 && alarm[1] < (stunTime + 3) && alarm[11] < 20)
		alarm[1] += stunTime;	
		if mySize < 8
		{
			speed = 0;
			walk = 0;
		}
		if (instance_exists(Player) && Player.skill_got[43] && Player.ultra_got[97] && !Player.altUltra && team != 0)
		{
			scrMoodSwingStun(7);
			scrMoodSwingFlameSpread(24);
			scrMoodSwingLightningArc(22,x,y,2,4);
			scrMoodSwingToxicBullet(x,y,1);
		}
}