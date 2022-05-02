/// @description Switch to return
if instance_exists(Player) && Player.ultra_got[106]
{
	if (Player.bskin == 1)
	{
		var am = 8;
		var angStep = 180/8;
		var ang = image_angle - angStep * (am*0.5)
		repeat(am)
		{
			with instance_create(x,y,Flame)
			{
				motion_add(ang,5);
			}
			ang += angStep;
		}
	}
	else if (Player.bskin == 2)
	{
		snd_play(sndIDPDNadeExplo,0.1,true);
		with instance_create(x+lengthdir_x(24,image_angle),y+lengthdir_y(24,image_angle),RogueExplosion) {
			sprite_index=sprRogueExplosion;
		}
	}
}
