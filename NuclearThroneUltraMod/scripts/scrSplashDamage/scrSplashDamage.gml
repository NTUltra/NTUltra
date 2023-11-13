///scrSplashDamage();
// /@description
///@param
function scrSplashDamage(dmg, range){
	if instance_exists(Player) && Player.ultra_got[97] && !Player.altUltra
		range *= 1.5;
	var direct = other.id;
	var hits = ds_list_create();
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
		// code here
		with hits[| i]
		{
			if id != direct && team != other.team && my_health > 0
			{
				my_health -= dmg
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,2.5)
				scrForcePosition60fps();
				if speed > maxSpeed+1
					speed = maxSpeed+1;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
	ds_list_destroy(hits);
}