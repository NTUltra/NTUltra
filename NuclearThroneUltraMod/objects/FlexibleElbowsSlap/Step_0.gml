/// @description Deal damage
var hk = hook;
if time == 1
{
	BackCont.shake += 9;
	BackCont.viewx2 += lengthdir_x(19,hk+180)*UberCont.opt_shake;
	BackCont.viewy2 += lengthdir_y(19,hk+180)*UberCont.opt_shake;
	
	followOwner = false;
	with scrDrop(14,2)
	{
		x = other.tx;
		y = other.ty;
		motion_add(hk+180,6);
	}
	with target
	{
		snd_play(sndExplosion);
		snd_play(sndSlap,0.03);
		instance_create(x,y,ImpactFX);
		my_health -= 10;
		sprite_index = spr_hurt;
		snd_play(snd_hurt, hurt_pitch_variation,true);
		image_index = 0
		motion_add(hk+160,10);
		scrForcePosition60fps();
		if speed > maxSpeed+1
			speed = maxSpeed+1;
		
		var stalker = (instance_exists(Player) && Player.ultra_got[81])
		repeat(6)
		{
			with instance_create(x,y,Dust)
			{
				motion_add(hk+180+random_range(30,-30),2+random(4));
			}	
		}
		repeat(1+irandom(2))
		{
			
			with instance_create(x,y,Rad)
			{
				motion_add(hk+180+random_range(30,-30),2+random(3));
			}
		}
		if stalker {
			with instance_create(x,y,HorrorBullet)
			{
				motion_add(hk+180 + 20,8)
				image_angle = direction
				team = Player.team
				bskin = Player.bskin 
			}
			with instance_create(x,y,HorrorBullet)
			{
				motion_add(hk+180 - 20,8)
				image_angle = direction
				team = Player.team
				bskin = Player.bskin 
			}
		}
	}
	var q = queue;
	if queue > 0
	{
		with owner
		{
			var n = instance_nearest(x,y,enemy)
			if n != noone && point_distance(x,y,n.x,n.y) < 164
			{
				with instance_create(x,y,FlexibleElbowsSlap)
				{
					queue = q - 1;
					target = n;
					owner = other.id;
				}
			}
		}
	}
}