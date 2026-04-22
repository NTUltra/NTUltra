/// @description Tentacle
if other.team != team and other.my_health > 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	if other.sprite_index != other.spr_hurt
	{
		snd_play(choose(sndBurn,sndTentacle,sndTentacle2),0.01)
		with other
		{
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0;
			motion_add(other.direction,0.4 + (other.speed*0.5))

			if alarm[11]>0//frozen
			{
				with Player
				{
					if race == 24
						scrUnlockBSkin(24,"FOR BURNING AN ENEMY#THAT IS FROZEN AS ELEMENTOR",0);
				}
			}
			snd_play(snd_hurt, hurt_pitch_variation,true);
			if (other.canMood && other.object_index != MoodFlame && instance_exists(Player) && Player.skill_got[43] && Player.ultra_got[97] && !Player.altUltra && team != 0)
			{
				scrMoodSwingStun(4);
				scrMoodSwingLightningArc(22,other.x,other.y,other.team,other.dmg)
				with Flame
					canMood = false;
				scrMoodSwingToxicBullet(other.x,other.y,1,true,id);
				scrMoodSwingIcicle(1, id);
			}
		}
		with instance_create(x,y,Tentacle)
		{
			canMood = other.canMood;
			creator = other.id;
			image_angle = other.direction + random_range(90,-90);
			team = other.team
			ammo = 6 + irandom(4);
			isog = false;
			scrCopyWeaponMod(other);
			event_perform(ev_alarm,0)
			with instance_create(x,y,FishBoost)
		    {
				motion_add(direction + random(60)-30,2+random(4));
		    }
		}
		instance_destroy(id,false);
		with instance_create(x,y,Smoke) {
			speed = other.speed * 0.5;
			direction = other.direction;
		}
	}
	else
	{
		if UberCont.normalGameSpeed == 60
		{
			x += (other.x-x)*0.125
			y += (other.y-y)*0.125
		}
		else
		{
			x += (other.x-x)*0.25
			y += (other.y-y)*0.25
		}
	}
}