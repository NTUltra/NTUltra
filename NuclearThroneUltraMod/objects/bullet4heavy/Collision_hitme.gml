/// @description Massive Knockback!
if other.team != team and other.my_health > 0
{
	instance_destroy()
	var hits = ds_list_create();
	var range = 12;
	if instance_exists(Player) && Player.skill_got[16] //Recycle Gland
	{
		range += 4;
	}
	var direct = other.id;
	var roidBuff = instance_exists(Player) && Player.ultra_got[28] ? 1 : 0;
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
	    // code here
		with hits[| i]
		{
			if team != other.team && my_health > 0
			{
				if id == direct
				{
					DealDamage(other.dmg - roidBuff);
				}
				else
				{
					DealDamage(max(0,other.dmg - 15) - roidBuff);
				}
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,14)
				if my_health < 0
				{
					corpseBoost += 2;
				}
				scrForcePosition60fps();
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
	if other.my_health > 0
	{
		BackCont.shake += 2
		with instance_create(x,y,Knockback)
		{
			pushStrength = 24;
			target = direct;
			pushDirection = other.direction;
			pushStartX = target.x;
			pushStartY = target.y;
			var s = target.mySize;
			if s > 2
				s++;
			pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
			pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
		}
	}
with instance_create(x,y,BulletHit)
	sprite_index=sprUltraHeavyBulletHit;

	scrRecycleGland(3,6);

}



