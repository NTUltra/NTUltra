/// @description Tentacle on wallhit

// Inherit the parent event
event_inherited();
//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
move_outside_solid(direction,8);
	speed *= 0.8
if speed+wallbounce > 18
	speed = 18
else
{
	speed += wallbounce
	instance_create(x,y,Dust)
}
wallbounce *= 0.9

if shotgunshouldered && speed > 2
{
	if sprite_index == sprBullet2Kraken
	{
		sprite_index = sprBullet2KrakenHighDmg;
		dmg = 3;
		alarm[1]=max(alarm[1],3);
	}
	else if sprite_index == sprBullet2KrakenDisappear
	{
		sprite_index = sprBullet2Kraken;
	}
}





/// @description Tentacle!
if team == 2
{
	snd_play_fire(choose(sndTentacle,sndTentacle2));

	var xx = x + lengthdir_x(2,direction);
	var yy = y + lengthdir_y(2,direction)
	if !collision_point(xx,yy,Wall,false,false)
		with instance_create(xx,yy,Tentacle)
		{
			image_angle = other.direction;
			creator= other.creator;
			team = other.team
			ammo = 4;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
			}

			with instance_create(x,y,FishBoost)
			{
				motion_add(other.image_angle+random(60)-30,2+random(4));
			}
		}
	BackCont.shake += 1
}