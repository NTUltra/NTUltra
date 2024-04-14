if image_index < 1
image_index += random(0.04)
else
image_index += 0.4

if !place_meeting(x,y,Wall)
image_angle += rotspeed*speed

//if curse = 1 and random(6) < 1
//instance_create(x+random(8)-4,y+random(8)-4,Curse)
if instance_exists(Player)
{
	if returnFX && speed < 3 && alarm[0] < 4 && Player.bwep == 0
	{
		returnFX = false;
		if instance_exists(Player) && !dontteleport
		{
			snd_play_2d(sndWepReturn,0.1);
			with instance_create(x,y,ThrowWepReturnFX)
			{
				owner = Player.id;
				depth = other.depth - 1;
			}
		}	
	}
    if speed<stopSpeed
    {
		if alarm[0] < 1
			instance_destroy();
		if canHeavyHeart
		{
			canHeavyHeart = false;
			with scrDropHeavyHeart()
			{
				alarm[0] = min(alarm[0],other.alarm[0]);
			}
		}
    }
}
if speed > 1
{
	var msk = mask_index;
	mask_index = sprite_index;
	var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	if al > 0 && instance_exists(Player) && Player.ultra_got[55]
		scrDrop(28,0.02);
	for (var i = 0; i < al; i++) {
		with hits[| i]
		{
			if other.team != team and my_health > 0
			{
				if instance_exists(Player) && Player.ultra_got[54] == 1
				{
					snd_play(sndExplosion);
					instance_create(x+8,y+8,Explosion);
				}
				if sprite_index != spr_hurt
				{
					DealDamage(other.dmg);
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.direction,8)

					if instance_exists(Player)
					{
					    if Player.ultra_got[55] = 1//ULTRA C PANDA
					    {
							repeat(4)//16 is one ultra lazerpistol ammo
					        {
						        with instance_create(x,y,Rad)
						        {motion_add(random(360),random(2)+3)
						        repeat(speed)
						        speed *= 0.9}
					        }
					    }
					}
					snd_play(snd_hurt, hurt_pitch_variation);
					with instance_create(x,y,ImpactFX)
					{
						sprite_index = sprThrowHit;	
					}
				}

			//move_bounce_solid(false)
			    if instance_exists(Player)
			    {
					with other
					{
				        if !pierce
				        {
							direction+=180+random(60)-30
							speed*=0.7;
				        }
						else if Player.ultra_got[53] == 1 || Player.ultra_got[54] || Player.ultra_got[55] || Player.ultra_got[56] == 1
						{
							speed *= 1.1;//EXTRA SPEED
							if instance_exists(enemy) && instance_number(enemy) > 1
							{
								with other
								{
									var nearest = instance_nearest_notme(x,y,enemy);
								}
								direction = point_direction(x,y,nearest.x,nearest.y);
							}
						}
					}
			    }
			}
		}
	}
	mask_index = msk;
}
if visible
{
	var n = instance_nearest(x,y,Portal);
	if n != noone && point_distance(x,y,n.x,n.y) < 24
	{
		if n.sprite_index == sprProtoPortalDormant ||  n.sprite_index == sprInvertedPortalDormant
			exit;
		snd_play(sndWepPortal,0.1,false,true,1,false,false);
		visible = false;
		speed = 0;
		var portalDepth = n.depth;
		with instance_create(x,y,ImpactFX)
		{
			sprite_index = sprWepPortal;
			image_angle=other.image_angle;
			depth = portalDepth - 1;
		}
		persistent = true
		dontteleport=true;
		instance_destroy();
	}
}