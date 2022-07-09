/// @description EKESPLOOOSION
if other.team != team
{with other
{
	if sprite_index != spr_hurt
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		snd_play(other.snd_hit);
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		
		BackCont.shake += 5
		instance_create(x,y,Explosion);
		var ang = random(360);
		var angstep = 360/3;
		repeat(3)
		{
			instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),SmallExplosion);
			ang += angstep;
		}
	}
}}

