/// @description STUN
instance_destroy();
with Player
{
	var hits = ds_list_create();
	var al = collision_circle_list(x,y,70,hitme,false,false,hits,false);
	snd_play(sndExplosionS,0.2,false,false,3,false,false,0.6);
	snd_play_2d(choose(sndHumphryStun1,sndHumphryStun2,sndHumphryStun3,sndHumphryStun4,sndHumphryStun5),0.1);
	BackCont.shake += 15;
	for (var i = 0; i < al; i ++)
	{
		with hits[| i]
		{
			if team != other.team && team != 0// && !collision_line(x,y,other.x,other.y,Wall,false,false)
			{
				BackCont.shake += 2;
				DealDamage(30);
				other.humphrySkill += 5;
			}
		}
	}
	with instance_create(x,y,AnimDestroyTop)
	{
		sprite_index = sprHumphrySelfStun;
	}
	with instance_create(x,y,StunLockout)
	{
		resetSpeed = other.maxSpeed;
	}
	maxSpeed = 0;
	if skill_got[2]
		scrApplyExtraFeet();
}