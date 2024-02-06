/// @description Copy parent and spwan lightning
if candmg and other.team != team
{


if other.my_health >= (dmg*0.5) && !array_contains(hitEntities,other.id)//other.sprite_index != other.spr_hurt
{
	instance_destroy()

	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
	}
	target = other.id
	with instance_create(x,y,boltStick)
	{
		image_angle = other.image_angle
		target = other.target
		team = other.team;
	}
}
else if other.my_health < (dmg*0.5) and !array_contains(hitEntities,other.id)// other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
{
	
	snd_play(choose(sndSpark1,sndSpark2),0.1,true);
	with instance_create(x,y,ElectroBall)
	{
		image_angle = other.direction;
		direction = image_angle;
		speed = 5;
		with instance_create(x,y,ElectroBallSpawn)
			image_angle = other.image_angle
	}
	BackCont.shake += 1;
	BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6)
	}
alarm[1]=4
}
}

