if speed > 1
{
	var msk = mask_index;
	mask_index = sprite_index;
	image_xscale = 2;
	image_yscale = 2;
	var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	var hitAnEnemy = false;
	for (var i = 0; i < al; i++) {
		with hits[| i]
		{
			if other.team != team and my_health > 0
			{
				if team != 0
					hitAnEnemy = true;
				if instance_exists(Player) && Player.ultra_got[54] == 1
				{
					snd_play(sndExplosion);
					instance_create(x+8,y+8,Explosion);
				}
				if sprite_index != spr_hurt
				{
					if team != 0
						with PandaSleep
						{
							event_user(0);
						}
					DealDamage(other.dmg);
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.direction,8)
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
							direction+=180+random(60)-30;
							speed*=0.7;
							snd_play(choose(sndWepBounce1,sndWepBounce2,sndWepBounce3,sndWepBounce4),0.08);
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
	/*
	if hitAnEnemy && instance_exists(Player) && Player.ultra_got[55] && !Player.altUltra
	{
		scrDrop(15,0.02);
	}
	*/
	mask_index = msk;
	image_xscale = 1;
	image_yscale = 1;
}

if instance_exists(PandaSleep)
{
	image_index = 0;
	image_angle += rotspeed*speed
	exit;
}
/*
if image_index < 1
image_index += random(0.04)
else
image_index += 0.4
*/
if !place_meeting(x,y,Wall)
{
	image_angle += rotspeed*speed
	if collision_line(xprev,yprev,x,y,Wall,false,false) && !place_meeting(xprev,yprev,Wall)
	{
		x = xprev;
		y = yprev;
		scrForcePosition60fps();
		speed *= 0.8;
	}
}
else
{
	move_bounce_solid(true)
	move_outside_solid(direction,16)
	while (place_meeting(x,y,Wall))
	{
		x += lengthdir_x(1,direction);
		y += lengthdir_y(1,direction);	
	}
	scrForcePosition60fps();
	speed*=0.84;
	snd_play(choose(sndWepBounce1,sndWepBounce2,sndWepBounce3,sndWepBounce4),0.08);
	if instance_exists(Player)
	{
		if Player.ultra_got[53] == 1 || Player.ultra_got[54] == 1 || Player.ultra_got[55] == 1 || Player.ultra_got[56] == 1
		{
			//BOUNCE
			if instance_exists(enemy)
			{
				var nearest = instance_nearest(x,y,enemy);
				direction = point_direction(x,y,nearest.x,nearest.y);
			}
		} 
		if Player.ultra_got[54] == 1
		{
			snd_play(sndExplosion);
			instance_create(x,y,Explosion);
		}
	}	
}
xprev = x;
yprev = y;
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

if visible
{
	var n = instance_nearest(x,y,Portal);
	if n != noone && point_distance(x,y,n.x,n.y) < 24
	{
		if !(n.sprite_index = sprPortal or n.sprite_index = sprProtoPortal or n.sprite_index = sprPortalInverted || n.sprite_index = sprBigPortal || n.sprite_index == sprPinkPortal || n.sprite_index == sprPopoPortal)
			exit;
		var portalDepth = n.depth - 1;
		speed = 0;
		visitedPortals += 1;
		if visitedPortals > 2 && !isPermanent
		{
			snd_play(sndWeaponLost,0.1,false,true,1,false,false);
			visible = false;
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprWepPortalLost;
				image_angle = random_range(30,-30);
				depth = portalDepth;
			}
			instance_destroy();
		}
		else
		{
			persistent = true;
			dontteleport = true;
			if isPermanent
				snd_play(sndWepPortalUpg,0.1,false,true,1,false,false);
			else
				snd_play(sndWepPortal,0.1,false,true,1,false,false);
			visible = false;
			with instance_create(x,y,ImpactFX)
			{
				if other.isPermanent
					sprite_index = sprWepPortalUpg;
				else
					sprite_index = sprWepPortal;
				image_angle=other.image_angle;
				depth = portalDepth;
			}
			instance_destroy();
		}
	}
}