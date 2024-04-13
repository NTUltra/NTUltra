/// @description Spark
if other.team != team and other.my_health > 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	if other.sprite_index != other.spr_hurt
	{
		snd_play(choose(sndBurn,sndSpark1,sndSpark2),0.01)
		with other
		{
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0;
			motion_add(other.direction,0.4 + (other.speed*0.1))

			if alarm[11]>0//frozen
			{
				with Player
				{
					if race == 24
						scrUnlockBSkin(24,"FOR BURNING AN ENEMY#THAT IS FROZEN AS ELEMENTOR",0);
				}
			}
			snd_play(snd_hurt, hurt_pitch_variation,true);
			if (other.object_index != MoodFlame && instance_exists(Player) && Player.skill_got[43] && Player.ultra_got[97] && !Player.altUltra && team != 0)
			{
				scrMoodSwingStun(5);
				scrMoodSwingIcicle(1, id);
			}
		}
		with instance_create(x,y,Lightning)
		{
			image_angle = other.direction + random_range(90,-90);
			dmg -= 2;
			team = other.team
			ammo = 4 + irandom(4);
			scrCopyWeaponMod(other);
			event_perform(ev_alarm,0)
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