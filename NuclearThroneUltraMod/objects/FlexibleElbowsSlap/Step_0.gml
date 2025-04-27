/// @description Deal damage
var hk = hook;
if time == 1
{
	BackCont.shake += 9;
	BackCont.viewx2 += lengthdir_x(19,hk+180)*UberCont.opt_shake;
	BackCont.viewy2 += lengthdir_y(19,hk+180)*UberCont.opt_shake;
	
	followOwner = false;
	with scrDrop(18,4)
	{
		x = other.tx;
		y = other.ty;
		motion_add(hk+180,6);
		scrForcePosition60fps();
		instance_create(x,y,SmallWallBreak);
	}
	with target
	{
		snd_play(sndExplosion);
		snd_play(sndSlap,0.03);
		instance_create(x,y,ImpactFX);
		if instance_exists(Player) && Player.race == 25
			DealDamage(25 + (other.loops*2),false,true,false);
		else
			DealDamage(20 + (other.loops*2),false,true,false);
		
		var direct = other.id;
		var hits = ds_list_create();
		var al = collision_circle_list(x,y,48,hitme,false,false,hits,false)
		for (var i = 0; i < al; i++) {
			// code here
			with hits[| i]
			{
				if id != direct && team != 2 && my_health > 0
				{
					DealDamage(8)
					sprite_index = spr_hurt
					image_index = 0
					motion_add(hk + 160,5)
					scrForcePosition60fps();
					if speed > maxSpeed+1
						speed = maxSpeed+1;
					snd_play(snd_hurt, hurt_pitch_variation,true)
				}
			}
		}
		ds_list_destroy(hits);
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