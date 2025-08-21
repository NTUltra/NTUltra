///scrSplashDamage();
// /@description
///@param
function scrSplashDamage(dmg, range, canBoost = true){
	if instance_exists(Player) && canBoost
	{
		if Player.race == 25
			range *= 1.1;
		if Player.ultra_got[97] && !Player.altUltra
		{
			if team != Player.team
				exit;
			range *= 1.5;
			dmg *= 1.15;
		}
	}
	var direct = other.id;
	var hits = ds_list_create();
	var al = collision_circle_list(x,y,range+4,hitme,false,false,hits,false)
	if canBoost
		with instance_create(x,y,SplashDamageFX)
		{
			radius = range - 4;
		}
	for (var i = 0; i < al; i++) {
		// code here
		with hits[| i]
		{
			if id != direct && team != other.team && my_health > 0
			{
				DealDamage(dmg)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,2.5)
				//scrForcePosition60fps();
				if speed > maxSpeed+1
					speed = maxSpeed+1;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
	ds_list_destroy(hits);
}