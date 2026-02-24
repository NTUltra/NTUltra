/// @description Damage across the lightning spectrum
alarm[2] = 2;
var ogx = x;
var ogy = y;
var xo = xstart - x
var yo = xstart - x
var ogxs = image_xscale;
var ogys = image_yscale;
var al = array_length(lightningList);
var skipFrame = iframeskip * 2;
var t = team;
if al > 0 && alarm[0] < 1
{
	for (var i = 0; i < al; i++) {
		if (i == 0 || (i % 2 == 0))//Only half of the lightning has collision to optimize
		{
			var xx = lightningList[i].xx - xo;
			var yy = lightningList[i].yy - yo;
			image_xscale = lightningList[i].xs
			var hits = ds_list_create();
			var totalHits = instance_place_list(
			xx,
			yy,
			hitme,
			hits, false);
			for (var j = 0; j < totalHits; j ++) {
				with hits[| j] {
					if team != other.team
					{
						if other.team == 2
						{
							if sprite_index != spr_hurt
							{
								if instance_exists(Player)
								{
									DealDamage(other.dmg);
									with Lightning
									{
										if team == t
											dmg = max(3,dmg - 1);
									}
									if Player.skill_got[17] && team == 2
										snd_play(sndSpark2);
									else
										snd_play(sndSpark1);
										
									if (Player.skill_got[43] && other.canMood)
									{
										scrMoodSwingLightningArc(32, xx, yy, other.team, other.dmg, other.object_index);
										if Player.ultra_got[97] && !Player.altUltra && other.team != 0{
											scrMoodSwingStun(5);
											scrMoodSwingIcicle(1, id);
											scrMoodSwingFlameSpread(24);
											scrMoodSwingToxicBullet(other.x,other.y,2,other.direction);
										}
										other.canMood = false;
									}
									else
									{
										motion_add(other.image_angle,4);
									}
								}
								else
									snd_play(sndSpark1);
								sprite_index = spr_hurt
								image_index = 0
								scrForcePosition60fps();
								if speed > maxSpeed+1
									speed = maxSpeed+1;
								snd_play(snd_hurt, hurt_pitch_variation,true)
								instance_create(xx,yy,Smoke)
							}
							else
							{
								image_index += skipFrame;//iframe skipper
								if image_index > 2
								{
									image_index -= 2;
									sprite_index = spr_idle
								}
							}
						}
						else if al < 3 || i + 1 < al//Very last piece does not hit
						{
							var canHit = true;
							if object_index == Player
							{
								hitBy = sprLightningEnemyRepresent;
								if alarm[3] > 0
									canHit = false;
							}
							if sprite_index != spr_hurt && canHit
							{
								DealDamage(3)
								sprite_index = spr_hurt
								image_index = 0
								snd_play(snd_hurt, hurt_pitch_variation,true)
								motion_add(other.image_angle,4)
								instance_create(xx,yy,Smoke);
							}
						}
					}
				}
			}
			ds_list_destroy(hits);
		}
	}
}