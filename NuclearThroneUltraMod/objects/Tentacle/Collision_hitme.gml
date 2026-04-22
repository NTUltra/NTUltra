if other.team != team and other.my_health > 0//the thing I hit must not be myself
{
	var me = id;
	with other//enemy
	{
		if sprite_index != spr_hurt
		{
			if other.applyVenom
			{
				var alreadyVenomized = false;
				with Venom
				{
					if owner == other.id
						alreadyVenomized = true;
				}
				if !alreadyVenomized
				{
					var d = point_direction(other.x,other.y,x,y);
					with instance_create(other.x,other.y,AcidStreak)
					{
						motion_add(d + random_range(10,-10),7);
						image_angle = direction;
					}
					with instance_create(x,y,Venom)
					{
						scrCopyWeaponMod(me);
						rate += 1;
						team = me.team;
						owner = other.id;
					}
				}
				other.applyVenom = false;
			}
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(other.x,other.y,FishBoost)
			DealDamage(other.dmg);
			other.dmg = max(2,other.dmg - 1);
			if (instance_exists(Player) && Player.skill_got[43]) && team != 0 && !other.hasStunned
			{
				scrMoodSwingStun(6);
				if Player.ultra_got[97] && !Player.altUltra{
					scrMoodSwingLightningArc(22, other.x,other.y, other.team, max(1,other.dmg - 1));
					scrMoodSwingIcicle(1, id);
					scrMoodSwingFlameSpread(22);
					scrMoodSwingToxicBullet(other.x,other.y,2, other.direction,true,id);
				}
				with Tentacle
				{
					hasStunned = true;
					canMood = false;
				}
			}
			else if team != 0 {
				var pullD = other.direction+180;
				motion_add(pullD,2);
			}
			sprite_index = spr_hurt
			image_index = 0
			if other.alarm[1] < 1
			{
				snd_play(sndMeatExplo,0,true)
				with instance_create(x,y,MeatExplosion) {
					sprite_index = sprTentacleMeatExplosion;
					dmg -= 2;
				}
				with instance_create(x,y,FishBoost)
				{
					motion_add(random(360),3);
				}
				other.bloodDelay += 1;
				other.alarm[1] = other.bloodDelay;
			}
		}
		else
		{
			scrIframeSkipper(0.07);
		}
	}
}
