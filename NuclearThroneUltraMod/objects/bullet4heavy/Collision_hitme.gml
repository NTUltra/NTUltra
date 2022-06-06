/// @description Massive Knockback!
if other.team != team and other.my_health > 0
{
	instance_destroy()
	
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		if instance_exists(Player){
		if Player.ultra_got[28]//roids ultra d
		{my_health -=2;}}
		sprite_index = spr_hurt
		image_index = 0
		direction = other.direction;
		motion_add(other.direction,14)
	}
	if other.my_health > 0
	{
		BackCont.shake += 2
		var shithead = other.id;
		with instance_create(x,y,Knockback)
		{
			target = shithead;
			pushDirection = other.direction;
			pushStartX = target.x;
			pushStartY = target.y;
			var s = target.size;
			if s == 4
				s = 5;
			pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
			pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
		}
	}
with instance_create(x,y,BulletHit)
	sprite_index=sprUltraHeavyBulletHit;

	scrRecycleGland(3);

}



