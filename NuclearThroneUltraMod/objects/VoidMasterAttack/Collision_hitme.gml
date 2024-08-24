/// @description DESTROY EVERYTHING
if other.team != team && (instance_exists(VoidMasterBoss) || instance_exists(VoidMasterBossWin))
with other
{
	if object_index != Player
	{
		instance_destroy();	
	}
	else if !instance_exists(PlayerInFakeDeath)
	{
		with CrystalShield
			instance_destroy();
		with SheepStorm
			instance_destroy();
		hitBy = other.sprite_index;
		with Player
		{
			visible = false;
			lockout = true;
			speed = 0;
		}
		with instance_create(x,y,PlayerInFakeDeath) {
			sprite_index = other.spr_dead;
		}
	}
}
