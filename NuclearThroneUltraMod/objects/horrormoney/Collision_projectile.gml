if other.team!=2 && other.typ != 3 && speed > 3
{
	speed = min(speed*0.5,3);
	with other
	{
		if object_index!=PopoNade&&object_index!=Grenade
			instance_destroy();
	}
	with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitD;
}

