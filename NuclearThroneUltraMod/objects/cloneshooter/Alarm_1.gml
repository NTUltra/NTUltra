/// @description Sure can deal damage in hitscan mode why not
alarm[1] = 1;
if instance_exists(Player)
{
	offset = (random(12) - 6) * Player.accuracy;
	var hits = ds_list_create();
	var dir = point_direction(Player.x,Player.y,x,y);
	var len = 8;
	var px = Player.x - lengthdir_x(len,dir);
	var py = Player.y - lengthdir_y(len,dir);
	var tx = x + lengthdir_x(len,dir);
	var ty = y + lengthdir_y(len,dir);
	var al = collision_line_list(px,py,tx,ty,hitme,false,false,hits,false);
	for (var i = 0; i < al; i++) {
		with hits[| i]
		{
			if other.team != team
			{
				snd_play(snd_hurt, hurt_pitch_variation)
				DealDamage(other.dmg,false,true,false);
				sprite_index = spr_hurt
				image_index = 0
				motion_add(dir,3)
				BackCont.shake += 2;
			}
		}
	}
	ds_list_destroy(hits);
	dmg = max(dmg - 1, 1);
}