/// @description Damage across the lightning spectrum
alarm[2] = 2;
var ogx = x;
var ogy = y;
var ogxs = image_xscale;
var ogys = image_yscale;
var al = array_length(lightningList);
var skipFrame = iframeskip * 2;
if al > 0 && alarm[0] < 1
{
	for (var i = 0; i < al; i++) {
		if (i % 2 == 0)//Only half of the lightning has collision to optimize
		{
			var xx = lightningList[i].xx;
			var yy = lightningList[i].yy;
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
									DealDamage(other.dmg)

									if Player.skill_got[17] && team == 2
										snd_play(sndSpark2);
									else
										snd_play(sndSpark1);
								
									sprite_index = spr_hurt
									image_index = 0
									if (Player.skill_got[43] && team != 0)
									{
										scrMoodSwingStun(6);
										if Player.ultra_got[97] && !Player.altUltra {
											scrMoodSwingIcicle(2, id);
											scrMoodSwingFlameSpread(24);
										}
									}
									else
									{
										motion_add(other.image_angle,4)
									}
								}
								else
									snd_play(sndSpark1);
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
						else
						{
							if object_index == Player
							{
								hitBy = sprLightningEnemyRepresent;
							}
							if sprite_index != spr_hurt
							{
								DealDamage(3)
								sprite_index = spr_hurt
								image_index = 0
								snd_play(snd_hurt, hurt_pitch_variation,true)
								motion_add(other.image_angle,4)
							}
							Sleep(4);
							instance_create(xx,yy,Smoke);
						}
					}
				}
			}
			ds_list_destroy(hits);
			var walls = ds_list_create();
			var ys = image_yscale;
			var xs = image_xscale;
			image_yscale = 6;
			image_xscale = 6;
			var wAll = instance_place_list(xx,yy,Wall,walls,false)
			for (var k = 0; k < wAll; k++) {
				if UberCont.recursionCheck < 29
				{
					with instance_create(walls[| k].x,walls[| k].y,FloorExplo)
					{
						canSpawnSwarm = true;
						UberCont.recursionCheck ++;
					}
					instance_destroy(walls[| k]);
				}
			}
			ds_list_destroy(walls);
			image_yscale = ys;
			image_xscale = xs;
		}
	}
}