/// @description end move
image_index = 1;
canDealDamage = 0;
speed = 0;
snd_play(choose(sndKunaiCritHit1,sndKunaiCritHit2));
collisionX = x;
collisionY = y;
BackCont.shake += 5;

if instance_exists(Player)
{
	if Player.skill_got[5]
	{
		BackCont.shake += 6;
		if Player.skill_got[17] = 1
			snd_play(sndLightning3,0.1,true)
		else
			snd_play(sndLightning1,0.1,true)
		
		var ang = direction;
		repeat(3)
		{
			with instance_create(xprev,yprev,Lightning)
			{
				dmg += other.loops;
				image_angle = ang;
				team = other.team
				ammo = 10;
				event_perform(ev_alarm,0)
				with instance_create(x,y,LightningSpawn)
					mage_angle = other.image_angle
			}
			ang += 120;
		}
	}
}

