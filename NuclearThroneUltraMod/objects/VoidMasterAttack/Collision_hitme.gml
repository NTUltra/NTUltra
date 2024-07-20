/// @description DESTROY EVERYTHING
with other
{
	if object_index != Player
	{
		instance_destroy();	
	}
	else if !instance_exists(PlayerInFakeDeath)
	{
		hitBy = other.sprite_index;
		with instance_create(x,y,PlayerInFakeDeath) {
			sprite_index = other.spr_dead;
		}
	}
}
